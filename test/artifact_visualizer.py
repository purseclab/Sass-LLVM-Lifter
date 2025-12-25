#!/usr/bin/env python3
import yaml
import numpy as np
import argparse
import os
import glob
import sys
from colorama import init, Fore, Style, Back

# Initialize colorama
init(autoreset=True)

def get_latest_artifact(directory="artifacts"):
    """Finds the most recent .yaml file in the artifacts directory."""
    try:
        files = glob.glob(os.path.join(directory, "*.yaml"))
        if not files:
            return None
        return max(files, key=os.path.getctime)
    except Exception:
        return None

def format_full_array(val):
    """
    Formats the array to show actual numbers. 
    Uses a high threshold (1000) so it shows plenty of data before truncating.
    Safe for older numpy versions.
    """
    arr = np.array(val)
    if arr.ndim == 0:
        return f"{arr.item():.6f}"
    
    # Use legacy-safe print options context
    with np.printoptions(precision=6, threshold=1000, linewidth=120):
        # We manually replace newlines with a bit of indentation if needed, 
        # but standard str() inside printoptions is usually sufficient.
        return str(arr)

def print_header(title):
    print(f"\n{Fore.CYAN}#region ------------------ {title} ------------------{Style.RESET_ALL}")

def print_footer():
    print(f"{Fore.CYAN}#endregion{Style.RESET_ALL}")

def analyze_discrepancy(ref_data, test_data, threshold=1e-5):
    """Calculates diffs and returns statistics and list of bad indices."""
    ref_arr = np.array(ref_data)
    test_arr = np.array(test_data)

    if ref_arr.shape != test_arr.shape:
        return f"{Fore.RED}SHAPE MISMATCH: Ref {ref_arr.shape} vs Test {test_arr.shape}", [], ref_arr, test_arr
    
    diff = np.abs(ref_arr - test_arr)
    # Ignore NaNs where both are NaN
    nan_mask = np.isnan(ref_arr) & np.isnan(test_arr)
    diff[nan_mask] = 0
    
    max_diff = np.nanmax(diff) if diff.size > 0 else 0
    mean_diff = np.nanmean(diff) if diff.size > 0 else 0
    
    # Find failing indices
    bad_indices = np.where(diff > threshold)
    bad_count = len(bad_indices[0])
    
    stats = (f"Max Diff: {max_diff:.2e} | Mean Diff: {mean_diff:.2e} | "
             f"Fail Count: {bad_count}/{test_arr.size}")
    
    # Return top 20 worst errors sorted by magnitude
    flat_indices = np.argsort(diff.flatten())[::-1]
    worst_indices = []
    
    for idx in flat_indices:
        if diff.flatten()[idx] > threshold:
            worst_indices.append(np.unravel_index(idx, ref_arr.shape))
            if len(worst_indices) >= 20:
                break
                
    return stats, worst_indices, ref_arr, test_arr

