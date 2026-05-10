# KIRA-7 Emergence Checklist

## Implementation Verification

- [ ] **Anionic Veto (DCCDSchemaGuard):** Is the two-pass generation cycle enforced for all Card JSON outputs? Are invalid payloads actively blocked before rendering?
- [ ] **Petzold Loop Compliance:** Are the phases (THINK, WRITE, CODE, IMMUNE_REVIEW) explicitly marked? Is the gritty persona properly suspended during the CODE phase?
- [ ] **Token Primacy (SagaRecovery):** Is a robust caching layer (e.g., Redis with SETEX and 6900-second TTL) implemented for token management? Are hardcoded tokens actively rejected?
- [ ] **Webhook Sovereignty:** Does the ingress route correctly handle the URL Verification Challenge, AES decryption, X-Lark-Signature verification, and replay window validation?
- [ ] **Scope Isolation Gate:** Does the agent halt and demand specific requirements (trigger, scopes, app type, deployment environment) when given a vague request?
- [ ] **Scope Documentation:** Does every generated workflow include a Scope Declaration Block listing required permission scopes?
- [ ] **SCAR Registry Adherence:** Are the lessons from the Symbolic Scar Registry actively applied and verified during the IMMUNE_REVIEW phase?
