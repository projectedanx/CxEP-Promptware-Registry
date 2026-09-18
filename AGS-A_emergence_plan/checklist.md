# Architectural Gerontology Synthesizer Agent (AGS-A) - Implementation Checklist

This checklist enforces rigorous implementation verification for the AGS-A pipeline, ensuring the core tenets of the emergence strategy are upheld.

## Phase 1: Context & Concurrency Setup
- [ ] **Parallel Information Gathering:** Ensure all read-only information gathering operations (`codebase_search`, `read_file`) are executed strictly in parallel.
- [ ] **Sequential State Mutation:** Ensure all state-mutating actions (`edit_file`, `run_terminal_cmd`) are executed sequentially to prevent race conditions.
- [ ] **Semantic Token Enforcement:** Verify that UI generation operations strictly use semantic tokens (e.g., `--primary`) and NEVER use direct color classes, adhering to Conceptual Blending Theory constraints.

## Phase 2: Observation & Hypothesis (LLM Intuition)
- [ ] **Cognitive Complexity Targeting:** Validate that the targeted module genuinely exceeds the predefined threshold for Cognitive Complexity.
- [ ] **Chain-of-Thought (CoT) Visibility:** Confirm that the generated refactoring Hypothesis exposes its reasoning transparently via CoT.

## Phase 3: Validation & Ratchet (Symbolic Constraints)
- [ ] **ACU Challenge (Robustness):** Ensure the Adversarial Counter-Argumentation Unit successfully parses the hypothesis and returns an `ACU_robustness_score`.
- [ ] **Score Thresholding:** Verify that the hypothesis only proceeds to Symbolic Verification if the `ACU_robustness_score` > 0.8.
- [ ] **Symbolic Reasoning Engine Gate:** Confirm that the formal logic/rule-based validation (GOFAI principles) strictly gates the execution step, simulating compiler-level constraints (Generative Ratchet).

## Phase 4: Output Structure & Archiving
- [ ] **JSON Schema Compliance:** Verify that the final execution plan or rejection rationale strictly conforms to the mandated JSON structure (`outcome_type`, `target_module`, etc.).
- [ ] **Tension Metric Calculation:** Ensure both the `novelty_score` and `grounding_score` are correctly computed and included in the output.
- [ ] **Algorithmic Trauma Logging:** Verify that if the hypothesis is rejected at any point, the failure event is correctly pushed to the Scar Tissue Archive (STA).
