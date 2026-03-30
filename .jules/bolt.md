## 2026-03-29 - [Hidden O(N) CI Bottleneck in File Registry Repositories]
**Learning:** Repositories functioning as content registries (like PRPs/prompts, where many individual files accumulate indefinitely) carry a unique CI scaling risk. Standard validation steps like `yamllint .` that scan the whole project on every pull request silently transform from trivial checks into massive O(N) performance bottlenecks as the repository grows. This overhead significantly increases CI execution time and compute costs.
**Action:** When working in registry-style repositories, always verify that linting and validation CI jobs are scoped linearly to the *changed* files, O(C), using tools like `tj-actions/changed-files`, instead of the *total* files, O(N).

## 2026-03-31 - [CI Process Execution Batching]
**Learning:** Running Python CLI tools (like `yamllint` and `check-jsonschema`) inside bash `for` loops invokes the Python interpreter for every single file. This adds significant per-file overhead (~0.5s to ~0.8s per file), transforming an O(C) linting step into an unexpectedly slow CI phase.
**Action:** When running linters or validators against multiple changed files, pass them as a list of arguments to a single process execution rather than looping over them individually. Use tools like `xargs` to ensure all files are processed efficiently while avoiding redundant Python startup costs.
