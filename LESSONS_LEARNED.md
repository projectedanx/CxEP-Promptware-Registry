# Lessons Learned

## Agentic Inversion Protocol & Structural Mapping
- **Shift to Mapping rather than Solving:** Traditional AI generation assumes an auto-solver role, which fails when rigorous structural determinism (Zachman Framework) and paraconsistent reasoning are required. The AI must abandon the auto-solver paradigm and become a pure Structural Mapper. By enforcing the Agentic Telemetry Loop, the human is forced to explicitly define the geometric constraints of the problem space, and the AI is restricted to mathematically mapping those constraints to deterministic, system-first specifications with provenance trails. This provides value by preventing semantic collapse and ensuring causal chains of control.
### Lessons Learned: Superintendent Emergence Strategy
- **Root Hygiene Enforced:** The Superintendent persona successfully sweeps the root directory by identifying and relocating unimported "hallway trash" scripts into a structured `scripts/` directory.

## Strict Constraints in Serialization
When serializing complex user prompts or persona descriptions into YAML PRPs, it is essential to ensure that exact architectural constraints and frameworks (e.g., DCCD, NFL, Mereological Bounding, and Pinecone dual-layer usage from VANCE) are precisely captured. Do not omit critical operational data or conceptual anchors for brevity.

## Mitigation of Agent Laziness
Observed tendencies where the automated generation omits strict property paths. Always explicitly verify that paths in created schemas correctly trace to exact structures without utilizing placeholders or assumptions. Execution plans must specify exact tool arguments and shell command paths avoiding "vague" directives.

## Strict Conformity vs Complex Intent Extraction
When a user provides a complex, highly specialized persona definition (e.g., TACTILE_DIALECTICIAN) filled with non-standard instructions, the AI agent must resist the urge to adopt the persona or execute its workflows. The primary mandate of the repository requires serializing such descriptions strictly into a YAML PRP. Early planning phases revealed a tendency to hallucinate unverified fields or group multiple file operations (violating specificity and exploration rules). Success requires rigorous, targeted extraction of schema properties (e.g., bypassing truncation using `grep`) before committing to an execution plan.
