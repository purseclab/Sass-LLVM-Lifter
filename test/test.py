#!/usr/bin/env python3
import json
from harness import load_config, expand_sweeps, PTXTestRunner
from visualizer import plot_results
from argparse import ArgumentParser

from collections import defaultdict

import colorama

# Initialize colorama
colorama.init()

import os
import subprocess

from typing import Union, List

def print_boxed_text(text: Union[str, List[str]], color: str = None) -> None:
    """
    Print text in a box using + and - characters, with optional color.
    """
    if isinstance(text, str):
        text = [text]
    
    max_length = max(len(line) for line in text)
    horizontal_border = f"+{'-' * (max_length + 2)}+"
    color_start = color if color else ""
    color_end = colorama.Style.RESET_ALL if color else ""
    
    print(f"{color_start}{horizontal_border}{color_end}")
    for line in text:
        padded_line = line + " " * (max_length - len(line))
        print(f"{color_start}| {padded_line} |{color_end}")
    print(f"{color_start}{horizontal_border}{color_end}")

def print_pass_fail_counts(result_pf: list[bool]) -> None:
    # Count passes (True) and fails (False)
    pass_count = sum(1 for x in result_pf if result_pf[x])
    fail_count = len(result_pf) - pass_count
    pass_func = [x for x in result_pf if result_pf[x]]
    fail_func = [x for x in result_pf if not result_pf[x]]

    print_boxed_text(["", "  Test Result  ", ""])

    print(f"Passes ({pass_count}): ", pass_func)
    print(f"Fails ({fail_count}): ", fail_func)

def true_factory():
    return True

parser = ArgumentParser()
parser.add_argument("--config", "-c", default="config.yaml")
parser.add_argument("--out", "-o", default="results.json")
parser.add_argument("--plot", action="store_true")
args = parser.parse_args()


# Resolve the launch directory relative to this file and run docker.sh
script_dir = os.path.dirname(os.path.abspath(__file__))
launch_dir = os.path.normpath(os.path.join(script_dir, "..", "launch"))
print(f"Changing directory to {launch_dir} and running ./docker.sh")
try:
    os.chdir(launch_dir)
    subprocess.run(["./docker.sh"], check=True)
except subprocess.CalledProcessError as e:
    print(f"docker.sh failed with exit code {e.returncode}")
except FileNotFoundError:
    print("docker.sh not found or launch directory does not exist")
except Exception as e:
    print(f"Error running docker.sh: {e}")

os.chdir(script_dir)

cfg = load_config(args.config)
cfg = expand_sweeps(cfg)
runner = PTXTestRunner(device_index=cfg.get("device", 0))
results = []
func_result_pf : dict[str, bool] = defaultdict(true_factory)
for t in cfg["tests"]:
    print(f"== Running {t['name']} ...")
    r = runner.run_test_case(t, save_on_fail=True)
    
    func_result_pf[t["function"]] = func_result_pf[t["function"]] and r.passed
    
    color_start = ""
    if r.passed:
        color_start = colorama.Fore.GREEN
    else:
        color_start = colorama.Fore.RED
    print(f"{color_start} -> {'PASS' if r.passed else 'FAIL'}{colorama.Style.RESET_ALL}, max_err={r.max_abs_error:.3e}, mean_err={r.mean_abs_error:.3e}, time={r.elapsed_ms:.3f} ms")
    results.append(r)

print_pass_fail_counts(func_result_pf)

# serialize
serial = [r.__dict__ for r in results]
with open(args.out, "w") as f:
    json.dump(serial, f, indent=2)

if args.plot:
    plot_results(results, "test_summary.png")
    print("Saved plot test_summary.png")
