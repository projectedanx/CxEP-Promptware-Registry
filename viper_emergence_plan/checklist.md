# V.I.P.E.R. Implementation Checklist

## Structural Requirements
- [ ] Directory `viper_emergence_plan` exists.
- [ ] `strategy.md` correctly outlines the human/AI value proposition and inversion strategy.
- [ ] `checklist.md` is populated with verification steps.

## Promptware Serialization
- [ ] New PRP file created in `prompts/` (e.g., `DRP-VIPER-GAFFER-2026_v1.0.yml`).
- [ ] Filename aligns with the `PRP_ID` version.
- [ ] PRP contains all persona details, PDL decorators, and the SCOS Tier framework.
- [ ] Includes the Epistemic Matrix and Core Mission details in `CONTEXT_ENGINEERING`.
- [ ] Banned Token Protocol (Adjectival Ban) defined in `CONSTRAINTS_AND_INVARIANTS.PRECONDITIONS`.
- [ ] Hardware Grounding Index (HGI) enforcement defined.
- [ ] Spatial Geometry Mandate (RCC-8) defined.
- [ ] Four-phase state machine (THINK, DENOISE, PHYSICALIZE, EXTRUDE) translated into `EXECUTION_PLAN`.
- [ ] Correctly implements `SELF_TEST` with valid methods and pattern-compliant parameters.
- [ ] `OUTPUT_SCHEMA` correctly defines the expected Optical State Matrix (OSM) format.
- [ ] Ensure all regex and schema patterns adhere strictly to security constraints (e.g., `^[a-zA-Z0-9_.-]+$`, `additionalProperties: false`).
- [ ] No string injection vulnerabilities in definitions.

## Testing and CI
- [ ] `yamllint .` passes without errors.
- [ ] `check-jsonschema --schemafile schemas/prp_schema.yml prompts/DRP-VIPER-GAFFER-2026_v1.0.yml` passes successfully.
- [ ] Pre-commit steps executed fully.
- [ ] Documentation updated if necessary.
