import os
import yaml
import numpy as np
import time
import itertools
from dataclasses import dataclass
from typing import Any, Dict, List, Tuple, Optional
import datetime
import colorama
import host_reference

import pycuda.driver as drv
import pycuda.autoinit  # safe: creates initial context on default device; we'll still create contexts per device if needed

# ---------- utilities ----------
def now_ts():
    return datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%SZ")

def ensure_dir_exists(path: str):
    os.makedirs(path, exist_ok=True)

# float comparison util
def almost_equal_elemwise(a: np.ndarray, b: np.ndarray, abs_tol: float, rel_tol: float) -> np.ndarray:
    """Return boolean mask of elementwise pass (True if within tolerance)."""
    # handle NaNs: treat NaN==NaN as pass only if both are NaN
    nan_mask = np.isnan(a) & np.isnan(b)
    # basic diffs
    diff = np.abs(a - b)
    rel_ok = diff <= rel_tol * np.maximum(np.abs(a), np.abs(b))
    abs_ok = diff <= abs_tol
    result = nan_mask | (abs_ok | rel_ok)
    return result

# ---------- dataclasses ----------
@dataclass
class Tolerance:
    abs: float
    rel: float

@dataclass
class TestResult:
    name: str
    passed: bool
    max_abs_error: float
    mean_abs_error: float
    num_failed: int
    elapsed_ms: float
    details: Optional[Dict[str,Any]] = None

# ---------- config loader and sweep expansion ----------
def load_config(path: str) -> Dict[str,Any]:
    with open(path, 'r') as f:
        return yaml.safe_load(f)

def expand_sweeps(cfg: Dict[str,Any]) -> List[Dict[str,Any]]:
    """
    Expand tests containing 'sweep' into multiple concrete tests.
    Supported sweep keys:
      - sizes: list of ints -> overrides args[*].size and scalar arg named 'size' where present
      - block_x: list of ints -> overrides block.x
      - rng_seed: list of ints -> overrides the input arg with name 'input' which has 'rng_seed'
    Returns new list of tests (the original tests replaced by expanded tests).
    """
    expanded_tests = []
    for test in cfg.get("tests", []):
        sweep = test.get("sweep")
        if not sweep:
            # values specified in the "args" will be used and not swapped out
            expanded_tests.append(test)
            continue

        # build cartesian product of sweep values
        sweep_keys = []
        sweep_values = []
        if 'sizes' in sweep:
            sweep_keys.append('sizes'); sweep_values.append(sweep['sizes'])
        if 'block_x' in sweep:
            sweep_keys.append('block_x'); sweep_values.append(sweep['block_x'])
        if 'rng_seed' in sweep:
            sweep_keys.append('rng_seed'); sweep_values.append(sweep['rng_seed'])

        for comb in itertools.product(*sweep_values):
            mapping = dict(zip(sweep_keys, comb))
            # shallow copy test and apply overrides
            new_test = yaml.safe_load(yaml.dump(test))  # cheap deep copy via YAML roundtrip
            new_test.pop('sweep', None) # not needed (we're processing it rn)
            # update sizes
            if 'sizes' in mapping:
                size_val = int(mapping['sizes'])
                # update scalar 'size' arg and arrays' size fields
                for a in new_test['args']:
                    # a is dict of an arg in args
                    if a.get('name') == 'size' and a.get('type') == 'int':
                        a['value'] = size_val
                    if a['type'].endswith('*'):
                        # pointer type, need to know size of array and to determine how many elements to initialize
                        a['size'] = size_val
            # update block.x
            if 'block_x' in mapping:
                new_test.setdefault('block', {})
                new_test['block']['x'] = int(mapping['block_x'])
            # update rng_seed for arg named 'input'
            if 'rng_seed' in mapping:
                for a in new_test['args']:
                    if a.get('name') == 'input':
                        a['rng_seed'] = int(mapping['rng_seed'])

            # differentiate test names
            suffix_parts = []
            if 'sizes' in mapping:
                suffix_parts.append(f"size{mapping['sizes']}")
            if 'block_x' in mapping:
                suffix_parts.append(f"bx{mapping['block_x']}")
            if 'rng_seed' in mapping:
                suffix_parts.append(f"seed{mapping['rng_seed']}")
            new_test['name'] = f"{new_test['name']}__" + "_".join(suffix_parts)
            expanded_tests.append(new_test)
    # return an overall config-like dict for convenience
    new_cfg = dict(cfg)
    new_cfg['tests'] = expanded_tests
    return new_cfg

