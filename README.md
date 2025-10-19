# CxEP-Promptware-Registry

## Overview

The **Context-to-Execution Pipeline (CxEP) Promptware Registry** is a version-controlled repository for managing formal, machine-readable **Product-Requirements Prompts (PRPs)** and **Deep Research Protocols (DRPs)**. This registry treats prompt artifacts with the same rigor as source code, ensuring their integrity, auditability, and reusability.

The core principle of this registry is **Context Engineering 2.0**, which emphasizes the creation of prompts as **executable contracts** between a human operator and an AI agent. By enforcing a strict schema and automated validation, this registry mitigates prompt drift, hallucinations, and other forms of semantic deviation.

## Repository Structure

The repository is organized into the following directories:

- **`/prompts`**: Contains the PRP and DRP artifacts, which are YAML files adhering to the formal schema.
- **`/schemas`**: Contains the formal YAML schema (`prp_schema.yml`) that defines the structure and constraints of all promptware in this registry.
- **`/.github/workflows`**: Contains the GitHub Actions workflows for continuous integration and validation. The `prp_validation.yml` workflow automatically validates all new or modified prompts against the schema.

## Contributing

To contribute a new PRP or DRP to this registry, please follow these steps:

1. Create a new YAML file in the `/prompts` directory.
2. Ensure that your YAML file adheres to the schema defined in `/schemas/prp_schema.yml`.
3. Submit a pull request. Your submission will be automatically validated by the GitHub Actions workflow.

## Key Concepts

- **Executable Contract**: A formal, machine-readable specification that functions as a binding agreement between the operator and the AI agent.
- **Semantic Integrity Constraint (SIC)**: A declarative rule imposing a non-negotiable correctness condition on the AI's output, preventing drift and hallucination.
- **Promptware**: Formal, version-controlled artifacts (PRPs, DRPs) treated with the same rigor as source code.
