# LoreResearch Current Project State Report

> [!IMPORTANT]
> SUPERSEDED HISTORICAL SNAPSHOT — This file is not the current project state.
> Current source of truth after Pass 25:
> - `wiki/research/pass-25-pass-status-matrix.md`
> - `wiki/research/pass-25-next-actions.md`
> - `wiki/research/pass-25-dedup-page-status-cleanup-report.md`
>
> Any statements in this file that say Pass 19+, Pass 20+, Pass 21+, Pass 22+, Pass 23+, or later passes are `NOT STARTED` are stale and must not be used for current planning.

> **Audit type:** Report-only project state audit
> **Date:** 2026-06-24
> **Auditor:** Hermes Agent
> **Source basis:** wiki/log.md, wiki/SCHEMA.md, wiki/index.md, wiki/README.md, report files in wiki/research/, governance files in wiki/synthesis/, entity files in wiki/entities/characters/

---

## Executive Summary

The LoreResearch / Genshin Markdown LLM Wiki is a knowledge base for Genshin Impact fanfiction, organized as a Karpathy-style LLM-readable wiki. It has undergone extensive structural setup (Wiki Pass 1–2.1), Phase 3 character OOC audits (13 characters completed, 2 blocked), source ingestion framework and VLAQ deep-read passes (Pass 1–10), a Full Character Coverage Plan (Pass 11), Character Template v2 (Pass 12), and most recently a regional Character Foundation Batch pipeline (Pass 13–18.2) that created 99 Level 2 foundation pages across all 7 game regions.

**The project is currently at a clean stopping point.** The regional character foundation batch pipeline (Mondstadt → Liyue → Inazuma → Sumeru → Fontaine → Natlan) is complete through Pass 18.2 (Natlan scope+consistency patch). The Nod-Krai branch work (NK-01 through NK-07) is complete. However, **Pass 19 (Cross-Faction Source-Light Batch) was never started.** There are no Pass 19–22 files anywhere in the repository. The log ends at Pass 18.2 with the next recommended step being "Pass 19 — Cross-Faction Source-Light Batch".

---

## Current Accepted State

### Fully Accepted (no pending patches)

| Area | Status | Passes | Notes |
| --- | --- | --- | --- |
| Wiki structure & schema | ✅ Complete | Setup, Pass 2, 2.1 | SCHEMA.md, index.md, log.md, README.md stable |
| Source framework | ✅ Complete | Pass 2, 2.1, 3 | SOURCE_ID_RULES.md, EXTERNAL_SOURCE_POLICY.md, SOURCE_TEMPLATE.md, source-index.md |
| Phase 3 character OOC audits | ✅ Complete (13 chars) | Phase 3.0–3.2.1 | Kaeya, Diluc, Zhongli, Lisa, Jean, Albedo, Klee, Neuvillette, Furina, Columbina, Kẻ Lang Thang, Aether, Lumine, Arlecchino, Tartaglia, Venti, Nahida, Raiden Shogun = 18 audited (Phase 3.2 Final says 13 completed, Dottore/Sandrone blocked) |
| VLAQ deep-read | ✅ Complete | Pass 4–10 | CLM-014 through CLM-018 verified with direct evidence |
| Full Character Coverage Plan | ✅ Complete | Pass 11 | Character tier map, source gap map, batch roadmap |
| Character Template v2 | ✅ Complete | Pass 12 | Template with standard/source-light/blocked variants |
| Nod-Krai branch | ✅ Complete (7 sub-passes) | NK-01 through NK-07 | Source recon, provenance indexing, governance notes, character inventory, deep-read, evidence extraction |
| **Regional Foundation (Mondstadt)** | **✅ Complete** | **Pass 13** | 11 new + 7 preserved = 18 Mondstadt characters |
| **Regional Foundation (Liyue)** | **✅ Complete** | **Pass 14** | 20 new + 1 preserved = 21 Liyue characters |
| **Regional Foundation (Inazuma)** | **✅ Complete** | **Pass 15** | 15 new + 1 preserved = 16 Inazuma characters |
| **Regional Foundation (Sumeru)** | **✅ Complete** | **Pass 16** | 12 new + 2 preserved = 14 Sumeru characters |
| **Regional Foundation (Fontaine)** | **✅ Complete** | **Pass 17** | 10 new + 2 preserved = 12 Fontaine characters |
| **Regional Foundation (Natlan)** | **✅ Complete (with patches)** | **Pass 18, 18.1, 18.2** | 8 new + 3 skipped = 11 Natlan candidates |

