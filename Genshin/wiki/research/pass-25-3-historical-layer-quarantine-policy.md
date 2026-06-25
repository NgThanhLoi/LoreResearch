# Pass 25.3 — Historical Layer Quarantine Policy

**Date:** 2026-06-25  
**Type:** Policy / Governance document  
**Scope:** Defines which repository layers are current authority vs historical/legacy reference

---

## Purpose

This document establishes clear separation between current source-of-truth layers and historical/legacy/generated layers. Future agents and passes must not treat legacy files as current pass state or primary source evidence.

---

## Current Source of Truth

These are the authoritative planning and status documents:

| File | Role |
|------|------|
| wiki/research/pass-25-pass-status-matrix.md | Pass progression status (Pass 11–25) |
| wiki/research/pass-25-next-actions.md | Recommended next actions |
| wiki/research/pass-25-dedup-page-status-cleanup-report.md | Pass 25 dedup/cleanup report |
| wiki/research/pass-25-1-current-source-of-truth.md | Source-of-truth declaration |
| wiki/research/pass-25-2-source-registry-integrity-report.md | Source registry audit |
| wiki/research/pass-25-3-* (this pass) | Layer quarantine and link/encoding audit |
| wiki/log.md (latest Pass 25+ entries) | Change audit trail |

**Note:** `project-state-*.md` files are SUPERSEDED HISTORICAL SNAPSHOTS (marked by Pass 25.1). They must NOT appear in this table.

---

## Current Wiki / Governance Layer

| Path | Role | Allowed Use |
|------|------|-------------|
| wiki/ | Root of LLM knowledge base | Primary reference for all governance |
| wiki/entities/ | 118 audited entity pages | Canonical entity profiles |
| wiki/synthesis/ | Lore OS (canon, power, timeline, style, QA) | Policy and rules |
| wiki/sources/ | Source registry and governance | Source tracking |
| wiki/workflows/ | Operation procedures | Agent guidance |
| wiki/research/pass-25* and later | Current audit trail | Status and findings |
| wiki/research/pass-nk-* | Nod-Krai sub-passes | Completed research |
| wiki/research/pass-22-* | Pass 22 provenance reports | Preserved findings |
| wiki/research/pass-23-24-* | Pass 23+24 source prep | Preserved findings |

---

## Raw / Source Layer

| Path | Role | Allowed Use | Disallowed Use |
|------|------|-------------|----------------|
| sources/** | Canonical evidence files | Primary source for claim verification | Never treat folder path alone as proof |
| sources/voice_lines/ | Character and quest dialogue | Quote-level evidence | — |
| sources/voice_lines/archon_quests/ | Archon quest dialogue transcripts | Quote-level evidence | — |
| sources/voice_lines/world_quests/ | World quest dialogue transcripts | Quote-level evidence | — |
| sources/voice_lines/characters/ | Character voice-line transcripts | Quote-level evidence | — |
| sources/book_texts/ | In-game book content | Quote-level evidence | — |
| sources/artifact_descriptions/ | Artifact lore text | Quote-level evidence | — |
| sources/weapon_stories/ | Weapon lore text | Quote-level evidence | — |
| sources/character_stories/ | Character story text | Quote-level evidence | — |
| sources/manga_transcripts/ | Manga transcript text | Quote-level evidence | — |

**Critical rule:** Only actual file content constitutes evidence. A folder path or file name alone is never proof of a claim.

---

## Raw / Generated Entity Layer

| Path | Role | Allowed Use | Disallowed Use |
|------|------|-------------|----------------|
| entities/** | 649 raw entity profiles | Indirect guidance for wiki page creation | Never cite as primary source |
| entities/character_intelligence/ | AI-generated character analysis (109 files) | Reference for audit; identify claims to verify | Never use as canon without source backing |
| entities/characters/ | Raw character data | Cross-reference only | Not primary evidence |
| entities/weapons/ | Raw weapon profiles | Cross-reference only | Not primary evidence |
| entities/artifact_sets/ | Raw artifact profiles | Cross-reference only | Not primary evidence |
| entities/books/ | Raw book profiles | Cross-reference only | Not primary evidence |
| entities/organizations/ | Raw org profiles | Cross-reference only | Not primary evidence |

**Critical rule:** `character_intelligence` is not primary source. `STRONGLY IMPLIED` cannot be based on character_intelligence alone.

---

## Historical / Planning Layer

| Path | Role | Current Status |
|------|------|----------------|
| foundation/** (20 files) | Early governance templates | **HISTORICAL** — superseded by wiki/synthesis |
| planning/** (14 files) | Early project planning | **HISTORICAL** — superseded by wiki/research |
| _Index.md | Auto-generated master index | **LEGACY GENERATED** — not source of truth |
| project-state-*.md (old, pre-25.1) | Pre-Pass-25.1 status snapshots | **SUPERSEDED** — see Pass 25.1 supersession map |
| CHANGE_LOG.md | Historical change log | **HISTORICAL** |
| PATCH_VALIDATION_REPORT.md | Legacy patch report | **HISTORICAL** |
| RELIABILITY_SUMMARY.md | Legacy reliability summary | **HISTORICAL** |
| REMAINING_OPEN_ISSUES.md | Legacy issues register | **HISTORICAL** |

**Critical rule:** These files must not be used for current planning or cited as current status. They are preserved for archaeological reference only.

---

## Quest Skeleton Layer

| Path | Role | Allowed Use | Disallowed Use |
|------|------|-------------|----------------|
| quests/** (28 files) | Quest structure outlines | Historical reference for quest structure | Never treat as evidence of dialogue or lore claims |
| quests/archon_quests/ | Archon quest skeletons | Structure reference only | Not source unless validated by current reports |
| quests/world_quests/ | World quest skeletons | Structure reference only | Not source unless validated by current reports |

**Critical rule:** Quest skeletons are NOT evidence unless a current report explicitly validates a specific file's content against primary sources.

---

## Infrastructure / Tooling Layer

| Path | Role | Status |
|------|------|--------|
| _data/ | Metadata storage | Infrastructure — not lore content |
| _tools/ | Scripts and generators | Infrastructure — not lore content |
| scratch/ | Temporary work | ARCHIVED — no governance value |
| topics/ | Topic discussions | MIXED — some referenced by current reports |

---

## Verification Checklist

- [x] legacy absolute links audited
- [x] encoding/mojibake risks audited
- [x] current source-of-truth restated
- [x] current vs legacy layers separated
- [x] raw sources distinguished from folder paths
- [x] quest skeletons marked not evidence unless validated by current reports
- [x] old project-state files remain superseded/historical
- [x] Pass 22 counts preserved (32 / 15 / 9)
- [x] Pass 23+24 counts preserved (97 / 73 / 29 / 58)
- [x] no mass rewrite performed
- [x] no character pages modified
- [x] no sources/** modified
- [x] no source-index modified
- [x] no new source IDs created
- [x] no external/web/API used
- [x] no source ingestion performed
- [x] no claim mapping performed
- [x] no canon/source-status upgrades
- [x] no fanfic content added

---

## Preserved Pass Counts

### Pass 22

| Metric | Value | Verified |
|--------|-------|----------|
| total claim clusters | 32 | ✅ |
| evidence_packet_created | 15 | ✅ |
| still_blocked | 9 | ✅ |

### Pass 23+24

| Metric | Value | Verified |
|--------|-------|----------|
| Pass 23 candidate rows | 97 | ✅ |
| Pass 24 detailed inventory rows | 73 | ✅ |
| Pass 24 source package rows | 29 | ✅ |
| source gaps | 58 | ✅ |

No discrepancies found.
