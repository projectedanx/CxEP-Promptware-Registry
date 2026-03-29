# 🗺️ System Architecture

This document describes the architectural boundaries, workflows, and schema relationships within the **CxEP-Promptware-Registry**. It maps the registry's core structural elements to clarify the invisible dependencies governing Product-Requirements Prompts (PRPs).

## 1. System Context: The PRP Registry Ecosystem

This context diagram defines the high-level boundaries of the registry, illustrating how human architects and AI systems interact with the formalized prompt registry.

```mermaid
C4Context
  title System Context: CxEP-Promptware-Registry

  Person(ai_architect, "AI Systems Architect", "Designs and submits formalized PRPs.")
  Person(ai_agent, "AI Agent", "Consumes PRPs as executable contracts to perform tasks.")

  System(registry, "CxEP-Promptware-Registry", "Version-controlled registry for Product-Requirements Prompts (PRPs). Ensures contracts are well-defined and executable.")
  System_Ext(github_actions, "GitHub Actions", "CI/CD pipeline for schema validation and linting.")

  Rel(ai_architect, registry, "Authors, versions, and commits PRPs to")
  Rel(registry, github_actions, "Triggers validation workflows on Pull Request to")
  Rel(github_actions, registry, "Reports pass/fail status back to")
  Rel(ai_agent, registry, "Reads validated PRPs to execute tasks from")
```

## 2. CI/CD Validation Pipeline Sequence

This sequence diagram visualizes the trust boundary between user submissions, the GitHub Actions validation pipeline, and the schema definitions. It explicitly outlines the validation steps that prevent invalid PRPs from merging.

```mermaid
sequenceDiagram
    participant Architect as AI Systems Architect
    participant PR as GitHub Pull Request
    participant Workflow as prp_validation.yml
    participant ChangedFiles as tj-actions/changed-files
    participant YamlLint as yamllint
    participant SchemaValidation as validate-yaml-action
    participant Schema as schemas/prp_schema.yml

    Architect->>PR: Opens PR with modified `prompts/*.yml`
    PR->>Workflow: Trigger `pull_request` event
    activate Workflow
    Workflow->>ChangedFiles: Identify changed PRP files
    ChangedFiles-->>Workflow: Return list of changed files

    alt If any PRP files changed
        Workflow->>SchemaValidation: Validate changed files
        SchemaValidation->>Schema: Load `prp_schema.yml`
        SchemaValidation-->>Workflow: Validation Result (Pass/Fail)
    end

    Workflow->>YamlLint: Lint all YAML files
    YamlLint-->>Workflow: Linting Result (Pass/Fail)

    Workflow-->>PR: Report overall job status
    deactivate Workflow

    alt If Validation & Linting Pass
        PR-->>Architect: Allow Merge
    else If Validation or Linting Fail
        PR-->>Architect: Block Merge & Request Fixes
    end
```

## 3. PRP Object Model (Entity Relationship Diagram)

This entity-relationship diagram maps the internal structure of a Product-Requirements Prompt (PRP) as defined by `prp_schema.yml`. It explicitly visualizes the required nested objects and their cardinality.

```mermaid
erDiagram
    PRP {
        string PRP_ID PK "Globally unique ID with version"
        string PRP_NAME "Human-readable name"
        string DOMAIN "Primary domain of application"
        string GOAL "Clear statement of desired outcome"
    }

    CONTEXT_ENGINEERING {
        string PERSONA "The persona the AI agent should adopt"
    }

    REQUIRED_REPOSITORY {
        string name "Name of the repository"
        string initial_state "Commit hash or branch"
    }

    CORE_CONCEPT {
        string concept "Name of the concept"
        string definition "Detailed definition"
    }

    CONSTRAINTS_AND_INVARIANTS {
        string[] PRECONDITIONS "Conditions true before start"
        string[] INVARIANTS "Conditions true during execution"
        string[] POSTCONDITIONS "Conditions true after completion"
    }

    EXECUTION_PLAN_STEP {
        string step "Description of the step"
        string role "Role of the AI agent"
        string action "Action to take"
    }

    SELF_TEST {
        string success_condition "Condition for test success"
    }

    SELF_TEST_CHECK {
        string check_id "Unique ID for the check"
        string description "Human-readable description"
        string method "Validation method enum"
        object params "Optional parameters"
    }

    REFLEXIVE_CHECK {
        string prompt "Prompt for self-assessment"
    }

    %% Relationships
    PRP ||--|| CONTEXT_ENGINEERING : "contains"
    PRP ||--|| CONSTRAINTS_AND_INVARIANTS : "contains"
    PRP ||--|{ EXECUTION_PLAN_STEP : "has"
    PRP ||--|| SELF_TEST : "contains"
    PRP ||--|| REFLEXIVE_CHECK : "contains"

    CONTEXT_ENGINEERING ||--o| REQUIRED_REPOSITORY : "has optional"
    CONTEXT_ENGINEERING ||--o{ CORE_CONCEPT : "defines"

    SELF_TEST ||--|{ SELF_TEST_CHECK : "executes"
```
