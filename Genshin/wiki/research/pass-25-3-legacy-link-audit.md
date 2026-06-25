# Pass 25.3 — Legacy Absolute Link Audit

**Date:** 2026-06-25  
**Type:** Report-only audit  
**Scope:** All absolute file:/// and D:\LoreResseach paths in repository

---

## Summary

| Metric | Value |
|--------|-------|
| total_occurrences | 1,454 |
| files_affected | 515 |
| current_wiki_occurrences | 72 (21 files, 1 is this report) |
| legacy_layer_occurrences | 1,382 (494 files) |
| highest_risk_single_file | _Index.md (705 occurrences) |
| recommended_action | targeted_patch_wiki_only_in_future_pass |

---

## Patterns Detected

```text
file:///D:/LoreResseach/Genshin/...
file:///d:/LoreResseach/Genshin/...
D:\LoreResseach\Genshin\...
d:\LoreResseach\Genshin\...
D:/LoreResseach/Genshin/...
```

---

## Breakdown by Top-Level Group

| Group | Files | Occurrences | Classification |
|-------|-------|-------------|----------------|
| _Index.md | 1 | 705 | legacy_generated |
| entities/ | 456 | 462 | legacy_raw_entity |
| quests/ | 28 | 128 | legacy_quest_skeleton |
| foundation/ | 8 | 80 | historical_foundation |
| wiki/ | 21 | 72 | current_governance / current_research |
| topics/ | 1 | 7 | unknown (mixed) |

**Total:** 515 files, 1,454 occurrences

**Note:** _tools/ contains absolute paths in .js/.py scripts but not in .md files; excluded from this audit scope.

---

## Current Wiki Files Affected (21 files)

**Note:** 1 of these (this report) contains absolute paths as documentation examples only.

### wiki/entities/characters/ (1 file)

| File | Occurrences | Severity |
|------|-------------|----------|
| Venti.md | 6 | medium — future patch recommended |

### wiki/synthesis/ (1 file)

| File | Occurrences | Severity |
|------|-------------|----------|
| data-cleaning-roadmap.md | 1 | low — roadmap reference only |

### wiki/research/ (19 files — 18 Nod-Krai reports + this audit)

| File | Occurrences | Severity |
|------|-------------|----------|
| pass-nk-01-nod-krai-structure-audit.md | 8 | low |
| pass-nk-01-nod-krai-source-recon-report.md | 2 | low |
| pass-nk-05-acts-ii-vii-provenance-feasibility.md | 7 | low |
| pass-nk-05-acts-ii-vii-source-search-report.md | 2 | low |
| pass-nk-05-1-source-reclassification-report.md | 1 | low |
| pass-nk-05-1-next-actions.md | 1 | low |
| pass-nk-05-external-source-quality-report.md | 1 | low |
| pass-nk-05-local-ingestion-plan.md | 1 | low |
| pass-nk-05-next-actions.md | 1 | low |
| pass-nk-05-risk-and-quarantine-report.md | 1 | low |
| pass-nk-06-provenance-ingestion-report.md | 7 | low |
| pass-nk-06-created-provenance-files-report.md | 7 | low |
| pass-nk-06-source-index-update-report.md | 1 | low |
| pass-nk-07-page-patch-plan.md | 9 | low |
| pass-nk-07-page-patch-report.md | 9 | low |
| pass-nk-07-next-actions.md | 1 | low |
| pass-nk-07-risk-and-guardrail-report.md | 1 | low |
| review-bundle-nk-06.md | 2 | low |
| pass-25-3-legacy-link-audit.md (this file) | — | n/a (documentation examples) |

**Note:** The wiki/research Nod-Krai files use absolute paths as references to local source files in their audit context. These are low-severity because they are documentation of paths, not navigational links that break portability. Of the 72 total wiki occurrences, ~3 are documentation/example strings in this report; 69 are real legacy path references in current wiki files.

### wiki/entities/characters/Venti.md — Future Patch Recommended

This is the only current wiki entity page affected. A targeted relative-path patch should be applied in a future maintenance pass.

---

## Legacy/Historical Files (494 files)

### _Index.md (1 file, 705 occurrences)

Auto-generated index. Entirely legacy. Not a source of truth.

### entities/ (456 files, 462 occurrences)

Raw entity profiles with ~1 absolute link each (typically a self-reference or cross-link). These are generated/raw layer files. No action needed unless entities are promoted to wiki governance.

### quests/ (28 files, 128 occurrences)

Quest skeleton files with multiple absolute cross-links. Legacy layer. Not evidence unless explicitly validated by current reports.

### foundation/ (8 files, 80 occurrences)

Historical governance templates. Superseded by wiki/synthesis. No action needed.

### topics/ (1 file, 7 occurrences)

Mixed-status topic file. No action needed.

---

## Recommended Actions

| Priority | Action | Target |
|----------|--------|--------|
| 1 (future pass) | Patch Venti.md absolute links to relative | wiki/entities/characters/Venti.md |
| 2 (optional) | Patch data-cleaning-roadmap.md link | wiki/synthesis/data-cleaning-roadmap.md |
| 3 (deferred) | Nod-Krai research links — cosmetic only | wiki/research/pass-nk-* |
| — | No action | _Index.md, entities/, quests/, foundation/ |

**Mass rewrite is NOT recommended.** Legacy layers will retain absolute links as historical artifacts.

---

## Classification Key

| Classification | Description |
|----------------|-------------|
| current_governance | Active wiki governance pages (wiki/synthesis, wiki/entities) |
| current_wiki_entity | Active wiki entity pages |
| current_research | Active research/audit reports |
| legacy_generated | Auto-generated indexes (_Index.md) |
| legacy_raw_entity | Raw entity profiles (entities/) |
| legacy_quest_skeleton | Quest skeleton outlines (quests/) |
| historical_foundation | Early governance templates (foundation/) |
| historical_planning | Early project planning (planning/) |
| source_file | Canonical source material (sources/) |
| tooling | Scripts and tools (_tools/) |
| unknown | Unclassified |