### Notable Patch History

| Pass | Issue | Fix |
| --- | --- | --- |
| Pass 4 → 4.1 | Overconfident coverage labels | Downgraded uninspected files; added strict source_status |
| Pass 5 → 6 | Partial VLAQ claims → human review | Source-status upgrades applied to character pages |
| Pass 8 → 8.1 | Kaeya character story hardening | Converted to provenance record per EXTERNAL_SOURCE_POLICY |
| Pass 18 → 18.1 | Legacy sections instead of template v2; Mavuika overclaims | 8 pages rewritten; memory imports removed; Gnosis downgraded |
| Pass 18 → 18.2 | Capitano wrongly in scope; wrong paths; Canon Identity table schema | Fixed scope, paths, and table format |
| NK-05 → NK-05.1 | Misclassified official quest pages as fanon | Reclassified to AQ-NK-ACT* provenance candidates |
| NK-05.1 → NK-05.1a | Metadata typos; wording too confident | Corrected revision IDs; strict safety statuses enforced |

---

## Active / Not-Yet-Accepted Work

### Pass 19 — Cross-Faction Source-Light Batch
- **Status:** NOT STARTED
- **Scope per Pass 18 next-actions:** Dottore, Sandrone, Columbina, Skirk, Nicole, Varka, Nod-Krai source-light characters
- **Blocking issue:** No log entry, no research files created
- **Current state of target characters:** Dottore=blocked_by_missing_source, Sandrone=blocked_by_missing_source, Columbina=audited_source_light, Skirk=source_missing, Nicole=needs_ooc_audit, Varka=needs_ooc_audit

### Pass 19.5 — Source-Missing Character Resolution Plan
- **Status:** NOT STARTED (no files exist)

### Pass 20 — High-Risk Source Package Feasibility / Provenance Batch A
- **Status:** NOT STARTED (no files exist)

### Pass 21 — High-Risk Source Package Feasibility / Provenance Batch B
- **Status:** NOT STARTED (no files exist)

### Pass 22 — Quest Dialogue Provenance Batch A
- **Status:** NOT STARTED (no files exist)

### Pass 23+ (Character-Story Ingestion, Claim Mapping)
- **Status:** NOT STARTED (deferred to Pass 20+ / Pass 26+ per roadmap)

---

## Repo Structure Overview

```
~/projects/LoreResearch/Genshin/
├── _data/                    # Wiki cache data
├── _tools/                   # Tooling scripts
├── entities/                 # Non-wiki entity directory
│   ├── artifact_sets/
│   ├── books/
│   ├── celestial_beings/
│   ├── character_intelligence/    # 109 files (pre-audit OOC analysis)
│   ├── characters/                # Empty (all in wiki now)
│   ├── dragon_sovereigns/
│   ├── gods_and_archons/
│   ├── historical_figures/
│   ├── nations/
│   ├── organizations/
│   └── weapons/                   # 227 weapon pages
├── foundation/               # Historical planning (legacy)
├── planning/                 # Historical planning (legacy)
├── quests/                   # 56 empty quest skeleton files (100% unusable)
├── scratch/                  # Scratch/temp area
├── sources/                  # 620 raw source files
│   ├── artifact_descriptions/     # 61 files
│   ├── book_texts/                # 79 files (incl. nod-krai/)
│   ├── character_stories/         # 1 file (Kaeya provenance only)
│   ├── manga_transcripts/         # 21 files
│   ├── provenance/                # 7 NK act provenance records
│   ├── voice_lines/
│   │   ├── archon_quests/         # 124 files across 34 arcs
│   │   ├── characters/            # 96 character voice files
│   │   └── world_quests/          # 4 files
│   └── weapon_stories/            # 227 files
├── topics/                   # Topic analysis (theory-heavy)
│   ├── nod-krai/
│   └── relationships/
└── wiki/                     # The LLM Wiki (317 files)
    ├── index.md
    ├── SCHEMA.md
    ├── README.md
    ├── log.md                     # 1713 lines
    ├── entities/
    │   └── characters/            # 99 character pages + templates
    ├── projects/                  # Project templates
    ├── research/                  # 156 research reports
    ├── sources/                   # Source index & governance
    ├── synthesis/                 # 14 governance files
    └── workflows/                 # Workflow procedures
```

