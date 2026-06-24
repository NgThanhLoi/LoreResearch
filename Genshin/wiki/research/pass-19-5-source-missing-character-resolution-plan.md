# Pass 19.5 — Source-Missing Character Resolution Plan

## Purpose

Create a complete resolution plan for all characters currently blocked by missing or insufficient sources, and provide a prioritized ingestion queue for future passes.

## Scope

- Planning and prioritization only
- No source ingestion, no source-index changes, no character page creation/rewrite
- No claim mapping, no external/web/API queries
- No source IDs created

## Files Read First

| File | Status |
|------|--------|
| wiki/index.md | ✓ read |
| wiki/README.md | ✓ read |
| wiki/SCHEMA.md | ✓ read |
| wiki/log.md | ✓ read |
| wiki/entities/characters/README.md | ✓ read |
| wiki/entities/characters/character-inventory.md | ✓ read |
| wiki/sources/source-index.md | ✓ read (read-only) |
| wiki/sources/SOURCE_ID_RULES.md | ✓ read |
| wiki/sources/EXTERNAL_SOURCE_POLICY.md | ✓ read |
| wiki/research/pass-11-full-character-coverage-plan.md | ✓ read |
| wiki/research/pass-11-character-tier-map.md | ✓ read |
| wiki/research/pass-11-character-source-gap-map.md | ✓ read |
| wiki/research/pass-11-batch-roadmap.md | ✓ read |
| wiki/research/pass-11-next-actions.md | ✓ read |
| wiki/research/pass-12-character-template-report.md | ✓ read |
| wiki/research/pass-12-template-usage-guide.md | ✓ read |
| wiki/research/pass-13-character-update-list.md | ✓ read |
| wiki/research/pass-13-source-coverage-notes.md | ✓ read |
| wiki/research/pass-13-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-14-character-update-list.md | ✓ read |
| wiki/research/pass-14-source-coverage-notes.md | ✓ read |
| wiki/research/pass-14-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-15-character-update-list.md | ✓ read |
| wiki/research/pass-15-source-coverage-notes.md | ✓ read |
| wiki/research/pass-15-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-16-character-update-list.md | ✓ read |
| wiki/research/pass-16-source-coverage-notes.md | ✓ read |
| wiki/research/pass-16-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-17-character-update-list.md | ✓ read |
| wiki/research/pass-17-source-coverage-notes.md | ✓ read |
| wiki/research/pass-17-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-18-character-update-list.md | ✓ read |
| wiki/research/pass-18-source-coverage-notes.md | ✓ read |
| wiki/research/pass-18-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-18-1-template-overclaim-fix-report.md | ✓ read |
| wiki/research/pass-19-cross-faction-source-light-report.md | ✓ read |
| wiki/research/pass-19-character-action-list.md | ✓ read |
| wiki/research/pass-19-source-coverage-matrix.md | ✓ read |
| wiki/research/pass-19-risk-and-guardrail-report.md | ✓ read |
| wiki/research/pass-19-next-actions.md | ✓ read |
| wiki/research/pass-nk-03-guarded-claims-register.md | ✓ read |
| wiki/research/pass-nk-04-character-source-gap-map.md | ✓ read |
| wiki/research/pass-nk-04-character-tier-map.md | ✓ read |
| wiki/research/pass-nk-04-full-character-plan-merge-notes.md | ✓ read |
| wiki/research/pass-nk-07-evidence-index.md | ✓ read |
| wiki/research/pass-nk-07-claim-level-extraction-map.md | ✓ read |
| wiki/research/pass-nk-07-page-patch-report.md | ✓ read |
| wiki/synthesis/ooc-risk-index.md | ✓ read |
| wiki/synthesis/headcanon-fanon-policy.md | ✓ read |
| wiki/synthesis/contradiction-register.md | ✓ read |
| wiki/synthesis/power-system-governance.md | ✓ read |
| wiki/synthesis/unverified-lore-register.md | ✓ read |
| wiki/synthesis/character-audit-backlog.md | ✓ read |

## Candidate Discovery Method

Candidates were assembled from:

1. Pass 11 source gap map and tier map — identified initial gap set
2. Pass 13–18 source coverage notes and risk reports — confirmed per-batch gaps
3. Pass 18.1 overclaim fix — identified Natlan skipped characters
4. Pass 19 action list / source coverage matrix — confirmed 19 cross-faction candidates
5. NK-03 guarded claims register — identified guarded evidence claims
6. NK-04 character source gap map and tier map — Nod-Krai local characters
7. NK-07 evidence index — deep-read results with guarded outcomes
8. Character inventory — confirmed statuses for all 111 tracked characters
9. Character audit backlog — identified backlog blockers
10. Local folder inspection — confirmed source file availability

