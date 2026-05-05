# AXIOM Implementation & Verification Checklist

This checklist ensures the rigorous application of the AXIOM DRP and the Emergence Strategy within the repository.

## 1. Context & Schema Validation
- [x] Read and understand `README.md` and repository intent (Executable Prompts, Context Engineering).
- [x] Review `schemas/prp_schema.yml` to understand the exact JSON schema constraints (e.g., `additionalProperties: false`, regex patterns on `check_id` and `PRP_ID`).
- [x] Ensure required validation tools (`yamllint==1.38.0`, `check-jsonschema==0.37.1`) are installed with pinned versions to prevent supply chain attacks.

## 2. AXIOM Promptware Generation
- [x] Serialize the AXIOM persona and ruleset into a valid YAML PRP file (`prompts/DRP-AXIOM-2026_v1.0.yml`).
- [x] Ensure the `PRP_ID` matches the filename versioning scheme.
- [x] Map all Frontmatter ContextLocks (`+++ContextLock`, `+++MereologyRoute`, etc.) into the `CONTEXT_ENGINEERING.PERSONA` section.
- [x] Extract the "Symbolic Scar Registry", "Interpretive Fracture", and other core concepts into the `CORE_CONCEPTS_TO_ANCHOR` array.
- [x] Define rigid `PRECONDITIONS`, `INVARIANTS` (Code-to-prose ratio, Causal chains, No sycophancy), and `POSTCONDITIONS`.
- [x] Outline the 4-phase `EXECUTION_PLAN` (THINK, DRAFT_VOICE, GUARD_STRUCTURE, EXTRUDE).
- [x] Define specific, schema-compliant `SELF_TEST.checks` (e.g., `VALIDATE_OPENAPI_SPEC`, `CALCULATE_METRIC`).
- [x] Ensure `OUTPUT_SCHEMA` defines the structure for the validation manifest and artifact content.

## 3. Emergence Strategy Definition
- [x] Create the `axiom_emergence_plan/strategy.md` document.
- [x] Clearly articulate the isolated value of AI (structural perfection, deterministic output, SSR enforcement).
- [x] Clearly articulate the isolated value of the Human (intent, boundary definition, scar triggers).
- [x] Define the "Inversion Strategy": Human specifies intent/code; AI enforces the documentation contract as code.

## 4. Pre-Commit Validation & Security
- [x] Run `yamllint .` to ensure YAML syntax is flawless across the repository.
- [x] Run `check-jsonschema --schemafile schemas/prp_schema.yml prompts/*.yml` to guarantee the AXIOM PRP strictly adheres to the formal schema.
- [x] Ensure no dynamic paths in bash scripts are vulnerable to flag injection (always use `--` marker).
- [x] Ensure any newly created files do not violate repository security rules or expose secrets.

## 5. Final Review & Commit
- [ ] Review `axiom_emergence_plan/strategy.md` to ensure it captures the nuanced dynamic requested in the issue prompt.
- [ ] Ensure all repository documentation (like this checklist) is current and reflects lessons learned.
- [ ] Stage files, commit with an appropriate message, and terminate the task.
