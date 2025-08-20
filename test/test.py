#!/usr/bin/env python3
import json
from harness import load_config, expand_sweeps, PTXTestRunner
from visualizer import plot_results
from argparse import ArgumentParser

import colorama

# Initialize colorama
colorama.init()

def print_pass_fail_counts(result_pf: list[bool]) -> None:
    # Count passes (True) and fails (False)
    pass_count = sum(1 for x in result_pf if x)
    fail_count = len(result_pf) - pass_count

    print(f"Passes: {pass_count}")
    print(f"Fails: {fail_count}")

parser = ArgumentParser()
parser.add_argument("--config", "-c", default="config.yaml")
parser.add_argument("--out", "-o", default="results.json")
parser.add_argument("--plot", action="store_true")
args = parser.parse_args()

cfg = load_config(args.config)
cfg = expand_sweeps(cfg)
runner = PTXTestRunner(device_index=cfg.get("device", 0))
results = []
result_pf : list[bool] = []
for t in cfg["tests"]:
    print(f"== Running {t['name']} ...")
    r = runner.run_test_case(t, save_on_fail=True)
    result_pf.append(r.passed)
    color_start = ""
    if r.passed:
        color_start = colorama.Fore.GREEN
    else:
        color_start = colorama.Fore.RED
    print(f"{color_start} -> {r.name} : {'PASS' if r.passed else 'FAIL'}{colorama.Style.RESET_ALL}, max_err={r.max_abs_error:.3e}, mean_err={r.mean_abs_error:.3e}, time={r.elapsed_ms:.3f} ms")
    results.append(r)

print_pass_fail_counts(result_pf)

# serialize
serial = [r.__dict__ for r in results]
with open(args.out, "w") as f:
    json.dump(serial, f, indent=2)

if args.plot:
    plot_results(results, "test_summary.png")
    print("Saved plot test_summary.png")