**Total repo files:** 2,086

---

## Pass Pipeline Overview

See `project-state-pass-status-matrix.md` for the full pass matrix.

**Total passes documented in log:** ~40 (counting sub-passes)
**Accepted passes:** All passes 1–18.2, NK-01–NK-07
**Patched passes:** Pass 4→4.1, 18→18.1→18.2, NK-05→NK-05.1→NK-05.1a, and others
**Not started:** Pass 19, 19.5, 20, 21, 22

---

## Character Coverage Overview

See `project-state-character-coverage-summary.md` for the full table.

**Summary:**
- 99 character pages in wiki/entities/characters (all Level 2 foundation or higher)
- 112 character entries in character-inventory.md (including Nod-Krai/background)
- ~13 inventory-only characters without wiki pages (Nod-Krai/background characters)
- 18 characters with Phase 3.2 OOC Audit (Level 2+)
- 81 characters with Pass 13–18 foundation pages (Level 2)
- 96 voice-line files available for playable characters
- 16 characters with source_missing voice lines or source files

---

## Source Governance Overview

See `project-state-source-governance-summary.md` for details.

**Key points:**
- source-index.md has folder-level IDs (9) + file-level IDs (30+) + VLAQ candidates (11) + NK provenance candidates (7)
- Source IDs use strict naming rules (VL, VLAQ, VLWQ, CS, AQ, BK, WS, AR, MG, etc.)
- Source IDs were created during passes 2–6 and NK-02/NK-06
- Pass 13–18.2 explicitly confirmed NO source-index changes
- External source policy enforces 5-tier classification (A=official through E=leak)
- EXTERNAL_SOURCE_POLICY prohibits pasting long copyrighted dialogue
- Source doctrine principles (Không source thì không canon) are well documented

---

## Source-Missing / Blocked Overview

See `project-state-source-missing-and-risk-register.md` for the full register.

**Critical blocked characters (3):**
1. **Dottore** — blocked_by_missing_source (no voice lines, no character stories, no intelligence file in workspace)
2. **Sandrone** — blocked_by_missing_source (same situation)
3. **Skirk** — source_missing (brief intro only in VLAQ, no dedicated source)

**Source-light characters (2):**
1. **Columbina** — audited_source_light (voice lines missing, identity claims guarded)
2. **Nicole** — needs_ooc_audit (voice lines missing)

**Nod-Krai characters without wiki pages (12+):**
Aino, Flins, Illuga, Ineffa, Jahoda, Lauma, Linnea, Nefer, Nicole, Prune, Varka, Zibai

**Blocked High-Risk Claim Clusters:**
- Dottore creates False Moon God (evidence_found_guarded)
- Columbina = Kuutar (evidence_found_guarded)
- Sandrone = Rotwang link (evidence_found_guarded)
- True Welkin Moon (evidence_found_guarded)
- Tri-Lunar Authority (evidence_found_guarded)
- Snezhnaya Acts II–VII plot details (evidence_found_guarded, not locally ingested)
- Gnosis as shackles (keep_theory / indirect_source_only)
- Third Descender identity (unresolved / needs later quests)
- Mavuika/Natlan deep mechanics (source_missing / partial_support_only)

