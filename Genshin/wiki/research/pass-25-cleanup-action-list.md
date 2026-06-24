# Pass 25 — Cleanup Action List

## Purpose

Prioritized cleanup actions identified during Pass 25 dedup and status audit.

## Priority Definitions

- **P0** — must fix before Pass 26
- **P1** — should fix before global QA
- **P2** — can wait until Pass 31
- **P3** — documentation hygiene only

## Action List

| id | priority | issue | affected_files | recommended_action | safe_to_auto_patch | requires_human_review | blocked_by |
| -- | -------- | ----- | -------------- | ------------------ | ------------------ | --------------------- | ---------- |
| CLN-01 | P0 | Skirk not in character-inventory.md despite page existing (Pass 19) | wiki/entities/characters/character-inventory.md | Add Skirk row: source_missing, high risk, P1, blocked_by_missing_source | yes | no | none |
| CLN-02 | P0 | Skirk not in character-audit-backlog.md despite page existing (Pass 19) | wiki/synthesis/character-audit-backlog.md | Add Skirk row: Phase 3.2, blocked_by_missing_source, P1 high | yes | no | none |
| CLN-03 | P0 | Varka inventory status "needs_ooc_audit" is stale — governance page created in Pass 19 | wiki/entities/characters/character-inventory.md | Update status to "source_light_governance" | yes | no | none |
| CLN-04 | P0 | Nicole inventory status "needs_ooc_audit" is stale — governance page created in Pass 19 | wiki/entities/characters/character-inventory.md | Update status to "source_light_governance" | yes | no | none |
| CLN-05 | P0 | Varka backlog says "Level 1" but governance page exists | wiki/synthesis/character-audit-backlog.md | Update current audit level to "source_light_governance" | yes | no | none |
| CLN-06 | P0 | Nicole backlog says "Level 1" but governance page exists | wiki/synthesis/character-audit-backlog.md | Update current audit level to "source_light_governance" | yes | no | none |
| CLN-07 | P0 | character-inventory.md "Blocked by Missing Source" section incorrectly lists Columbina, Nicole, Varka instead of Dottore, Sandrone | wiki/entities/characters/character-inventory.md | Rewrite section to list Dottore, Sandrone as blocked; note Columbina as source-light, Skirk/Varka/Nicole as source-light governance | yes | no | none |
| CLN-08 | P1 | Columbina inventory status "audited_source_light" — inconsistent compound label | wiki/entities/characters/character-inventory.md | Consider normalizing to "source_light_audited" for consistency — or leave as-is (cosmetic) | yes | no | none |
| CLN-09 | P1 | Pass status matrix discrepancies — prompt claims patches (19.5.1, 20.1, 21.1, 22.1.1) not found in log | wiki/log.md (documentation) | Record in Pass 25 report as known discrepancy. Do not fabricate log entries. | n/a — report only | yes | none |
| CLN-10 | P2 | ~85 Level 2 pages lack character-story provenance (systemic gap) | all Level 2 character pages | No action in Pass 25 — this is a known systemic gap documented since Pass 11. Resolves in Pass 26+ claim mapping. | no | no | Pass 26+ |
| CLN-11 | P2 | Ifa, Iansan, Varesa remain skipped/source_missing since Pass 18 | not yet created | No action — source files must exist before page creation | no | no | source ingestion |
| CLN-12 | P2 | Escoffier skipped in Pass 17 (out_of_scope, no voice-line file) | not yet created | No action — requires voice-line file | no | no | source ingestion |
| CLN-13 | P2 | Traveler page boundary governance (CON-0015) unresolved | wiki/entities/characters/Aether.md, Lumine.md | Requires human editorial decision on Traveler/Aether/Lumine/Abyss Sibling page separation | no | yes | human review |
| CLN-14 | P3 | wiki/log.md uses mixed link formats (relative links vs code paths) | wiki/log.md | Cosmetic only. Not worth patching — log is append-only. | no | no | none |
| CLN-15 | P3 | Minor format variation in Pass 14 pages (table vs bullet for Audit Status) | wiki/entities/characters/ (Liyue batch) | Cosmetic. Not worth patching unless global template QA pass is run. | no | no | none |

## Summary

- **P0 items: 7** (CLN-01 through CLN-07) — all safe to auto-patch, all metadata-only
- **P1 items: 2** (CLN-08, CLN-09) — one cosmetic patch, one report-only
- **P2 items: 4** (CLN-10 through CLN-13) — systemic/blocked, no action now
- **P3 items: 2** (CLN-14, CLN-15) — cosmetic documentation hygiene

## P0 Patch Feasibility

All 7 P0 items affect only `character-inventory.md` and `character-audit-backlog.md`. They are:
- Metadata/status label updates only
- Do not touch source-index or sources/**
- Do not upgrade any canon claim
- Do not create source IDs
- Do not modify individual character page content
- Safe to apply in Pass 25 as optional patches
