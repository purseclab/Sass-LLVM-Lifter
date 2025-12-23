import matplotlib.pyplot as plt
from typing import List
from harness import TestResult
import numpy as np

def plot_results(results: List[TestResult], out_file: str):
    names = [r.name for r in results]
    max_errs = [r.max_abs_error for r in results]
    mean_errs = [r.mean_abs_error for r in results]
    times = [r.elapsed_ms for r in results]
    passed = [r.passed for r in results]

    x = np.arange(len(names))

    # Top plot: errors (max and mean)
    fig, axs = plt.subplots(2, 1, figsize=(10, 7), constrained_layout=True)

    axs[0].bar(x - 0.15, max_errs, width=0.3)
    axs[0].bar(x + 0.15, mean_errs, width=0.3)
    axs[0].set_yscale('log')
    axs[0].set_xticks(x)
    axs[0].set_xticklabels(names, rotation=45, ha='right')
    axs[0].set_title("Per-test error (log scale)")
    axs[0].legend(["max abs error", "mean abs error"])

    # Bottom plot: runtime and pass/fail markers
    axs[1].bar(x, times)
    for i, p in enumerate(passed):
        axs[1].text(i, times[i] + max(times)*0.02, "PASS" if p else "FAIL", ha='center')
    axs[1].set_xticks(x)
    axs[1].set_xticklabels(names, rotation=45, ha='right')
    axs[1].set_ylabel("elapsed ms")
    axs[1].set_title("Kernel runtime & pass/fail")

    fig.suptitle("PTX Test Summary")
    plt.savefig(out_file)
    plt.close(fig)
