# Workspace Map

Generated: 2026-06-20 — Pass 1 Structural Audit

## Root Folder Overview

| Path | Exists? | File count | Markdown count | Role | Trust level | Notes |
| ---- | ------- | ---------: | -------------: | ---- | ----------- | ----- |
| _data/ | Yes | 369 | 0 | data | tooling_only | knowledge_graph.json + wiki_cache (368 JSON book texts in en/vi) |
| _tools/ | Yes | 24 | 0 | tooling | tooling_only | PS1 scripts, JS/PY generators, fetch utilities |
| entities/ | Yes | 649 | 649 | entity_shell / partial_summary | indirect_summary | ~74% template_only; rich content in nations, celestial_beings, character_intelligence |
| foundation/ | Yes | 17 | 17 | foundation_governance | historical_only | Governance docs, canon rules, templates. No canon claims. |
| planning/ | Yes | 10 | 10 | historical_planning | historical_only | Archived brainstorming/premise files. Not authoritative. |
| quests/ | Yes | 56 | 56 | quest_skeleton | untrusted_scratch | 100% empty skeletons or outline-only. Zero raw dialogue. |
| scratch/ | Yes | 10 | 0 | scratch | untrusted_scratch | PS1 utility scripts for data searching |
| sources/ | Yes | 612 | 612 | raw_source | high_source | Weapon stories, artifacts, books, voice lines, manga. All source-rich. |
| topics/ | Yes | 9 | 9 | topic_summary | indirect_summary | Nod-Krai analysis (7) + relationship graphs (2). Theory risk present. |
| wiki/ | Yes | 73 | 73 | wiki_governance / audited_wiki_page | audited_governance | Governance, character pages, synthesis registers, workflows |

## Root Reports

| File | Exists? | Role | Use | Trust level | Notes |
| ---- | ------- | ---- | --- | ----------- | ----- |
| _index.md | Yes | source_index | Master TOC linking all entities | indirect_summary | ~713 lines, Vietnamese, links to entities/sources |
| CHANGE_LOG.md | Yes | report | Audit correction log (30 modifications) | audited_governance | Documents Nibelung/Ianikuinen fixes, tag additions |
| PATCH_VALIDATION_REPORT.md | Yes | report | Post-correction verification | audited_governance | 20/26 fixes confirmed, no new contradictions |
| RELIABILITY_SUMMARY.md | Yes | report | Layer reliability scores | audited_governance | Overall grade B- (72/100), source layer 90-95% |
| REMAINING_OPEN_ISSUES.md | Yes | report | 37 unresolved issues | audited_governance | 4 blocking, 23 important, 5 low-priority |

## Recommended Read Order For Future Agents

1. **Wiki governance** — wiki/README.md, wiki/SCHEMA.md, wiki/log.md
2. **Root reliability reports** — RELIABILITY_SUMMARY.md, REMAINING_OPEN_ISSUES.md, PATCH_VALIDATION_REPORT.md
3. **Source layer** — sources/ (high trust, primary material)
4. **Wiki synthesis** — wiki/synthesis/ (contradiction register, unverified lore, OOC index)
5. **Entities/topics/quests** — only after classification; treat as indirect unless source-backed
6. **Planning/foundation** — as historical context only; not canon source
