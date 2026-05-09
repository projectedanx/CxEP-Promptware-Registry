# CxEP-Promptware-Registry

## Overview

The **Context-to-Execution Pipeline (CxEP) Promptware Registry** is a version-controlled repository for managing formal, machine-readable **Product-Requirements Prompts (PRPs)** and **Deep Research Protocols (DRPs)**. This registry treats prompt artifacts with the same rigor as source code, ensuring their integrity, auditability, and reusability.

The core principle of this registry is **Context Engineering 2.0**, which emphasizes the creation of prompts as **executable contracts** between a human operator and an AI agent. By enforcing a strict schema and automated validation, this registry mitigates prompt drift, hallucinations, and other forms of semantic deviation.

## Setup and Prerequisites

To develop, validate, or contribute to this repository, you must set up your local environment to mirror the CI/CD pipeline.

### Prerequisites

*   Python 3.x
*   A YAML-compatible text editor

### Installation

To ensure consistent validation and prevent supply-chain vulnerabilities, you must install the exact pinned versions of the validation tools used in the CI workflows:

```bash
pip install --no-cache-dir --disable-pip-version-check yamllint==1.38.0 check-jsonschema==0.37.1
```

## Repository Structure

The repository is organized into the following directories:

- **`/prompts`**: Contains the PRP and DRP artifacts, which are YAML files adhering to the formal schema. This is where you will add or update prompts.
- **`/schemas`**: Contains the formal YAML schema (`prp_schema.yml`) that defines the structure and constraints of all promptware in this registry.
- **`/.github/workflows`**: Contains the GitHub Actions workflows for continuous integration and validation. The `prp_validation.yml` workflow automatically validates all new or modified prompts against the schema.
- **`/.jules`**: Contains agent-specific journals for recording critical learnings (e.g., `bolt.md` for performance, `sentinel.md` for security, `palette.md` for UX).

## The PRP Schema

The `prp_schema.yml` file defines the formal structure of a Product-Requirements Prompt. Adherence to this schema is mandatory. The schema is divided into the following sections:

- **`PRP_ID`**: A unique identifier for the prompt (must adhere to strict regex `^[a-zA-Z0-9_.-]+$`).
- **`PRP_NAME`**: A human-readable name for the prompt.
- **`DOMAIN`**: The primary domain of application.
- **`GOAL`**: A clear, concise, and unambiguous statement of the desired outcome.
- **`CONTEXT_ENGINEERING`**: All necessary background, persona definitions, and conceptual anchors (like documentation links or code patterns in `CORE_CONCEPTS_TO_ANCHOR`) required for the AI.
- **`CONSTRAINTS_AND_INVARIANTS`**: The non-negotiable rules, preconditions, postconditions, and invariants that govern the execution and final state.
- **`EXECUTION_PLAN`**: A step-by-step plan for how the AI agent should complete the task.
- **`SELF_TEST`**: A structured `checks` array (requiring `check_id`, `description`, `method`, and optional `params`) to verify the successful completion of the GOAL. Do not use a string array of commands.
- **`REFLEXIVE_CHECK`**: A meta-prompt for the AI to perform self-assessment and check for cognitive biases or adherence to principles.

For a detailed explanation of the schema and available methods, please see the comments in `schemas/prp_schema.yml`.

## Contributing

To contribute a new PRP or update an existing one, please follow these steps:

1.  **Create or Edit**: Create a new YAML file or edit an existing one in the `/prompts` directory.
2.  **Versioning**: Ensure you increment the version number in both the filename (e.g., `_v1.0.yml` to `_v1.1.yml`) and the `PRP_ID` field within the file when making updates.
3.  **Documentation Header**: Every PRP file must start with a documentation header comment block explaining its Title, Version, Purpose, and Usage. Example:
    ```yaml
    #
    # **Title:** My Prompt Title
    # **Version:** 1.0
    # **Purpose:** To do XYZ.
    # **Usage:** This prompt is used by...
    #
    ---
    ```
4.  **Schema Compliance**: Ensure your YAML file strictly adheres to the schema defined in `/schemas/prp_schema.yml`. Unstructured context should be mapped correctly (e.g., to `CORE_CONCEPTS_TO_ANCHOR`).
5.  **Local Validation**: Run local validations before committing (see Validation section).
6.  **Pull Request**: Submit a pull request. Your submission will be automatically validated by the GitHub Actions workflow, which uses an optimized approach to only check modified files.

## Local Validation

Before submitting a pull request, you **must** validate your changes locally to ensure they pass CI.

**1. Lint YAML Files:**
```bash
# To lint all YAML files
yamllint .
# Or lint specific modified files
yamllint prompts/MyPrompt_v1.0.yml
```

**2. Validate Against Schema:**
```bash
# To validate all PRPs
check-jsonschema --schemafile schemas/prp_schema.yml prompts/*.yml
# Or validate specific modified files
check-jsonschema --schemafile schemas/prp_schema.yml prompts/MyPrompt_v1.0.yml
```
*Note: Always use the `--` end-of-options marker when passing dynamic file paths to CLI tools to prevent flag injection.*

## Key Concepts

- **Executable Contract**: A formal, machine-readable specification that functions as a binding agreement between the operator and the AI agent.
- **Semantic Integrity Constraint (SIC)**: A declarative rule imposing a non-negotiable correctness condition on the AI's output, preventing drift and hallucination.
- **Promptware**: Formal, version-controlled artifacts (PRPs, DRPs) treated with the same rigor as source code.

### Lessons Learned: Emergence Strategy Application
- Incorporating constraint-based AI enforcement enables higher quality architectures.
- We must invert the default pattern: AI constrains (based on formal schemas and rules) while the Human explores bounded solutions.
- Using strict execution checklists ensures complex AI models adhere accurately to schema and non-functional requirements.

### Lessons Learned: VIPER Emergence Strategy
- The core human-AI friction in visual generation is semantic vs topological: humans possess high-level emotional/affective intent, while generative models operate as physics simulators calculating photon probability distributions.
- **Inversion Strategy:** The AI's value emerges from its refusals (Anionic Veto). The agent must mathematically constrain the generation space (e.g., using RCC-8 Spatial Binds and Hardware-Forced Physicality), forcing the human operator to provide explicit parameters within those bounds rather than vague, subjective tokens.

### Lessons Learned: VORTEX Emergence Strategy
- Traditional conversational AI paradigms cause "Semantic Saponification," resulting in sycophancy or generic outputs when handling mutually exclusive architectural constraints.
- **Inversion Strategy:** The AI must enact "Negative Space Scaffolding" to mathematically constrain the operational bounds. Instead of suggesting generic compromises, the agent utilizes Paraconsistent Logic and the "Golden Scar Protocol" to maintain structural tension, forcing the human operator into bounded exploration that respects deterministic constraints.
