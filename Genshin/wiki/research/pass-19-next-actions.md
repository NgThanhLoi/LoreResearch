# Pass 19 — Next Actions

## Current State After Pass 19

- All regional character foundation batches complete (Passes 13–18).
- Template v2 overclaim fix applied (Pass 18.1).
- Cross-faction / source-light / blocked characters audited (Pass 19).
- 3 new governance pages created (Skirk, Varka, Nicole).
- 9 characters confirmed source_missing with no page (awaiting source packages).
- 7 existing pages preserved without unsafe modification.
- All NK-07 evidence statuses remain guarded.
- No claim mapping or provenance ingestion performed.

---

## Recommended Next Steps

### Option A: Character Story Provenance Batches (Pass 20+)

**Recommended if:** source files become available for ingestion.

Per Pass 11 roadmap, the next natural step is:

```
Pass 20+ — Character Story Provenance Batches (8–15 characters per batch)
```

This would:
- Ingest `sources/character_stories/` files when available
- Map character story claims to source IDs
- Upgrade characters from Level 2 to Level 3 (provenance-mapped)
- Start with Tier A characters who have the most complete source coverage

**Preconditions:**
- Character story source files must exist in workspace
- Source ID assignment rules must be followed (SOURCE_ID_RULES.md)
- source-index.md must be updated with new entries

**Priority targets for first provenance batch:**
1. Kaeya (already Level 3 — validate/extend)
2. Diluc, Jean, Lisa (Mondstadt audited characters with voice lines)
3. Zhongli, Venti, Raiden Shogun (Archons with full voice-line coverage)

### Option B: Regional Character Foundation QA Pass

**Recommended if:** quality concerns exist about Passes 13–18 output.

This would:
- Verify template v2 compliance across all 85+ character pages
- Check for remaining overclaims missed by Pass 18.1
- Validate source status labels against actual source file availability
- Reconcile character-inventory.md with actual page states

### Option C: Source Package Ingestion for Blocked Characters

**Recommended if:** new source files (character stories, quest transcripts) are added to workspace.

This would:
- Ingest source packages for Dottore, Sandrone, Skirk, etc.
- Create proper source IDs
- Update source-index.md
- Enable blocked characters to receive Level 2 foundation pages

---

## Recommendation

**Primary:** Pass 20 — Character Story Provenance Batch 1 (if source files available)

**Fallback:** Regional Character Foundation QA Pass (if no new sources available and quality verification is needed)

**Do not attempt:**
- Creating full pages for source-missing characters (Capitano, Pierro, etc.) without source packages
- Upgrading guarded NK-07 claims to canon without human review
- Normalizing existing blocked pages (Dottore, Sandrone) to standard template

---

## Characters Still Awaiting Source Packages

| Character | Blocking issue | Required source type |
|-----------|---------------|---------------------|
| Capitano | Zero local source | Voice lines, character story, or quest transcript |
| Alice | Zero local source | Voice lines, character story |
| Rhinedottir | Zero local source | Character story, quest transcript |
| Pierro | Zero local source | Voice lines, character story |
| Pantalone | Zero local source | Voice lines, character story |
| Pulcinella | Zero local source | Voice lines, character story |
| Tsaritsa | Zero local source | Voice lines, quest transcript |
| Dainsleif | Zero local source | Voice lines, character story, quest transcript |
| Paimon | Zero dedicated source | Dedicated voice-line file or character story |
| Dottore | Blocked | Character story package + human review |
| Sandrone | Blocked | Character story package + human review |
| Skirk | Blocked (deep-read confirmed missing) | Any primary source with Skirk dialogue |

---

## Pass 11 Roadmap Progress

| Pass | Status |
|------|--------|
| Pass 11 — Coverage Plan | ✓ Complete |
| Pass 12 — Template v2 | ✓ Complete |
| Pass 13 — Mondstadt | ✓ Complete |
| Pass 14 — Liyue | ✓ Complete |
| Pass 15 — Inazuma | ✓ Complete |
| Pass 16 — Sumeru | ✓ Complete |
| Pass 17 — Fontaine | ✓ Complete |
| Pass 18 — Natlan | ✓ Complete |
| Pass 18.1 — Overclaim Fix | ✓ Complete |
| Pass 19 — Cross-Faction/Source-Light | ✓ Complete |
| Pass 20+ — Provenance Batches | Pending (requires source files) |
| Pass 26+ — Claim Mapping | Pending (requires provenance) |
