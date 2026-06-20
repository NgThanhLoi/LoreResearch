# Pass 3 API Smoke Test Report

Generated: 2026-06-20 — Claude Code Pass 3 Source Tool Tests

## Purpose

Test whether candidate tools are accessible and useful for future ingestion. No mass ingestion performed. No content ingested as canon.

---

## Test 1 — Fandom MediaWiki API

| Field | Result |
| ----- | ------ |
| Candidate ID | EX-API-003 |
| URL | https://genshin-impact.fandom.com/api.php |
| Test type | MediaWiki metadata/section smoke test |
| Test query | `?action=parse&page=Kaeya&prop=sections&format=json` |
| Success? | ✓ Yes |
| Data returned | 14 sections returned with hierarchy levels (L2–L4): Gameplay Info, Availability, Notes, Other Languages, Change History, References, Navigation, Ascensions and Stats, Talents, Constellation, Paimon's Bargains, Character Event Wishes, Chronicled Wishes, Talent Upgrade |
| Response format | Structured JSON with section titles, byte offsets, anchor links, hierarchy levels |
| Risks | Secondary transcription; community-edited; sections mix gameplay with lore; need to filter transcript vs trivia/analysis |
| Recommended next step | One controlled transcript test for a quest page (e.g. a known archon quest) in future pass |

### Observations

- The API is fully accessible and returns structured JSON.
- Page structure is hierarchical and parseable.
- For lore use: would need to target specific pages like quest transcripts (`/Quest`) or character lore sections, NOT general gameplay pages.
- Rate limits apply for bulk requests but single queries are fine.
- Community-edited content means transcription errors are possible.

---

## Test 2 — genshin-db

| Field | Result |
| ----- | ------ |
| Candidate ID | EX-API-001 / EX-API-002 |
| URL (GitHub) | https://github.com/theBowja/genshin-db |
| URL (npm) | https://www.npmjs.com/package/genshin-db |
| Test type | npm registry metadata check |
| Success? | ✓ Yes (metadata accessible) |
| Package version | 5.2.11 |
| Last published | 2025-01-17 |
| Game version coverage | v6.6 (per package description) |
| Description | "Genshin Impact v6.6 JSON data. Search and get results in all in-game languages! Sources from the fandom wiki and GenshinData repo." |
| Language support | All in-game languages (confirmed by description) |
| Risks | Unofficial; last updated Jan 2025 (may lag behind current game version); data sourced from fandom wiki and GenshinData repo (secondary) |
| Installation note | Package NOT installed into repo root per policy |

### Observations

- Package is active and reasonably current (v6.6 data as of Jan 2025).
- Supports all in-game languages — Vietnamese likely included.
- Sourced from fandom wiki and GenshinData repo — secondary transcription, not official.
- Would need local installation in a temp directory for actual data queries.
- Character stories and voice lines accessibility not confirmed from metadata alone — requires actual query test.
- Recommended: install in `wiki/research/_tmp/pass3/genshin-db-test/` for a controlled query in a future pass if approved.

---

## Test 3 — Project Amber / Ambr.top

| Field | Result |
| ----- | ------ |
| Candidate ID | EX-DB-002 |
| URL | https://ambr.top/ |
| Test type | Basic accessibility/manual inspection |
| Success? | ⚠ Redirect detected |
| Redirect | `https://ambr.top/en` → `https://gi.yatta.moe/en` (301 Moved Permanently) |
| Accessibility after redirect | ✗ 403 Forbidden |
| Data returned | None — blocked by server |
| Risks | Domain has migrated; new domain blocks automated access; no public API; scraping likely prohibited |
| Recommended next step | Manual browser inspection only; not suitable for automated ingestion |

### Observations

- ambr.top has permanently redirected to gi.yatta.moe.
- The new domain returns 403 Forbidden to automated requests (likely anti-bot measures).
- No public API documented for either domain.
- This source is NOT suitable for automated ingestion.
- May still be useful for manual browser-based verification/cross-reference by human.
- External candidate registry should note the URL migration.

---

## Test 4 — Honey Impact

| Field | Result |
| ----- | ------ |
| Candidate ID | EX-DB-001 |
| URL | https://genshin.honeyhunterworld.com/ |
| Test type | Basic accessibility/manual inspection |
| Success? | ✗ Blocked |
| HTTP status | 403 Forbidden |
| Data returned | None — blocked by server |
| Risks | Anti-bot measures active; datamined content includes unreleased/beta material; no public API; scraping prohibited |
| Recommended next step | Manual browser inspection only; requires released-only content filtering; not suitable for automated ingestion |

### Observations

- Honey Impact blocks automated/non-browser access (403 Forbidden).
- Known to contain datamined/unreleased content mixed with released content.
- No public API available.
- Beta/datamine risk is HIGH — would need explicit released-only filtering even for manual use.
- NOT suitable for automated ingestion pipeline.
- May be useful for human manual verification only.

---

## Test 5 — Official Manga URL

| Field | Result |
| ----- | ------ |
| Candidate ID | EX-OFFICIAL-003 |
| URL | https://genshin.hoyoverse.com/en/manga |
| Test type | Basic accessibility/manual inspection |
| Success? | ✓ Yes (accessible via search; chapter structure confirmed) |
| Data returned | Chapter listing confirmed: Prologue through Chapter 16 (matching local manga_transcripts/) |
| Chapter structure | Prologue: Songs of the Wind, Ch1: Bad Wine, Ch2: Flame Born, Ch3: Lost and Found, Ch4: Surprise Finding, Ch5: Dangerous Grounds, Ch6: Wind and Fyre, Ch7: Dusty Chest, Ch10: Fools Trick (and more) |
| Manga status | Official HoYoverse publication; only Chinese/Japanese/Korean versions are complete (all 16 chapters); other languages partial |
| Risks | Image-based (not text-extractable directly); language completeness varies; official but not full text source |
| Recommended next step | Map official chapter list against local `sources/manga_transcripts/` (21 files) for alignment verification |

### Observations

- Official manga URL is accessible and confirmed as HoYoverse publication.
- Chapter structure maps well to local `sources/manga_transcripts/` files (00–16).
- Local files appear to be Vietnamese transcriptions of these official chapters.
- The official source is image-based — local transcripts are therefore secondary_transcription of official visual content.
- Good candidate for MG file-level ID alignment in future pass.
- No long copyrighted content was extracted.

---

## Summary Table

| Tool/API | Result | Useful for future ingestion? | Risk level | Automated ingestion feasible? |
| -------- | ------ | ---------------------------- | ---------- | ----------------------------- |
| Fandom MediaWiki API | ✓ Success | Yes — quest transcripts, book texts | Medium (community-edited) | Yes |
| genshin-db | ✓ Available | Yes — structured character data, stories | Medium (unofficial, secondary) | Yes (local npm) |
| Project Amber / Ambr.top | ✗ 403 / Redirected | Limited — manual only | High (no API, anti-bot) | No |
| Honey Impact | ✗ 403 | Limited — manual only | High (datamined, anti-bot) | No |
| Official Manga | ✓ Accessible | Yes — chapter alignment | Low (official source) | Partial (image-based) |

## Recommendations

1. **Primary automated ingestion tools:** Fandom API + genshin-db
2. **Manual verification only:** Ambr.top (now gi.yatta.moe), Honey Impact
3. **Official alignment reference:** Official manga URL
4. **Do NOT attempt scraping** of 403-blocked sites
5. **All ingested content must be treated as secondary_transcription** until verified against in-game state
