# Pass 6 Next Actions

Generated: 2026-06-20 — Claude Code Pass 6 Human Review + Source Status Update

## Pass 6 Summary

- **Claims approved:** CLM-014, CLM-015 (with limitation), CLM-016, CLM-017, CLM-018
- **Claims held:** CLM-009, CLM-010, CLM-011
- **Pages updated:** 8 pages received source-status metadata upgrades
- **Pages skipped:** 3 pages (Neuvillette.md, unverified-lore-register.md, timeline-continuity.md)
- **Remaining blocked claims:** Dottore, Sandrone, Columbina, Skirk, Nod-Krai Acts II–VII, character stories (109 characters)

## Recommended Pass 7

**Pass 7 — Controlled Source Ingestion Test**

### Reason

The five major Archon Quest claims (CLM-014 through CLM-018) are now fully resolved with local evidence. The main remaining blockers require missing source packages that do not exist in the workspace:

- `sources/character_stories/` — 109 characters blocked
- Dottore quest dialogue — CLM-001, CLM-002, CLM-003
- Sandrone quest dialogue — CLM-004, CLM-005
- Skirk quest appearance — CLM-009
- Nod-Krai Acts II–VII full transcripts — CLM-012
- `sources/official/` — folder does not exist

### Scope

A controlled ingestion test would:
1. Select ONE source type (e.g., character stories from genshin-db for 5 high-priority characters)
2. Ingest into a dedicated subfolder with clear provenance tagging
3. Index at file-level with proper Source IDs
4. Validate against existing claims
5. Document ingestion methodology for replication

### Alternative: Pass 7B — Targeted Local Search for Third Descender

If the user prefers to exhaust local sources before external ingestion:
- Deep-read remaining uninspected VLAQ files for "Kẻ Đổ Bộ" / "Descender" references
- Search weapon stories and book texts for Third Descender mentions
- Low probability of success based on Pass 5 findings

### Recommended default: Pass 7 — Controlled Source Ingestion Test

## What Not To Do Yet

- Do not mass ingest all 109 character stories at once
- Do not mass backfill entity pages
- Do not write story or fill quest skeletons
- Do not fill entity shells
- Do not upgrade theory claims (CLM-010, CLM-011) without new evidence
- Do not treat Nod-Krai summaries as canon without raw dialogue
