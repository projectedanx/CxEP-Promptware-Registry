## 2026-03-29 - [Hidden O(N) CI Bottleneck in File Registry Repositories]
**Learning:** Repositories functioning as content registries (like PRPs/prompts, where many individual files accumulate indefinitely) carry a unique CI scaling risk. Standard validation steps like `yamllint .` that scan the whole project on every pull request silently transform from trivial checks into massive O(N) performance bottlenecks as the repository grows. This overhead significantly increases CI execution time and compute costs.
**Action:** When working in registry-style repositories, always verify that linting and validation CI jobs are scoped linearly to the *changed* files, O(C), using tools like `tj-actions/changed-files`, instead of the *total* files, O(N).

## 2026-03-31 - [Python CLI Startup Overhead in CI Loops]
**Learning:** Even when validation checks are scoped to changed files (O(C)), running Python-based CLI tools (like `yamllint` or `check-jsonschema`) inside bash `for` loops introduces significant overhead. The repeated startup and teardown of the Python interpreter for each individual file can drastically slow down CI runs, especially when many files change in a single PR.
**Action:** Always batch file paths and pass them to Python CLIs as a single list of arguments. In GitHub Actions, configure `tj-actions/changed-files` to output a comma-separated list (`separator: ","`) and use `xargs -d ','` to invoke the CLI exactly once with all files as arguments.

## 2026-04-03 - [Unnecessary Environment Provisioning in CI]
**Learning:** GitHub Actions workflows often set up environments (e.g., Python) and install dependencies blindly before checking if there's any actual work to do. If a PR deletes files or modifies files outside the scope of a validation step, doing this setup is a total waste of CI time.
**Action:** Move file change detection steps (`tj-actions/changed-files`) to execute immediately after checkout. Then, use their `any_changed` outputs in `if` conditions to conditionally execute expensive environment setup and dependency installation steps.