def main():
    parser = argparse.ArgumentParser(description="Visualize PTX Test YAML Artifacts")
    parser.add_argument("file", nargs="?", help="Path to .yaml file. Defaults to latest in artifacts/")
    parser.add_argument("--tol", type=float, default=1e-5, help="Error tolerance for displaying discrepancies")
    args = parser.parse_args()

    # 1. Load File
    filepath = args.file
    if not filepath:
        filepath = get_latest_artifact()
        if not filepath:
            print(f"{Fore.RED}No .yaml artifact found in 'artifacts/'. Run a failing test first.{Style.RESET_ALL}")
            sys.exit(1)

    print(f"{Fore.YELLOW}Loading artifact: {Style.BRIGHT}{filepath}{Style.RESET_ALL}")
    
    try:
        with open(filepath, 'r') as f:
            data = yaml.safe_load(f)
    except Exception as e:
        print(f"{Fore.RED}Failed to load yaml file: {e}")
        sys.exit(1)

    inputs = data.get("inputs", {})
    outputs = data.get("outputs", {})
    refs = data.get("reference", {})
    meta = data.get("meta", {})

    # ------------------ SECTION 1: METADATA ------------------
    print_header("TEST METADATA")
    
    print(f"{Fore.BLUE}Test Name:{Style.RESET_ALL} {meta.get('test_cfg', {}).get('name', 'Unknown')}")
    print(f"{Fore.BLUE}Elapsed:{Style.RESET_ALL}   {meta.get('elapsed_ms', 0):.4f} ms")
    if "benchmark_elapsed_ms" in meta:
         print(f"{Fore.BLUE}Benchmark:{Style.RESET_ALL} {meta.get('benchmark_elapsed_ms'):.4f} ms")

    args_list = meta.get('test_cfg', {}).get('args', [])
    print(f"\n{Fore.BLUE}Kernel Arguments:{Style.RESET_ALL}")
    for arg in args_list:
        val_str = str(arg.get('value', 'N/A')) if 'value' in arg else f"Array[{arg.get('size')}]"
        print(f"  - {Fore.GREEN}{arg['name']}{Style.RESET_ALL} ({arg['type']}): {val_str}")
        
    print_footer()

    # ------------------ SECTION 2: INPUTS ------------------
    print_header("INPUT PARAMETERS")
    if not inputs:
        print("No inputs found.")
    for k, v in inputs.items():
        print(f"{Fore.GREEN}{k:<15}{Style.RESET_ALL} :")
        print(format_full_array(v))
        print("") # Spacer
    print_footer()

    # ------------------ SECTION 3: DIFF ANALYSIS ------------------
    print_header("OUTPUTS VS REFERENCE")
    
    # Try to pair outputs with references
    pairs = []
    
    # Strategy: Match keys directly or look for standard pairings
    for out_key in outputs.keys():
        if out_key == "output" and "ref_output" in refs:
             pairs.append((out_key, "ref_output"))
        elif out_key == "out_primary" and "out_benchmark" in refs:
             pairs.append((out_key, "out_benchmark"))
        elif out_key in refs:
            pairs.append((out_key, out_key))
        else:
            print(f"{Fore.YELLOW}Unpaired Output: {out_key}{Style.RESET_ALL}")
            print(format_full_array(outputs[out_key]))

    for out_k, ref_k in pairs:
        print(f"\n{Fore.MAGENTA}Comparing: {Style.BRIGHT}{out_k}{Style.NORMAL} vs {Style.BRIGHT}{ref_k}{Style.RESET_ALL}")
        
        stats_msg, bad_indices, r_arr, t_arr = analyze_discrepancy(refs[ref_k], outputs[out_k], args.tol)
        
        # --- PRINT RAW ARRAYS ---
        print(f"{Fore.CYAN}Actual ({out_k}):{Style.RESET_ALL}")
        print(format_full_array(t_arr))
        print(f"{Fore.CYAN}Reference ({ref_k}):{Style.RESET_ALL}")
        print(format_full_array(r_arr))
        print(f"{'-'*50}")

        if not bad_indices:
            print(f"{Fore.GREEN}  -> PASSED (Matches within {args.tol}){Style.RESET_ALL}")
            print(f"  {stats_msg}")
        else:
            print(f"{Fore.RED}  -> FAILED{Style.RESET_ALL}")
            print(f"  {stats_msg}")
            
            print(f"\n  {Back.RED}{Fore.WHITE} TOP {len(bad_indices)} MISMATCHES {Style.RESET_ALL}")
            print(f"  {'-'*75}")
            print(f"  {'Index':<15} | {'Reference':<18} | {'Actual':<18} | {'Diff':<15}")
            print(f"  {'-'*75}")
            
            for idx in bad_indices:
                r_val = r_arr[idx]
                t_val = t_arr[idx]
                d_val = abs(r_val - t_val)
                print(f"  {str(idx):<15} | {r_val:18.6f} | {t_val:18.6f} | {Fore.RED}{d_val:.6f}{Style.RESET_ALL}")
            print(f"  {'-'*75}")

    print_footer()

if __name__ == "__main__":
    main()