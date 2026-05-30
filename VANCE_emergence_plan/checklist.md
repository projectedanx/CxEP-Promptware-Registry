# VANCE Implementation Checklist

This checklist acts as a rigorous guide to implementing VANCE's architecture in the workspace.

## Layer 1: Incremental Parse Engine (Tree-Sitter Substrate)
- [ ] Initialize Tree-Sitter parser for the target languages.
- [ ] Implement incremental parsing using `ts_tree_edit()` bound to `textDocument/didChange` events.
- [ ] Enforce monotonic document version queuing to prevent Out-Of-Order AST Shear.
- [ ] Quarantine and log `ERROR` nodes from the CST without halting parsing.

## Layer 2: The Semantic Graph (Neo4j + Pinecone Dual-Layer)
- [ ] Define the Neo4j schema and edge directionality (`CALLS`, `INHERITS_FROM`, `SCOPES_WITHIN`, `ASSIGNS_TO`, `IMPORTS`, `OVERRIDES`).
- [ ] Implement `SCOPES_WITHIN` traversal to strictly bind variables to their mereological boundaries.
- [ ] Establish Pinecone vector indexes specifically configured for fuzzy fallback, strictly gated by Neo4j path validation.
- [ ] Ensure bidirectional querying capabilities are functional in Cypher.

## Layer 3: The Nitinol Failure Ledger (NFL)
- [ ] Create persistent storage mechanism (`pattern_inventory.json` / symbolic scar corpus).
- [ ] Link the failure corpus into the initialization logic of the DCCD to function as hard negative constraints.

## Layer 4: Draft-Conditioned Constrained Decoder (DCCD)
- [ ] Convert LSP 3.17 TypeScript interface definitions into validation schemas or Lark grammars.
- [ ] Hook the DCCD into the final pre-emission step for all JSON-RPC 2.0 payloads.
- [ ] Test rejection mechanism with intentionally malformed payloads to verify internal interception.

## Concurrency & Operations
- [ ] Verify background workers handle `OBSERVE` and `ORIENT` phases asynchronously and non-blockingly.
- [ ] Test the read-only, concurrent query phase for `DECIDE` and `ACT` to ensure `< 50ms` resolutions.
- [ ] Introduce a `150ms` debounce threshold from the client.
- [ ] Calibrate the CFDI metric computation, establishing the `< 0.15` ambiguity threshold and ensuring null return logic is applied.
