# Cartographer Journal

Path: `.jules/cartographer.md`

Learning: [The repository is an unstructured YAML registry enforced via `validate-yaml-action` and `yamllint`. The GitHub action runs validation only on `prompts/*.yml` files changed in a PR. The YAML structure closely mirrors a strongly typed object schema as mapped out in the erDiagram]
Action: [When creating new PRPs, closely adhere to `schemas/prp_schema.yml` to prevent validation pipeline failures in the sequence flow]
