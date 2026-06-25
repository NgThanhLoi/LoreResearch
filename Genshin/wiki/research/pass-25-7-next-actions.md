# Pass 25.7 — Next Actions

**Date:** 2026-06-25

---

## Immediate recommended next

**Pass 25.7.1 — genshin-langdata Local Data Provision / Alias Import Patch**

Pass 25.7 completed in deferred mode because genshin-langdata is not locally available. The next step must provide the data before the alias index can be built.

---

## Pass 25.7.1 requirements

1. **Clone or download** genshin-langdata from `github.com/xicri/genshin-langdata`
2. **Place raw files** at `_data/external/alias_reference/genshin-langdata/raw/`
3. **Verify license** — check repo LICENSE file, document in manifest
4. **Record commit hash** — populate `upstream_commit_or_version` in manifest.json
5. **Compute checksums** — SHA-256 for each imported file
6. **Apply controlled subset selection** from `pass-25-7-controlled-subset-selection.md`
7. **Build actual indexes:**
   - `_data/indexes/alias_index.json`
   - `_data/indexes/entity_name_map.json`
   - `_data/indexes/term_multilang_map.json`
8. **Run alias conflict analysis** — populate `pass-25-7-alias-conflict-report.md`
9. **Complete Nod-Krai verification** — populate `pass-25-7-nod-krai-name-verification-report.md`
10. **Re-run validators** — `check_alias_index.py` should validate actual data

---

## Human action required

The human must either:

- **Option A:** Approve network retrieval — allow a `git clone` of genshin-langdata
- **Option B:** Manually place the data — clone the repo externally and copy files to the expected path

Until one of these happens, the alias index remains in schema-only state.

---

## Later passes (unchanged from Pass 25.6)

| Pass | Focus | Depends on |
|------|-------|-----------|
| Pass 25.7.1 | genshin-langdata Local Data Provision | Human approval |
| Pass 25.8 | Graph Reference Controlled Import | Pass 25.7.1 complete |
| Pass 25.9 | External Reference Validator / Guardrail Patch | Pass 25.8 |
| Pass 26 | Priority Claim Mapping Batch A | Pass 25.9 |

---

## Do NOT proceed to Pass 26 until

- Pass 25.7.1 (alias index) is complete
- Pass 25.8 (graph reference) is complete
- Pass 25.9 (validators) is complete

Unless human explicitly chooses a fast-track shortcut.