# ---------- golden-case saving ----------
def _old_save_golden_case(test_name: str, inputs: Dict[str,np.ndarray], outputs: Dict[str,np.ndarray], ref: Dict[str,np.ndarray], meta: Dict[str,Any], artifacts_dir: str = "artifacts"):
    ensure_dir_exists(artifacts_dir)
    fname = f"{test_name}__{now_ts()}.npz"
    path = os.path.join(artifacts_dir, fname)
    # Flatten inputs/outputs/ref dictionaries into file. Include meta as ascii JSON string for safety.
    save_dict = {}
    for k,v in inputs.items():
        save_dict[f"in_{k}"] = v
    for k,v in outputs.items():
        save_dict[f"out_{k}"] = v
    for k,v in ref.items():
        save_dict[f"ref_{k}"] = v
    # meta: store as JSON-like string
    save_dict["meta_info"] = np.array([str(meta)])
    np.savez_compressed(path, **save_dict)
    return path

import yaml
def to_pure_python(obj):
    """
    Recursively converts numpy types to pure python types
    so they look clean in YAML.
    """
    if isinstance(obj, np.ndarray):
        return obj.tolist()  # Convert array to standard list
    elif isinstance(obj, np.generic):
        return obj.item()    # Convert scalar (e.g. np.float32) to float
    elif isinstance(obj, dict):
        return {k: to_pure_python(v) for k, v in obj.items()}
    elif isinstance(obj, list):
        return [to_pure_python(v) for v in obj]
    return obj

def save_golden_case(test_name: str, inputs: Dict[str,np.ndarray], outputs: Dict[str,np.ndarray], ref: Dict[str,np.ndarray], meta: Dict[str,Any], artifacts_dir: str = "artifacts"):
    ensure_dir_exists(artifacts_dir)
    fname = f"{test_name}__{now_ts()}.yaml"
    path = os.path.join(artifacts_dir, fname)
    
    # Clean the data before dumping
    data = {
        "meta": to_pure_python(meta),
        "inputs": to_pure_python(inputs),
        "outputs": to_pure_python(outputs),
        "reference": to_pure_python(ref)
    }

    with open(path, "w") as f:
        # default_flow_style=None lets lists look like lists, not inline blobs
        yaml.safe_dump(data, f, sort_keys=False, default_flow_style=None)
        
    return path

