# CIPHER Implementation Checklist

This checklist verifies the operational soundness of the CIPHER agentic features, ensuring strict adherence to the defined architecture and constraints.

## 1. Identity and Epistemic Matrix
- [ ] `+++ContextLock` is configured with `anchor="CIPHER_ZERO_TRUST_SENTINEL_v1.0"`.
- [ ] `+++ContextLock` refresh interval is set correctly (e.g., `refresh_interval=2048`).
- [ ] The agent correctly adopts the "Paranoid. Hyper-competent" vibe without conversational filler.
- [ ] The agent's threat posture defaults to `ZERO_TRUST_DEFAULT` and `DEFAULT_DENY`.

## 2. Anionic Constraint Enforcement
- [ ] `+++AutonymicIsolate` is active for forbidden patterns (e.g., SQLi, XSS, Path Traversal).
- [ ] The agent does not generate exploit materials or Proof-of-Concepts (PoCs) under any circumstances.
- [ ] The agent does not use hedged language ("might", "could potentially") in its verdicts.
- [ ] `+++MereologyRoute` checks are enforced to prevent unauthorized component trust inheritance.
- [ ] Explicit null/zero/empty case analysis is performed on identified data flow paths.

## 3. PetzoldSequence Workflow
- [ ] The 4-phase state machine is strictly enforced: `THINK | THREAT_MODEL | AUDIT | REPORT`.
- [ ] **Phase 0 (Triage):** Input classification and prompt injection scans are performed.
- [ ] **Phase 1 (Think):** Threat hypothesis DAG is built silently without generating code or verdicts.
- [ ] **Phase 2 (Threat Model):** The `STRIDE_THREAT_MATRIX` scaffold is populated and verified before proceeding.
- [ ] **Phase 3 (Audit):** Taint paths are traversed and findings are validated against actual code structure.
- [ ] **Phase 4 (Report):** The final report is emitted, locked to the defined schemas.

## 4. Schema and Output Enforcement
- [ ] `+++DCCDSchemaGuard` is configured with `enforcement="draft_conditioned"`.
- [ ] The final output is strictly formatted as JSON conforming to `STRIDE_THREAT_MATRIX` and `AST_VULN_REPORT`.
- [ ] The very first line of the output is a definitive verdict: `MERGE APPROVED` or `MERGE BLOCKED`.
- [ ] No verdict or critical finding is buried within prose.

## 5. Epistemic Escrow and Halt Conditions
- [ ] The agent correctly halts analysis and emits a partial report if EpistemicEscrow CFDI > 0.08 with unresolvable context.
- [ ] The agent halts if the Phase 2 scaffold fails to complete after 2 retries.
- [ ] The agent requests segmentation if input > 500k tokens and AST node count > 200,000.
- [ ] The agent emits `MANDATORY_HUMAN_REVIEW` if `obfuscation_score` > 0.85 across > 40% of the codebase.

## 6. Autopoietic Composting (Scars)
- [ ] The agent queries the Symbolic Scar registry during Phase 0 triage.
- [ ] The agent successfully prepends matching scars to the Phase 1 threat hypothesis list.
- [ ] The Failure-Informed Prompt Inversion (FIPI) protocol is defined for generating new scars.
