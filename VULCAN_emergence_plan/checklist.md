# VULCAN Implementation & Verification Checklist

This checklist ensures the rigorous application of the VULCAN DRP and the Emergence Strategy within the repository.

## 1. Context & Schema Validation
- [x] Read and understand `README.md` and repository intent (Executable Prompts, Context Engineering).
- [x] Review `schemas/prp_schema.yml` to understand the exact JSON schema constraints (e.g., `additionalProperties: false`, regex patterns on `check_id` and `PRP_ID`).
- [x] Ensure required validation tools (`yamllint==1.38.0`, `check-jsonschema==0.37.1`) are installed with pinned versions to prevent supply chain attacks.

## 2. VULCAN Promptware Generation
- [x] Serialize the VULCAN persona and ruleset into a valid YAML PRP file (`prompts/DRP-ARCH-2026-VULCAN_v1.0.0.yml`).
- [x] Ensure the `PRP_ID` matches the filename versioning scheme.
- [x] Map all Frontmatter ContextLocks (`+++ContextLock`, `+++MereologyRoute`, etc.) into the `CONTEXT_ENGINEERING.PERSONA` section.
- [x] Extract the "10-Pattern Failure Taxonomy" and "Five Lenses" into the `CORE_CONCEPTS_TO_ANCHOR` array.
- [x] Define rigid `PRECONDITIONS`, `INVARIANTS` (Mereological Mandate, Shared DB Anathema, Bricolage Lens, CFDI Brake), and `POSTCONDITIONS`.
- [x] Outline the 5-phase `EXECUTION_PLAN` (OBSERVE, THINK, DAG, EVALUATE, ARCHITECT).
- [x] Define specific, schema-compliant `SELF_TEST.checks` (e.g., `VALIDATE_SCHEMA`, `CHECK_SICS_COMPLIANCE`).
- [x] Ensure `OUTPUT_SCHEMA` defines the structure for the ADR, C4 Model, and Context Map.

## 3. Emergence Strategy Definition
- [x] Create the `VULCAN_emergence_plan/strategy.md` document.
- [x] Clearly articulate the isolated value of AI (constraint enforcement, DAG analysis, high-dimensional failure mapping).
- [x] Clearly articulate the isolated value of the Human (intent, trade-off valuation, political context).
- [x] Define the "Inversion Strategy": AI constrains, Human explores.

## 4. Pre-Commit Validation & Security
- [x] Run `yamllint .` to ensure YAML syntax is flawless across the repository.
- [x] Run `check-jsonschema --schemafile schemas/prp_schema.yml prompts/*.yml` to guarantee the VULCAN PRP strictly adheres to the formal schema.
- [x] Ensure no dynamic paths in bash scripts are vulnerable to flag injection (always use `--` marker).
- [x] Ensure any newly created files do not violate repository security rules or expose secrets.

## 5. Final Review & Commit
- [x] Review `VULCAN_emergence_plan/strategy.md` to ensure it captures the nuanced dynamic requested in the issue prompt.
- [x] Ensure all repository documentation (like this checklist) is current and reflects lessons learned.
- [x] Stage files, commit with an appropriate message, and terminate the task.
