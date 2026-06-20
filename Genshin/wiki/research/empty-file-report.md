# Empty / Template File Report

Generated: 2026-06-20 — Pass 1 Structural Audit

## Summary

| Metric | Count |
| ------ | ----: |
| Total scanned markdown files | 1,417 |
| Empty files (0 content or title-only) | ~6 |
| Template-only files (placeholder structure, no lore) | ~493 |
| Skeleton files (quest outlines with no dialogue) | 56 |
| Source-rich files (actual in-game content) | ~612 |
| Source-backed summary files | ~117 |
| Claim-level pages | ~32 |
| Governance/report files | ~101 |

**Key finding: ~39% of all markdown files (555 of 1,417) are empty, template-only, or skeleton-only.**

## Empty / Template File Table — By Layer

### Sources Layer (612 files) — ALL source_rich

No empty or template files detected in sources/. All 612 files contain actual in-game content.

### Quest Layer (56 files) — ALL empty/skeleton

| File pattern | Layer | Count | Content status | Risk | Recommended action |
| ------------ | ----- | ----: | -------------- | ---- | ------------------ |
| quests/archon_quests/**/*.md | quests | 33 | empty_skeleton / outline_only | critical | needs_source_ingestion |
| quests/world_quests/**/*.md | quests | 23 | empty_skeleton | high | needs_source_ingestion |

**All 56 quest files are unusable as source.**

### Entity Layer — Template Files (481 of 649)

| Subfolder | Layer | Template count | Content status | Risk | Recommended action |
| --------- | ----- | -------------: | -------------- | ---- | ------------------ |
| entities/weapons/*.md | entities | ~229 | template_only | low | keep_as_placeholder |
| entities/artifact_sets/*.md | entities | 61 | template_only | low | keep_as_placeholder |
| entities/characters/**/*.md | entities | ~113 | template_only | medium | needs_source_ingestion (character_stories missing) |
| entities/books/*.md | entities | ~67 | template_only | low | keep_as_placeholder |
| entities/gods_and_archons/*.md | entities | ~11 | template_only | high | needs_source_ingestion |
| entities/organizations/*.md (partial) | entities | ~5 | template_only | medium | needs_manual_review |
| entities/historical_figures/*.md (partial) | entities | ~3 | template_only | medium | needs_manual_review |
| entities/dragon_sovereigns/*.md (partial) | entities | ~2 | template_only | medium | needs_manual_review |
| entities/items_and_materials/ | entities | 0 (empty dir) | empty | low | can_ignore |
| entities/races/ | entities | 0 (empty dir) | empty | low | can_ignore |

### Topics Layer (9 files) — Summary-only but not empty

All 9 topic files contain substantive analysis. None are empty or template-only. However, they are indirect syntheses with theory risk and should not be treated as primary source.

### Wiki Layer (73 files) — Mostly governance, no empties

No empty or template files detected in wiki/. All files serve active governance or audit purposes.

### Foundation Layer (17 files) — Historical governance, no empties

All 17 files contain substantive governance content. None are empty.

### Planning Layer (10 files) — Archived, no empties

All 10 files contain historical planning content. None are empty but all are archived/superseded.

## Highlighted Risks

### Quest Skeletons (Critical)

56 quest files exist as navigation placeholders only. If a future agent treats these as evidence that "quest content exists in workspace," it will produce false claims. The quests/ layer provides **zero** source value.

### Entity Shells (High for gods_and_archons, characters)

- 11 of 13 gods_and_archons files are empty shells — particularly dangerous because these are high-lore entities
- 113 of 119 character files are template-only — source ingestion blocked by missing character_stories/
- 229 weapon entity files are template shells — low risk since sources/weapon_stories/ has the actual content

### Empty Directories

- entities/items_and_materials/ — empty
- entities/races/ — empty
- These are structural placeholders only.
