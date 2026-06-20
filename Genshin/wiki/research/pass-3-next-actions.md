# Pass 3 Next Actions

Generated: 2026-06-20 — Claude Code Pass 3 Source Tool Tests

## Pass 3 Summary

### Source-Index Cleanup (P0-Internal)

- Added MG-ALL folder-level entry for `sources/manga_transcripts/` (21 files).
- Added VLAQ-ALL folder-level entry for `sources/voice_lines/archon_quests/` (124+ files).
- Added VLWQ-ALL folder-level entry for `sources/voice_lines/world_quests/` (4 files).
- Retired QD-ALL as `legacy_retired / not_source` (folder does not exist).
- Downgraded VL-0002 Skirk TODO to explicitly non-valid; marked `source_missing`.
- Confirmed zero phantom IDs for VL-DOTTORE-*, CS-DOTTORE-*, VL-SANDRONE-*, CS-SANDRONE-*, VL-COLUMBINA-*, CS-COLUMBINA-*, VL-SKIRK-*, CS-SKIRK-* in active use.

### API/Tool Smoke Test Results

- Fandom MediaWiki API: **success** — structured JSON, section-level metadata.
- genshin-db: **available** — v5.2.11, last published Jan 2025, covers v6.6 data.
- Project Amber / Ambr.top: **blocked** — redirected to gi.yatta.moe, returns 403.
- Honey Impact: **blocked** — returns 403, anti-bot measures active.
- Official Manga: **accessible** — chapter listing confirmed, maps to local files.

### Sample Source Mapping

- Selected source: `sources/weapon_stories/Kiếm Giáng Lâm.md` (WS-0001).
- Demonstrated full SOURCE_TEMPLATE usage with frontmatter, claim mapping, and verification notes.
- Marked as `sample_only` / `not_used_for_canon_upgrade`.
- No lore page updated.

### Blockers

- `sources/character_stories/` does not exist — blocks Level 3 character audits.
- `sources/official/` does not exist — blocks official source ingestion.
- Dottore remains `blocked_by_missing_source`.
- Sandrone remains `blocked_by_missing_source`.
- Columbina remains `audited_source_light` / `indirect_source_only`.
- Nod-Krai Acts II–VII remain `source_missing`.
- Ambr.top and Honey Impact not accessible for automated ingestion.

---

## Tool Test Results

| Tool/API | Result | Recommended future use | Risk |
| -------- | ------ | ---------------------- | ---- |
| Fandom MediaWiki API | ✓ Success | Quest transcript extraction; book text verification; one controlled test next pass | Medium — community-edited, section filtering needed |
| genshin-db | ✓ Available (metadata) | Character story bulk extraction; voice line queries; local npm install in temp dir | Medium — unofficial, secondary, version lag |
| Ambr.top / gi.yatta.moe | ✗ 403 Forbidden | Manual browser verification only; not for automated ingestion | High — no API, anti-bot, domain migrated |
| Honey Impact | ✗ 403 Forbidden | Manual browser verification only; not for automated ingestion | High — datamined content, anti-bot, beta risk |
| Official Manga | ✓ Accessible | Chapter alignment with local manga_transcripts/; official source reference | Low — official, image-based (not text-extractable) |

---

## Recommended Pass 4

Pass 4 should NOT be full lore backfill. Smoke tests confirm Fandom API and genshin-db are viable, but Ambr.top and Honey Impact are not automatable.

### Option A — Controlled Character Story Ingestion

- Use genshin-db (install in temp dir) to query one character's story data.
- Start with a low-risk, already-audited character: Kaeya, Diluc, Lisa, Jean, or Furina.
- Create one local source file under `sources/character_stories/[character].md`.
- Claim-map only.
- Do not upgrade page until human review.

### Option B — Controlled VLAQ Coverage Mapping (Recommended)

- Map existing `sources/voice_lines/archon_quests/` files to major claims:
  - Fontaine final AQ (Furina/Focalors/Neuvillette)
  - Wanderer / Irminsul interlude
  - Nahida / Rukkhadevata (Sumeru AQ)
  - Raiden Ei / Shogun (Inazuma AQ)
  - Traveler / Abyss sibling revelations
- Use existing local files only — no external ingestion needed.
- Create claim mappings showing which VLAQ files support which wiki claims.
- Low risk: all content already exists locally.

### Option C — Official Manga Alignment

- Map local `sources/manga_transcripts/` (21 files) against official manga chapter list.
- Add MG file-level IDs (MG-0001 through MG-0016+) gradually.
- No long copyrighted excerpts.
- Verify chapter correspondence and note any missing chapters.

### Recommended Default

**Option B first** — Controlled local VLAQ coverage mapping.

Reasoning:
1. All source material already exists locally (124+ files).
2. No external ingestion risk.
3. No dependency concerns.
4. Directly addresses P1 claims (CLM-014 through CLM-018) that are likely already covered.
5. Builds claim-mapping practice before attempting external ingestion.
6. Can be followed by Option A or C in the same pass if time permits.

---

## What Not To Do Yet

- Do not mass ingest character stories (100+ characters).
- Do not mass ingest 56 quest transcript files.
- Do not fill entity shells from memory or API data.
- Do not upgrade Dottore/Sandrone claims.
- Do not resolve Columbina = Kuutar theory.
- Do not ingest Nod-Krai Acts II–VII until verified source exists.
- Do not write story/premise/outline/chapter.
- Do not scrape 403-blocked sites.
- Do not install packages into repo root.
- Do not treat API/database output as official canon by default.
