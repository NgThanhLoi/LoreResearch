# Entity Shell Audit

Generated: 2026-06-20 — Pass 1 Structural Audit

## Purpose

Audit entities/ and identify empty or template-only entity pages.

## Entity Layer Summary

| Metric | Count | % of total |
| ------ | ----: | ---------: |
| Total entity files | 649 | 100% |
| Markdown entity files | 649 | 100% |
| empty_shell | ~6 | ~1% |
| template_only | ~481 | ~74% |
| partial_summary | ~13 | ~2% |
| source_backed_summary | ~117 | ~18% |
| claim_level_page | ~32 | ~5% |
| unknown | 0 | 0% |

## Entity Shell Table — By Subfolder

### characters/ (119 files) — 95% template_only

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| character (119 files) | template_only (~95%) | No | Medium | no | Metadata + empty sections; regional subfolders (fontaine, mondstadt, etc.) |

Needed source: character_stories/ (missing folder)

### character_intelligence/ (109 files) — 85% source_backed_summary

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| character_intelligence (109 files) | source_backed_summary (~85%) | Partially — mixes canon with interpretation | High | limited_indirect | Psychology profiles for fanfic; not primary source |

Needed source: Must cross-reference with voice_lines/ and character_stories/

### weapons/ (234 files) — 98% template_only

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| weapon (234 files) | template_only (~98%) | No | Low | no | Metadata scaffolding; link to sources/weapon_stories/ for lore |

### artifact_sets/ (61 files) — 100% template_only

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| artifact_set (61 files) | template_only (100%) | No | Low | no | Metadata scaffolding; link to sources/artifact_descriptions/ |

### books/ (70 files) — 95% template_only

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| book (70 files) | template_only (~95%) | No | Low | no | Volume listings + link to sources/book_texts/ |

### historical_figures/ (10 files) — 70% source_backed_summary

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| historical_figure (10 files) | source_backed_summary (~70%) | Partially | Medium | limited_indirect | Vennessa, Alice substantive; Remus template |

### organizations/ (15 files) — 70% source_backed_summary

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| organization (15 files) | source_backed_summary (~70%) | Partially | Medium | limited_indirect | Fatui well-sourced; regional orgs template-only |

### gods_and_archons/ (13 files) — 85% template_only

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| god_archon (13 files) | template_only (~85%) | No (mostly) | High | no (mostly) | Nahida may have content; most are empty shells |

### nations/ (9 files) — 80% claim_level_page

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| nation (9 files) | claim_level_page (~80%) | Yes, with source citations | Medium | yes_with_source | Nod_Krai, Celestia have deep analysis with ⚠️ flags |

### celestial_beings/ (2 files) — 100% claim_level_page

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| celestial_being (2 files) | claim_level_page (100%) | Yes | Medium | yes_with_source | Abyss.md, Primordial_One.md — deep lore analysis |

### dragon_sovereigns/ (5 files) — 60% source_backed_summary

| Entity type | Content status | Source-backed? | Risk level | Can cite? | Notes |
| ----------- | -------------- | -------------- | ---------- | --------- | ----- |
| dragon_sovereign (5 files) | source_backed_summary (~60%) | Partially | Medium | limited_indirect | Overview.md detailed; individual sovereigns mixed |

### Empty Directories

| Directory | Status |
| --------- | ------ |
| entities/items_and_materials/ | Empty — 0 files |
| entities/races/ | Empty — 0 files |

## Critical Groups — Assessment

| Group | Files | Content quality | Can cite? | Risk |
| ----- | ----: | --------------- | --------- | ---- |
| nations | 9 | claim_level_page | yes_with_source | Theory flags present |
| celestial_beings | 2 | claim_level_page | yes_with_source | Complex cosmology |
| character_intelligence | 109 | source_backed_summary | limited_indirect | Mixes canon with interpretation |
| organizations (substantive) | ~10 | source_backed_summary | limited_indirect | Fatui detailed, others sparse |
| historical_figures (substantive) | ~7 | source_backed_summary | limited_indirect | Cross-reference needed |
| dragon_sovereigns | 5 | mixed | limited_indirect | Unverified claims flagged |
| gods_and_archons | 13 | template_only (mostly) | no | Critical gap |
| weapons | 234 | template_only | no | Low risk — just metadata |
| characters | 119 | template_only | no | Medium — need character_stories |

## Entity Shell Rules

- Empty entity page = TODO placeholder. Do NOT cite.
- Template-only entity page = structural metadata. NOT source material.
- Entity summaries without primary references = indirect_source_only.
- Do NOT cite empty entity pages as CANON proof.
- Do NOT auto-fill all 481 template entity shells before project scope is known.
- character_intelligence files are psychology guides, NOT primary sources.
- Nations/celestial_beings files with source citations MAY be cited with verification.