---

## High-Risk Claim Overview

Per `wiki/synthesis/unverified-lore-register.md` and NK-07 evidence:

| Claim Cluster | Characters | Status | Support State |
| --- | --- | --- | --- |
| Fatui/Harbinger identity | Dottore, Columbina, Sandrone, Pierro | evidence_found_guarded | NK-07 deep-read found Nod-Krai evidence but kept guarded |
| Abyss/Khaenri'ah/Descender | Aether, Lumine, Skirk, Dainsleif | partial_support_only | Third Descender ordinal not confirmed |
| Hexenzirkel | Nicole, Alice, etc. | source_missing | No local sources |
| Moon/False Sky/Nod-Krai | Multiple | evidence_found_guarded | NK-07 evidence exists but not locally ingested |
| Natlan mechanics | Mavuika, etc. | source_missing | Character stories missing; voice lines only cover basic identity |
| Traveler/Lumine/Aether | Both | partial_support_only | CON-0015 guards sibling role confusion |
| Paimon identity | Paimon | source_missing | No dedicated source |
| Power scaling | Various | guarded | Power-system-governance.md has claim-level rules |

---

## Current QA Findings

See `project-state-qa-findings.md` for the full audit.

**Key findings:**
- ✅ No character pages modified during this audit
- ✅ No source files modified
- ✅ source-index.md not modified
- ✅ No source IDs created
- ✅ No external/web/API used
- ✅ No source ingestion
- ✅ No claim mapping
- ✅ No canon upgrades
- ⚠️ **Pass 19–22 do not exist** — the project is blocked at a transition point
- ⚠️ **Inventory counts mismatch** — character-inventory.md lists 112 entries but inventory header says "109 playable characters" — the true count depends on how Nod-Krai NPCs are counted
- ⚠️ **Log.md applies NK-05.1a timestamp of 2026-06-21 for NK-06/NK-07 entries** — timeline check needed for temporal ordering

---

## Immediate Risks

1. **Stalled pipeline:** Pass 19 (cross-faction source-light batch) was the intended next step and has never been started. Without it, blocked characters Dottore, Sandrone, and source-light Columbina/Skirk/Nicole/Varka remain unusable for canon-compliant work.
2. **Character-story provenance gap:** All 99 character pages (except Kaeya) have missing character-story provenance. Backstory, relationship, and major lore claims remain guarded/source_missing.
3. **Quest layer entirely empty:** 56 quest skeleton files have zero usable content.
4. **Nod-Krai Acts II–VII not locally ingested:** Revision-pinned provenance records exist but full dialogue is not locally available.
5. **Character intelligence unlabelled headcanon:** ~40+ files still contain unlabeled speculative psychology.
6. **No premise/outline chosen:** Project remains premise-free as designed.

---

## Recommended Next Steps

1. **Pass 19 — Cross-Faction Source-Light Batch:** Create Level 2 governance/source-light pages for Dottore, Sandrone, Columbina (update existing), Skirk, Nicole, Varka, and document all cross-faction source-missing candidates.
2. **Pass 19.5 — Source-Missing Resolution Plan:** Formal priority ingestion queue for blocked characters.
3. **Pass 20+/26+:** Character-story provenance ingestion and claim mapping (long deferred).
4. **Consider project direction:** The pipeline is cleanly at a branch point — either (a) start ingestion/claim mapping for blocked characters, or (b) begin fanfic premise/outline planning if desired.

---

## Files Created By This Audit

- wiki/research/project-state-loreresearch-current-report.md
- wiki/research/project-state-pass-status-matrix.md
- wiki/research/project-state-character-coverage-summary.md
- wiki/research/project-state-source-governance-summary.md
- wiki/research/project-state-source-missing-and-risk-register.md
- wiki/research/project-state-next-actions.md
- wiki/research/project-state-file-inventory.md (optional)
- wiki/research/project-state-qa-findings.md (optional)
