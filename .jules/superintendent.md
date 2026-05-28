## 2024-05-28 - Root Directory Hygiene

**Instability:** Root directory contains unimported root scripts (`create_cipher_prp.py` and `create_axiom.py`) acting as "hallway trash".
**Fortification:** Swept unimported root scripts into a dedicated `scripts/` directory to enforce root hygiene.