# ---------- PTX runner / orchestrator ----------
class PTXTestRunner:
    def __init__(self, device_index: int = 0, create_context: bool = True):
        self.device_index = device_index
        self.dev: drv.Device = drv.Device(device_index)
        self.context = None
        if create_context:
            # create a dedicated context (popable)
            self.context = self.dev.make_context()

    def __del__(self):
        if self.context:
            try:
                self.context.pop()
                self.context.detach()
            except Exception:
                pass

    def load_module(self, ptx_path: str):
        if not os.path.exists(ptx_path):
            raise FileNotFoundError(ptx_path)
        module = drv.module_from_file(ptx_path)
        return module

    def allocate_and_init_args(self, arg_descs: List[Dict[str,Any]]) -> Tuple[List[Any], Dict[str,np.ndarray]]:
        """
        Returns (device_args_in_call_order, host_inputs_map)
        host_inputs_map contains host copies of inputs (for saving/verification)
        """
        device_args = []
        host_buffers = {}
        for a in arg_descs:
            typ = a["type"]
            if typ.endswith("*"):
                base = typ[:-1].strip()
                size = int(a["size"])
                if base == "float":
                    h = np.zeros(size, dtype=np.float32)
                    init = a.get("init", "zeros")
                    if init == "random":
                        seed = a.get("rng_seed", None)
                        rng = np.random.default_rng(seed)
                        lo, hi = a.get("range", [-1.0, 1.0])
                        h[:] = rng.uniform(lo, hi, size).astype(np.float32)
                    elif init == "zeros":
                        pass
                    elif init == "ones":
                        h[:] = 1.0
                    elif isinstance(init, list):
                        arr = np.array(init, dtype=np.float32)
                        if arr.size != size:
                            raise ValueError("init list length mismatch")
                        h[:] = arr
                    else:
                        raise ValueError(f"Unknown init {init}")
                    dptr = drv.mem_alloc(h.nbytes)
                    drv.memcpy_htod(dptr, h)
                    device_args.append(dptr)
                    host_buffers[a["name"]] = h
                elif base == "int":
                    h = np.zeros(size, dtype=np.int32)
                    init = a.get("init", "zeros")
                    if init == "random":
                        seed = a.get("rng_seed", None)
                        rng = np.random.default_rng(seed)
                        lo, hi = a.get("range", [-1, 1])
                        h[:] = rng.integers(lo, hi + 1, size, dtype=np.int32)
                    elif init == "zeros":
                        pass
                    elif init == "ones":
                        h[:] = 1
                    elif isinstance(init, list):
                        arr = np.array(init, dtype=np.int32)
                        if arr.size != size:
                            raise ValueError("init list length mismatch")
                        h[:] = arr
                    else:
                        raise ValueError(f"Unknown init {init}")
                    dptr = drv.mem_alloc(h.nbytes)
                    drv.memcpy_htod(dptr, h)
                    device_args.append(dptr)
                    host_buffers[a["name"]] = h
                else:
                    raise NotImplementedError(f"Unsupported pointer base type: {base}")
            else:
                # scalar
                if typ == "int":
                    v = int(a["value"])
                    device_args.append(np.int32(v))
                    host_buffers[a["name"]] = v  
                elif typ == "float":
                    v = float(a["value"])
                    device_args.append(np.float32(a["value"]))
                    host_buffers[a["name"]] = v
                else:
                    raise NotImplementedError(f"Scalar type not supported: {typ}")
        return device_args, host_buffers

    def readback_outputs(self, arg_descs: List[Dict[str,Any]], device_args: List[Any], host_buffers: Dict[str,np.ndarray]) -> Dict[str,np.ndarray]:
        """
        Returns dictionary of arrays read back from device for args with pointer types.
        Also includes original host_buffers (inputs) under their names (copied).
        """
        out = {}
        func_results = []
        di = 0
        for i, a in enumerate(arg_descs):
            typ = a["type"]
            if typ.endswith("*"):
                name = f"arg_{i}_{a['name']}"
                size = int(a["size"])
                base = typ[:-1].strip()
                if base == "float":
                    arr = np.empty(size, dtype=np.float32)
                    dptr = device_args[di]
                    drv.memcpy_dtoh(arr, dptr)
                    out[name] = arr
                    if a.get("output", False):
                        func_results.append(arr)
                elif base == "int":
                    arr = np.empty(size, dtype=np.int32)
                    dptr = device_args[di]
                    drv.memcpy_dtoh(arr, dptr)
                    out[name] = arr
                    if a.get("output", False):
                        func_results.append(arr)
                else:
                    raise NotImplementedError
                di += 1
            else:
                di += 1
        return out, func_results

    def run_kernel_and_time(self, module, func_name: str, device_args: List[Any], grid: Dict[str,int], block: Dict[str,int]) -> float:
        func = module.get_function(func_name)
        # ensure 3-tuples
        gx = (grid.get("x",1) or 1); gy = (grid.get("y",1) or 1); gz = (grid.get("z",1) or 1)
        bx = (block.get("x",1) or 1); by = (block.get("y",1) or 1); bz = (block.get("z",1) or 1)
        start = time.time()
        # PyCUDA accepts DeviceAllocation objects and numpy scalars directly
        # if "fc_layer" in func_name:
        #     print(device_args,(bx,by,bz), (gx,gy,gz) )
            
        func(*device_args, block=(bx,by,bz), grid=(gx,gy,gz))
        drv.Context.synchronize()
        end = time.time()
        return (end - start) * 1000.0

    def run_test_case(self, test_cfg: Dict[str,Any], save_on_fail: bool = True) -> TestResult:
        name = test_cfg["name"]
        ptx_file = test_cfg["ptx_file"]
        func_name = test_cfg["function"]
        block_cfg = test_cfg.get("block", {"x":128})
        grid_cfg = test_cfg.get("grid", {})
        arg_descs = test_cfg["args"]
        verification = test_cfg.get("verification", {"mode":"host_reference"})
        toldict = verification.get("tolerance", {"abs":1e-6, "rel":1e-6})
        tol = Tolerance(abs=float(toldict["abs"]), rel=float(toldict["rel"]))

        module = self.load_module(ptx_file)
        device_args, host_inputs = self.allocate_and_init_args(arg_descs)

        # compute grid if needed (deduce array length from 'size' scalar or first array)
        if not grid_cfg or grid_cfg.get("x") is None:
            size_val = None
            for a in arg_descs:
                if a.get("name") == "size" and a.get("type") == "int":
                    size_val = int(a["value"])
                    break
            if size_val is None:
                # find first pointer arg
                for a in arg_descs:
                    if a["type"].endswith("*"):
                        size_val = int(a["size"])
                        break
            if size_val is None:
                raise RuntimeError("Can't deduce kernel 'size' for grid computation.")
            bx = int(block_cfg.get("x",128))
            grid_x = (size_val + bx - 1) // bx # ceil(size_val / bx)
            grid_cfg = {"x": grid_x, "y":1, "z":1}
        else:
            grid_cfg.setdefault("x",1); grid_cfg.setdefault("y",1); grid_cfg.setdefault("z",1)
        block_cfg.setdefault("x",1); block_cfg.setdefault("y",1); block_cfg.setdefault("z",1)

        elapsed_ms = self.run_kernel_and_time(module, func_name, device_args, grid_cfg, block_cfg)

        outputs, func_results = self.readback_outputs(arg_descs, device_args, host_inputs)

        mode = verification.get("mode", "host_reference")

        # ========= host reference mode =========
        if mode == "host_reference":
            
            function = verification.get("function", "relu")
            
            if function == "relu":
                h_input = outputs.get("arg_0_input") # or outputs.get("host_input")
                h_output = outputs.get("arg_1_output")
                assert len(func_results) == 1
                assert np.array_equal(func_results[0], h_output)
                if h_input is None or h_output is None:
                    raise RuntimeError("host_reference expects args named 'input' and 'output' in test config")
                ref_out = host_reference.relu(h_input)
            else:
                raise NotImplementedError

            diffs = np.abs(ref_out - h_output)
            max_abs = float(diffs.max())
            mean_abs = float(diffs.mean())
            # with np.printoptions(threshold=np.inf, precision=6, suppress=True):
            #     print(h_input)
            #     print("---------------")
            #     print(h_output)
            #     print("---------------")
            #     print(ref_out)
            # exit(1)
            mask = almost_equal_elemwise(ref_out, h_output, tol.abs, tol.rel)
            num_failed = int(np.count_nonzero(~mask))
            passed = num_failed == 0
            
            if not passed and save_on_fail:
                meta = {"test_cfg": test_cfg, "elapsed_ms": elapsed_ms}
                try:
                    saved = save_golden_case(name, host_inputs, {"output": h_output}, {"ref_output": ref_out}, meta)
                    print(f"[golden] saved failing case to: {saved}")
                except Exception as e:
                    print(f"Failed saving golden case: {e}")
            
            return TestResult(name=name, passed=passed, max_abs_error=max_abs, mean_abs_error=mean_abs, num_failed=num_failed, elapsed_ms=elapsed_ms, details={"size": len(h_output), "grid_cfg": grid_cfg, "block_cfg": block_cfg})

        # ========= benchmark_ptx mode =========
        elif mode == "benchmark_ptx":
            bm = verification.get("benchmark")
            if not bm:
                raise RuntimeError("benchmark_ptx requires 'benchmark' field in verification")
            bm_module = self.load_module(bm["ptx_file"])
            bm_func = bm["function"]
            # Re-run same kernel args on benchmark module
            # Note: we must allocate new device buffers for benchmark kernel, or re-use pointers carefully.
            # Simpler: copy the same host inputs into new device buffers and call benchmark func.
            # Build new device arg list matching arg_descs (we need fresh DeviceAllocation objects)
            # We'll allocate device buffers and copy host_inputs (inputs) into them.
            bm_device_args = []
            for a in arg_descs:
                typ = a["type"]
                if typ.endswith("*"):
                    base = typ[:-1].strip()
                    size = int(a["size"])
                    if base == "float":
                        # create device buffer and copy host input (if exists)
                        h = host_inputs.get(a["name"])
                        if h is None:
                            h = np.zeros(size, dtype=np.float32)
                        d = drv.mem_alloc(h.nbytes)
                        drv.memcpy_htod(d, h)
                        bm_device_args.append(d)
                    elif base == "int":
                        h = host_inputs.get(a["name"])
                        if h is None:
                            h = np.zeros(size, dtype=np.int32)
                        d = drv.mem_alloc(h.nbytes)
                        drv.memcpy_htod(d, h)
                        bm_device_args.append(d)
                    else:
                        raise NotImplementedError("benchmark pointer base type not supported")
                else:
                    if a["type"] == "int":
                        bm_device_args.append(np.int32(int(a["value"])))
                    elif a["type"] == "float":
                        bm_device_args.append(np.float32(float(a["value"])))
                    else:
                        raise NotImplementedError("benchmark scalar type not supported")
            # run benchmark
            bm_elapsed = self.run_kernel_and_time(bm_module, bm_func, bm_device_args, grid_cfg, block_cfg)
            # readback outputs from benchmark (same logic)
            bm_outs = {}
            di = 0
            bm_arr = []
            for i, a in enumerate(arg_descs):
                if a["type"].endswith("*"):
                    name = f"arg_{i}_{a['name']}"
                    size = int(a["size"])
                    base = a["type"][:-1].strip()
                    if base == "float":
                        arr = np.empty(size, dtype=np.float32)
                        drv.memcpy_dtoh(arr, bm_device_args[di])
                    elif base == "int":
                        arr = np.empty(size, dtype=np.int32)
                        drv.memcpy_dtoh(arr, bm_device_args[di])
                    else:
                        raise NotImplementedError
                    bm_outs[name] = arr
                    if a.get("output", False):
                        bm_arr.append(arr)
                    di += 1
                else:
                    di += 1
            # compare output arrays between module run (outputs) and benchmark (bm_outs)
            out_arr = func_results
            
            if out_arr is None or bm_arr is None or len(out_arr) == 0 or len(bm_arr) == 0:
                raise RuntimeError("benchmark comparison expects 'output' arg")
            
            assert len(out_arr) == len(bm_arr)
            passed = True
            
            # Note: This logic assumes 1 output for simplicity in reporting, loop for correctness
            diffs = None 
            max_abs = 0.0
            mean_abs = 0.0
            num_failed = 0
            
            for idx in range(len(out_arr)):
                current_diffs = np.abs(bm_arr[idx] - out_arr[idx])
                
                max_abs = max(max_abs, float(current_diffs.max()))
                mean_abs = max(mean_abs, float(current_diffs.mean())) # simple approximation
                mask = almost_equal_elemwise(bm_arr[idx], out_arr[idx], tol.abs, tol.rel)
                
                nf = int(np.count_nonzero(~mask))
                if nf > 0:
                    passed = False
                    num_failed += nf
                    diffs = current_diffs # Store the last failing diff for saving
            
            # if not passed and save_on_fail:
            if True:
                meta = {"test_cfg": test_cfg, "elapsed_ms": elapsed_ms, "benchmark_elapsed_ms": bm_elapsed}
                try:
                    # --- FIX: Pass host_inputs directly ---
                    saved = save_golden_case(name, host_inputs, {"out_primary": out_arr, "out_benchmark": bm_arr}, {"diff": diffs}, meta)
                    print(f"[golden] saved failing benchmark case to: {saved}")
                except Exception as e:
                    print(f"Failed saving golden case: {e}")
            
            return TestResult(name=name, passed=passed, max_abs_error=max_abs, mean_abs_error=mean_abs, num_failed=num_failed, elapsed_ms=elapsed_ms, details={"size": len(out_arr), "benchmark_ms": bm_elapsed, "grid_cfg": grid_cfg, "block_cfg": block_cfg})
        
        else:
            raise RuntimeError(f"Unknown verification mode: {mode}")
