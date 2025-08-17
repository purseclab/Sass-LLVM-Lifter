#!/usr/bin/env python3
import json
from harness import load_config, expand_sweeps, PTXTestRunner
from visualizer import plot_results
from argparse import ArgumentParser

parser = ArgumentParser()
parser.add_argument("--config", "-c", default="config.yaml")
parser.add_argument("--out", "-o", default="results.json")
parser.add_argument("--plot", action="store_true")
args = parser.parse_args()

cfg = load_config(args.config)
cfg = expand_sweeps(cfg)
runner = PTXTestRunner(device_index=cfg.get("device", 0))
results = []
for t in cfg["tests"]:
    print(f"== Running {t['name']} ...")
    r = runner.run_test_case(t, save_on_fail=True)
    print(f" -> {r.name} : {'PASS' if r.passed else 'FAIL'}, max_err={r.max_abs_error:.3e}, mean_err={r.mean_abs_error:.3e}, time={r.elapsed_ms:.3f} ms")
    results.append(r)

# serialize
serial = [r.__dict__ for r in results]
with open(args.out, "w") as f:
    json.dump(serial, f, indent=2)

if args.plot:
    plot_results(results, "test_summary.png")
    print("Saved plot test_summary.png")
