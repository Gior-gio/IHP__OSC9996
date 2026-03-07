# scripts/stats_postprocess_generic.py
from typing import Any, Dict, List
import numpy as np
import os

def postprocess(results: Dict[str, List[Any]], conditions: Dict[str, Any]) -> Dict[str, List[float]]:
    """
    Generic postprocess function for CACE.
    Computes mean, standard deviation, and estimated min/max (mean ± 3σ)
    for all numeric variables in 'results'.

    Output keys will follow the pattern:
        <var>_mean, <var>_std, <var>_estmin, <var>_estmax

    Also generates a Markdown summary table saved in:
        docs/<project_name>/schematic/stats_summary.md

    NOTE:
    Make sure that the datasheet 'script_variables' section in the YAML
    includes four entries for each input variable name
    (e.g. tP_mean, tP_std, tP_estmin, tP_estmax).
    """

    output: Dict[str, List[float]] = {}
    summary = []  # Store results for Markdown table

    # --- Compute statistics for each variable ---
    for name, values in results.items():
        try:
            data = np.array(values, dtype=float)
        except Exception:
            print(f"Skipping non-numeric variable '{name}'")
            continue

        mean_val = float(np.mean(data))
        std_val  = float(np.std(data))
        est_min  = mean_val - 3 * std_val
        est_max  = mean_val + 3 * std_val

        # Store for CACE output
        output[f'{name}_mean']   = [mean_val]
        output[f'{name}_std']    = [std_val]
        output[f'{name}_estmin'] = [est_min]
        output[f'{name}_estmax'] = [est_max]

        # Store for Markdown summary
        summary.append((name, mean_val, std_val, est_min, est_max))

    # --- Print Markdown-style summary to console ---
    if summary:
        print("\n### Monte Carlo Statistics Summary (mean ± 3σ estimate)\n")
        print("| Variable  |     Mean      |    Std Dev    |      μ−3σ     |      μ+3σ     |")
        print("|-----------|---------------|---------------|---------------|---------------|")
        for name, mean_val, std_val, est_min, est_max in summary:
            print(f"| {name:<9} | {mean_val:>13.4e} | {std_val:>13.4e} | {est_min:>13.4e} | {est_max:>13.4e} |")
        print()

    # --- Save Markdown summary to file ---
    if summary:
        cwd = os.getcwd()
        project_name = os.path.basename(cwd.rstrip("/"))
        save_dir = os.path.join(cwd, "docs", project_name, "schematic")
        os.makedirs(save_dir, exist_ok=True)
        md_path = os.path.join(save_dir, "stats_summary.md")

        # Create Markdown content
        md_lines = [
            "# Monte Carlo Statistics Summary\n",
            f"**Project:** `{project_name}`\n\n",
            "| Variable  |     Mean      |    Std Dev    |      μ−3σ     |      μ+3σ     |",
            "|-----------|---------------|---------------|---------------|---------------|",
        ]
        for name, mean_val, std_val, est_min, est_max in summary:
            md_lines.append(
                f"| {name:<9} | {mean_val:>13.4e} | {std_val:>13.4e} | {est_min:>13.4e} | {est_max:>13.4e} |"
            )

        with open(md_path, "w") as f:
            f.write("\n".join(md_lines) + "\n")

        print(f"Markdown summary saved to: {md_path}")

    return output

