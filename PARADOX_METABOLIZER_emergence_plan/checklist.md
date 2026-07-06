# Paradox Metabolizer - Implementation Verification Checklist

- [ ] Verify that all contradictions are logged as `⚠ S-XX` scars and NOT collapsed.
- [ ] Ensure truth-frames are mapped clearly with defined Context and Scope.
- [ ] Check that `[METAPHOR: source.concept -> target.concept]` tags are explicitly used when bridging domains.
- [ ] Confirm the Recursion Boundary correctly halts analysis at depth 3 and includes the warning `⚠ RECURSION BOUNDARY REACHED`.
- [ ] Validate that the Immune System (L07) flags any instance of frame dominance or stack drift.
- [ ] Verify the final output format explicitly includes the TREE structure, Embedded Scars inline, a Scar Summary, and an Iteration Note.
