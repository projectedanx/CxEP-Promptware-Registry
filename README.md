# CxEP-Promptware-Registry

## Overview

The **Context-to-Execution Pipeline (CxEP) Promptware Registry** is a version-controlled repository for managing formal, machine-readable **Product-Requirements Prompts (PRPs)** and **Deep Research Protocols (DRPs)**. This registry treats prompt artifacts with the same rigor as source code, ensuring their integrity, auditability, and reusability.

The core principle of this registry is **Context Engineering 2.0**, which emphasizes the creation of prompts as **executable contracts** between a human operator and an AI agent. By enforcing a strict schema and automated validation, this registry mitigates prompt drift, hallucinations, and other forms of semantic deviation.

## Getting Started

To get started with this repository, you will need to have a basic understanding of YAML and JSON Schema. You will also need to have a text editor that supports YAML.

Once you have the necessary prerequisites, you can clone this repository to your local machine:

```
git clone https://github.com/CxEP/CxEP-Promptware-Registry.git
```

## Repository Structure

The repository is organized into the following directories:

- **`/prompts`**: Contains the PRP and DRP artifacts, which are YAML files adhering to the formal schema.
- **`/schemas`**: Contains the formal YAML schema (`prp_schema.yml`) that defines the structure and constraints of all promptware in this registry.
- **`/.github/workflows`**: Contains the GitHub Actions workflows for continuous integration and validation. The `prp_validation.yml` workflow automatically validates all new or modified prompts against the schema.

## The PRP Schema

The `prp_schema.yml` file defines the structure of a Product-Requirements Prompt. The schema is divided into the following sections:

- **`PRP_ID`**: A unique identifier for the prompt.
- **`PRP_NAME`**: A human-readable name for the prompt.
- **`DOMAIN`**: The primary domain of application.
- **`GOAL`**: A clear, concise, and unambiguous statement of the desired outcome.
- **`CONTEXT_ENGINEERING`**: All necessary background, persona definitions, and conceptual anchors required for the AI to perform its task.
- **`CONSTRAINTS_AND_INVARIANTS`**: The non-negotiable rules, preconditions, postconditions, and invariants that govern the execution and final state.
- **`EXECUTION_PLAN`**: A step-by-step plan for how the AI agent should complete the task.
- **`SELF_TEST`**: A set of structured checks that function as an oracle to verify the successful completion of the GOAL.
- **`REFLEXIVE_CHECK`**: A meta-prompt for the AI to perform self-assessment and check for cognitive biases or adherence to principles.

For a more detailed explanation of the schema, please see the comments in the `schemas/prp_schema.yml` file.

## Contributing

To contribute a new PRP or DRP to this registry, please follow these steps:

1. Create a new YAML file in the `/prompts` directory.
2. Ensure that your YAML file adheres to the schema defined in `/schemas/prp_schema.yml`.
3. Add a descriptive header to your file, explaining the purpose of the prompt and how it's intended to be used.
4. Submit a pull request. Your submission will be automatically validated by the GitHub Actions workflow.

## Validation

All prompts in this registry are validated against the `prp_schema.yml` schema using a GitHub Actions workflow. The workflow is triggered on every push to the `main` branch and on every pull request.

To manually validate a prompt, you can use a YAML linter and a JSON Schema validator.

## Key Concepts

- **Executable Contract**: A formal, machine-readable specification that functions as a binding agreement between the operator and the AI agent.
- **Semantic Integrity Constraint (SIC)**: A declarative rule imposing a non-negotiable correctness condition on the AI's output, preventing drift and hallucination.
- **Promptware**: Formal, version-controlled artifacts (PRPs, DRPs) treated with the same rigor as source code.
