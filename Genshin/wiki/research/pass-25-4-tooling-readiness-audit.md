# Pass 25.4 — Tooling Readiness Audit

**Date:** 2026-06-25
**Status:** Complete — awaiting human review
**Scope:** _tools/ inventory, safety classification, validator readiness

---

## Tooling Inventory (_tools/ — 24 files)

### Summary

| Classification | Count |
|---|---|
| safe_read_only | 6 |
| probably_safe_read_only | 4 |
| mutating_requires_review | 7 |
| network_fetch_do_not_run | 7 |
| **Total** | **24** |

---

### Full Inventory

| # | File | Ext | Purpose | Read/Mutate | Network | Hardcoded Path | Safety |
|---|---|---|---|---|---|---|---|
| 1 | fetch_characters.ps1 | ps1 | Fetch VI char data from Vercel API → markdown | mutating | yes | yes | network_fetch_do_not_run |
| 2 | fetch_manga.ps1 | ps1 | Fetch manga chapters from wiki → cache | mutating | yes | yes | network_fetch_do_not_run |
| 3 | fetch_weapons.ps1 | ps1 | Fetch weapon DB from Vercel API → profiles | mutating | yes | yes | network_fetch_do_not_run |
| 4 | fetch_artifacts.ps1 | ps1 | Fetch artifact sets from Vercel API → profiles | mutating | yes | yes | network_fetch_do_not_run |
| 5 | fetch_wiki_books.ps1 | ps1 | Fetch books from Fandom wiki → profiles | mutating | yes | yes | network_fetch_do_not_run |
| 6 | fetch_wiki_quests.ps1 | ps1 | Fetch archon quests from Fandom → dialogue | mutating | yes | yes | network_fetch_do_not_run |
| 7 | fetch_wiki_world_quests.ps1 | ps1 | Fetch world quests from Fandom → dialogue | mutating | yes | yes | network_fetch_do_not_run |
| 8 | fix_encoding.ps1 | ps1 | Fix UTF-8 on all .ps1 in _tools/ | mutating | no | yes | mutating_requires_review |
| 9 | fix_intelligence_encoding.py | py | Fix UTF-8 on character_intelligence .md | mutating | no | yes | mutating_requires_review |
| 10 | generate_from_json.ps1 | ps1 | Generate profile templates from JSON | mutating | no | yes | mutating_requires_review |
| 11 | generate_indexes.ps1 | ps1 | Generate central index from entities/quests | mutating | no | yes | mutating_requires_review |
| 12 | generate_manual_profiles.ps1 | ps1 | Generate nation/org/god/dragon profiles | mutating | no | yes | mutating_requires_review |
| 13 | generate_manual_profiles.py | py | Same as above (Python duplicate) | mutating | no | yes | mutating_requires_review |
| 14 | generate_manual_profiles.js | js | Same as above (Node.js duplicate) | mutating | no | yes | mutating_requires_review |
| 15 | list_acts.ps1 | ps1 | List Archon Quest Acts from wiki API | read_only | yes | no | probably_safe_read_only |
| 16 | list_books.ps1 | ps1 | List Book Collections from wiki API | read_only | yes | no | probably_safe_read_only |
| 17 | list_world_quests.ps1 | ps1 | List World Quest Series from wiki API | read_only | yes | no | probably_safe_read_only |
| 18 | test_diag.ps1 | ps1 | Test regex parsing on cached wiki data | read_only | no | yes | probably_safe_read_only |
| 19 | validate_links.ps1 | ps1 | Validate file:/// links across repo .md | read_only | no | yes | safe_read_only |
| 20 | chars.json | json | Character metadata (name, region map) | data | no | no | safe_read_only |
| 21 | profiles_data.json | json | Config for manual profile generation | data | no | no | safe_read_only |
| 22 | package.json | json | Node.js deps (genshin-db v5.0.0) | config | no | no | safe_read_only |
| 23 | requirements.txt | txt | Python deps (requests, bs4, mwparserfromhell, pyyaml) | config | no | no | safe_read_only |
| 24 | test_utf8.json | json | UTF-8 encoding test data | data | no | no | safe_read_only |

---

## Key Observations

1. **7 fetch scripts** contact external APIs (Vercel, Fandom wiki). These must never run in stabilization/audit passes.
2. **7 mutating generators** overwrite local entity/profile files. Require human review before execution.
3. **3 duplicate implementations** of `generate_manual_profiles` (.ps1/.py/.js) — maintenance burden.
4. **validate_links.ps1** is the only existing validator — read-only, safe, but uses hardcoded path.
5. **No existing validators** for source-index integrity, pass count consistency, encoding scan, or claim-map schema.

---

## Verification Checklist

- [x] _tools inventory completed
- [x] hardcoded paths audited
- [x] mutating/network scripts identified
- [x] safe read-only scripts identified
- [x] git hygiene checked without destructive commands
- [x] .gitattributes presence checked
- [x] .editorconfig presence checked
- [x] validator readiness assessed
- [x] Pass 22 counts preserved
- [x] Pass 23+24 counts preserved
- [x] no character pages modified
- [x] no sources/** modified
- [x] no source-index modified
- [x] no new source IDs created
- [x] no external/web/API used
- [x] no source ingestion performed
- [x] no claim mapping performed
- [x] no canon/source-status upgrades
- [x] no line-ending normalization performed
- [x] no destructive git commands run
- [x] no fanfic content added
