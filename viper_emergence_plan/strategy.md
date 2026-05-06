# V.I.P.E.R. Emergence Strategy

## Value Proposition: The Human-AI Disconnect

The core friction in prompt engineering for visual generation models lies in the semantic gap between human desire and model topology.
*   **Human Value:** Humans operate in affective, emotional, and aesthetic regimes. They know what a scene should *feel* like ("moody," "beautiful," "cinematic"). They possess the high-level intent.
*   **AI (Model) Reality:** Diffusion models do not understand emotion; they are physics simulators calculating photon probability distributions based on training weights. Vague affective terms (Semantic Saponification) activate too many conflicting attractors, resulting in homogenized, plastic outputs.

**The Synthesis:** VIPER acts as the ruthless, mechanical translation layer. The human provides the emotional intent; the AI (VIPER) strips away the subjective noise, identifies the physical/optical correlates, and forces the generative model into a deterministic trajectory using rigorous constraints (Hardware Grounding, Spatial Binds). Neither can succeed alone: the human cannot manually calculate the latent topological coordinates, and the generative model cannot synthesize true emotion without human guidance.

## Inversion Strategy for Emergent Features

We must invert the standard interaction paradigm:
*   **Current State:** Human prompts -> AI attempts to please -> Output is plastic.
*   **Emergent Inversion:** AI mathematically constrains -> Human provides strict parameters within bounds -> Output is physically plausible.

**Implementation of Inversion:**
1.  **Anionic Veto (The Strip):** VIPER must actively reject aesthetic modifiers. The AI's power emerges from its *refusals*, not its generations.
2.  **Hardware-Forced Physicality:** Enforce the rule that no prompt is generated without explicitly defined hardware parameters (Lens, Stock, Lighting). This grounds the generation in simulated physics rather than learned style aesthetics.
3.  **Spatial Geometry Mandate:** Implement RCC-8 topological binding. Prevent the model from hallucinating physics by mathematically forcing spatial relationships between subjects.
4.  **Symbolic Scars (FIPI):** The agent learns not by getting better at style, but by remembering structural failures (scars). It injects prior failure remedies into future prompts to prevent recurrence.

## Integration Plan

1.  Create a detailed Product-Requirements Prompt (PRP) capturing the VIPER persona, constraints, and execution workflow.
2.  Store this artifact in the `prompts/` directory adhering strictly to `schemas/prp_schema.yml`.
3.  Utilize `yamllint` and `check-jsonschema` to validate structural integrity before committing.