## Summary Counts

| Category | Count |
|----------|-------|
| Individually blocked (source_missing / blocked_by_missing_source) | 11 |
| Governance pages created but source-light/blocked | 3 |
| Source-light with guarded evidence (existing pages) | 5 |
| Natlan source-missing (voice line absent) | 3 |
| Nod-Krai/later-region source-missing (no local source) | 13 |
| Out-of-scope source-missing | 1 |
| Systemic character-story provenance gap (all Level 2 pages) | ~85 |
| **Total individually tracked candidates** | **37** |

## Source-Missing Categories Found

1. **No voice line file** — Character has no file in `sources/voice_lines/characters/`
2. **No character story provenance** — Only Kaeya has `sources/character_stories/Kaeya.md`; all others lack this
3. **No quest dialogue provenance** — No `sources/story_quests/`, `sources/archon_quests/`, `sources/world_quests/`, or `sources/events/` folders exist
4. **No official profile** — No `sources/official_profiles/` folder exists
5. **No artifact/book/manga source** — No `sources/books/`, `sources/artifacts/`, or `sources/manga/` folders exist
6. **Indirect source only** — Character exists only via other characters' voice lines or quest summaries
7. **Analysis-guided only** — Character intelligence file exists but is not a primary source

## Resolution Strategy

1. **Voice line ingestion** — 97 files already exist locally; can serve as primary source for playable characters
2. **Character story provenance** — Requires building `sources/character_stories/` from game data extraction
3. **Quest dialogue provenance** — Requires building quest transcript folders from game data extraction
4. **Official profile ingestion** — Requires building `sources/official_profiles/` from HoYoLAB/game data
5. **Claim mapping** — Required after source ingestion to link claims to specific source lines
6. **Human review** — Required for guarded evidence that cannot be machine-resolved

## Priority Logic

Priority assigned using this order:
1. Claims that could corrupt global canon if wrong (P0)
2. Existing pages with unsafe overclaims or ambiguous source labels (P1)
3. Major recurring / cross-faction characters (P1–P2)
4. Playable characters blocked by missing story/quest provenance (P2)
5. Characters with duplicate identity/page risks (P2)
6. Minor source-light characters (P3)
7. Unreleased or currently unresolvable candidates (P4)

## What This Pass Did Not Do

- ❌ No source ingestion performed
- ❌ No external/web/API queries made
- ❌ No source IDs created
- ❌ No source-index.md modifications
- ❌ No character pages created or rewritten
- ❌ No character-story provenance extraction
- ❌ No quest transcript extraction
- ❌ No claim mapping
- ❌ No claim upgrades from source_missing to CANON
- ❌ No character_intelligence used as primary source
- ❌ No NK-07 evidence upgraded to narrator-safe

## Quality Gate Results

| Gate | Status |
|------|--------|
| Repo structure inspected | ✓ |
| Pass 11 source gap/tier/roadmap files inspected | ✓ |
| Pass 13–19 source coverage/action/risk reports inspected | ✓ |
| Character inventory inspected | ✓ |
| Existing source_missing/source_light/blocked statuses scanned | ✓ |
| Candidate list derived from repo files, not memory alone | ✓ |
| Each candidate has controlled status | ✓ |
| Each candidate has blocking reason | ✓ |
| Each candidate has missing source type | ✓ |
| Each candidate has recommended route | ✓ |
| Each candidate has priority and next pass bucket | ✓ |
| No external source ingestion | ✓ |
| No live web/API queries | ✓ |
| No new source IDs created | ✓ |
| source-index.md not modified | ✓ |
| No character pages created or rewritten | ✓ |
| No character-story provenance extraction | ✓ |
| No quest transcript extraction | ✓ |
| No claim mapping | ✓ |
| No unsupported claim upgraded to canon | ✓ |
| character_intelligence not used as primary source | ✓ |
| NK-07 evidence remains guarded | ✓ |
| Natlan mechanics remain guarded | ✓ |
| All counts reconciled | ✓ |
| Reports created | ✓ |
| wiki/log.md updated | ✓ |
| Next passes recommended | ✓ |
