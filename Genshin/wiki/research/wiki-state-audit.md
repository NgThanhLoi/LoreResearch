# Wiki State Audit

Generated: 2026-06-20 — Pass 1 Structural Audit

## Purpose

Audit current wiki/ state and summarize what is already governed vs what is still weak.

## Wiki Governance Files

| File | Exists? | Role | Current state | Notes |
| ---- | ------- | ---- | ------------- | ----- |
| wiki/README.md | Yes | wiki_governance | Active — defines core principles, folder structure, LLM usage workflow | Vietnamese; source-first ethos |
| wiki/SCHEMA.md | Yes | wiki_governance | Active — frontmatter schema, reliability labels, claim format | Defines CANON/STRONGLY IMPLIED/THEORY/HEADCANON/AU/UNVERIFIED/ERROR |
| wiki/log.md | Yes | wiki_governance | Active — 359 lines of maintenance history | Tracks 13+ passes from initial setup through Phase 3.2 |
| wiki/sources/source-index.md | Yes | source_index | Active — maps Source IDs to files | Notes missing quest_dialogue and official folders |
| wiki/synthesis/unverified-lore-register.md | Yes | wiki_governance | Active — 14 high-risk entries | Columbina=Kuutar, Dottore moon, Nod-Krai, Gnosis shackles |
| wiki/synthesis/contradiction-register.md | Yes | wiki_governance | Active — 15 registered contradictions | Ianikuinen/Nibelung resolved; Nod-Krai unresolved |
| wiki/synthesis/power-system-governance.md | Yes | wiki_governance | Active — power safety rules | 13+ power types governed with fanfic constraints |
| wiki/synthesis/headcanon-fanon-policy.md | Yes | wiki_governance | Active — 16 character headcanon entries | Safe/banned uses per character + genre adapters |
| wiki/synthesis/ooc-risk-index.md | Yes | wiki_governance | Active — 40+ OOC pitfalls | Severity ratings, banned uses, cross-references |
| wiki/synthesis/character-audit-backlog.md | Yes | wiki_governance | Active — 109 characters tracked | Phase 3.0–3.4 plan; 13 audited, 2 blocked, 94+ pending |
| wiki/entities/characters/character-inventory.md | Yes | wiki_governance | Active — full inventory table | Status per character: audited/source_light/blocked/inventory_only |

**All 11 governance files exist and are active.**

## Character Wiki State

### Audited Characters (Level 2 OOC Risk Audit)

Based on wiki/log.md and character-inventory.md:

| Character | Status | Source level | Notes |
| --------- | ------ | ------------ | ----- |
| Kaeya | audited | voice_lines available | Phase 3.1 batch |
| Diluc | audited | voice_lines available | Phase 3.1 batch |
| Zhongli | audited | voice_lines available | Phase 3.1 batch |
| Lisa | audited | voice_lines available | Phase 3.1 batch |
| Jean | audited | voice_lines available | Phase 3.1 batch |
| Albedo | audited | voice_lines available | Phase 3.2 batch |
| Klee | audited | voice_lines available | Phase 3.2 batch |
| Neuvillette | audited | voice_lines available | Phase 3.2 batch |
| Furina | audited | voice_lines available | Phase 3.2 batch |
| Wanderer | audited | voice_lines available | Phase 3.2 batch |
| Aether | audited | voice_lines available | Phase 3.2 batch |
| Lumine | audited | voice_lines available | Phase 3.2 batch |
| Nahida | audited | voice_lines available | Phase 3.2 batch |
| Raiden Shogun | audited | voice_lines available | Phase 3.2 batch |
| Arlecchino | audited | voice_lines available | Phase 3.2 batch |
| Tartaglia | audited | voice_lines available | Phase 3.2 batch |
| Venti | audited | voice_lines available | Phase 3.2 batch |
| Columbina | audited_source_light | limited sources | Phase 3.2 — source gaps noted |

### Blocked Characters

| Character | Status | Reason |
| --------- | ------ | ------ |
| Dottore | blocked_by_missing_source | No primary sources available |
| Sandrone | blocked_by_missing_source | No primary sources available |

### Remaining Characters

- ~94 characters at Level 1 (inventory_only)
- Awaiting Phase 3.3 (region/faction batches) and Phase 3.4 (low-risk cleanup)
- Not prioritized until project scope is locked

## Current Do-Not-Upgrade Items

Per unverified-lore-register.md and contradiction-register.md:

| Item | Current label | Reason | Allowed use |
| ---- | ------------- | ------ | ----------- |
| Dottore (all claims) | blocked | No primary sources | Cannot audit further |
| Sandrone (all claims) | blocked | No primary sources | Cannot audit further |
| Columbina = Kuutar | THEORY / STRONGLY IMPLIED | No direct confirmation | Rumor/belief only in fanfic |
| Nod-Krai Acts II–VII (all) | UNVERIFIED | Source files missing | AU only |
| Gnosis as shackles | THEORY | No direct confirmation | Character belief only |
| Vision surveillance | THEORY | Not confirmed in-game | Do not state as fact |
| Celestia prison | THEORY | Not directly shown | Do not state as fact |
| Dottore false moon god | THEORY | Speculative interpretation | AU only |
| Source-light power claims | various | Indirect evidence only | Must not power-scale |

## Wiki Structural Completeness

| Component | Status | Completeness |
| --------- | ------ | ------------ |
| Governance (README, SCHEMA) | ✓ Complete | Fully operational |
| Source index | ✓ Active | Documents known gaps |
| Contradiction register | ✓ Active | 15 entries, mix of resolved/unresolved |
| Unverified lore register | ✓ Active | 14 entries governing theory use |
| Power system governance | ✓ Active | 13+ power types with rules |
| Headcanon/fanon policy | ✓ Active | 16 character entries + genre rules |
| OOC risk index | ✓ Active | 40+ pitfalls documented |
| Character audit backlog | ✓ Active | Full 109-character tracker |
| Character pages | Partial | 18 audited / 2 blocked / 94+ pending |
| Source layer | Strong but gapped | 612 files; missing character_stories, world quests |
| Quest layer | ✗ Empty | 0 usable quest files |
| Entity layer | Mostly shells | 74% template-only |
