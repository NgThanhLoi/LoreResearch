# API Ingestion Feasibility

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Purpose

Evaluate which external tools/APIs may be useful for future automated source ingestion and what risks they carry.

## Tool/API Table

| Tool/API | Exact URL | Access method | Data likely available | Best use | Risks | Pass 3 test? | Notes |
| -------- | --------- | ------------- | --------------------- | -------- | ----- | ------------ | ----- |
| genshin-db (GitHub) | https://github.com/theBowja/genshin-db | GitHub repository + npm package | Character data, voice lines, stories, talents, constellations, weapons, artifacts, books | Character stories, voice line bulk ingestion, metadata alignment | Unofficial; may lag behind game updates; language coverage unclear; not verified against live game | Yes | Most promising for bulk structured data |
| genshin-db (npm) | https://www.npmjs.com/package/genshin-db | `npm install genshin-db` | Same as GitHub — accessible via JS/Node | Local querying of game data without web scraping | Package size; dependency management; version drift | Yes | Can test locally in workspace |
| Fandom MediaWiki API | https://genshin-impact.fandom.com/api.php | MediaWiki API (REST/JSON) | Quest transcripts, book texts, character pages, lore pages | Quest transcript extraction; book text verification | Community-edited (may contain errors); mixing transcript vs analysis; rate limits; page structure changes | Yes | Best for quest transcript candidates |
| Project Amber / Ambr.top | https://ambr.top/ | Static web pages (no public API documented) | Character profiles, weapon/artifact stats, quest listings | Metadata cross-reference, quick lookup | Web scraping required; no guaranteed API stability; may block automated access | Maybe | Good for manual verification, harder for automation |
| Honey Impact | https://genshin.honeyhunterworld.com/ | Static web pages | Datamined text, quest dialogue, character data, items | Quest text extraction, unreleased content preview | Datamined ≠ confirmed; scraping restrictions; content may include beta/unreleased; site stability | Maybe | Verify against official release before using |

## Access Method Details

### genshin-db (npm)

```
Access: npm install genshin-db
Query: const genshindb = require('genshin-db')
Example: genshindb.characters('Furina')
Languages: en, vi, ja, zh, ko (likely)
```

**Strengths:**
- Structured JSON output
- Local execution (no rate limits)
- Covers characters, weapons, artifacts, books, voice lines
- Version-tagged releases

**Weaknesses:**
- Community-maintained, not official
- May not include all character stories or quest text
- Vietnamese translation coverage unknown
- Update lag after new game versions

### Fandom MediaWiki API

```
Access: HTTP GET to https://genshin-impact.fandom.com/api.php
Parameters: action=parse&page=PageName&format=json
Example: ?action=parse&page=Masquerade_of_the_Guilty/Quest&format=json
Rate limit: Yes (standard MediaWiki limits)
```

**Strengths:**
- Most comprehensive quest transcript source
- Structured API with JSON output
- Covers quest dialogue, book texts, character lore
- Well-maintained community wiki

**Weaknesses:**
- Community-edited (transcription errors possible)
- Pages mix transcript with trivia/analysis sections
- Must parse HTML output to extract clean text
- Rate limits for bulk requests
- Page naming conventions may not match local filenames

### Project Amber / Ambr.top

```
Access: Web pages only (no documented public API)
URL pattern: https://ambr.top/en/archive/quest/[quest_id]
Data format: HTML pages
```

**Strengths:**
- Clean interface
- Good metadata organization
- Multi-language support

**Weaknesses:**
- No API — requires web scraping
- May block automated access
- Limited quest text (more metadata-focused)

### Honey Impact

```
Access: Web pages only
URL pattern: https://genshin.honeyhunterworld.com/[category]/[item]
Data format: HTML pages
```

**Strengths:**
- Contains datamined text including quest dialogue
- Often available before official release
- Comprehensive coverage

**Weaknesses:**
- Datamined content may not match final release
- No API — scraping only
- Site may have anti-bot measures
- Includes unreleased/beta content without clear marking

## Recommended Pass 3 API Tests

These are small, safe tests to evaluate feasibility. Do NOT perform in Pass 2.

| Test # | Tool | Test action | Expected outcome | Risk level | Notes |
| ------ | ---- | ----------- | ---------------- | ---------- | ----- |
| 1 | Fandom API | Fetch metadata for one known quest page (e.g., Mondstadt Prologue) | JSON response with page content | Low | Compare with existing voice_lines/ content |
| 2 | Fandom API | Fetch one book text page (e.g., "Teyvat Travel Guide") | JSON with book content | Low | Compare with existing book_texts/ file |
| 3 | genshin-db | Install package, query one character (e.g., "Kaeya") | Character object with stories/voice lines | Low | Check if character stories are included |
| 4 | genshin-db | Query voice lines for Furina or Neuvillette | Voice line data structure | Low | Check Vietnamese coverage |
| 5 | Project Amber | Manually inspect one character page URL structure | Understanding of data layout | None | Manual inspection only |
| 6 | Honey Impact | Manually inspect one quest text page structure | Understanding of transcript format | None | Manual inspection only |

## Ingestion Strategy Recommendation

For Pass 3, the recommended approach is:

1. **Start with genshin-db** — lowest barrier, local execution, no rate limits
2. **Use Fandom API for quest transcripts** — most comprehensive quest dialogue source
3. **Use Project Amber/Honey for verification only** — cross-check, not primary ingestion
4. **Always create local source files** — never depend on external availability
5. **Always use SOURCE_TEMPLATE** — ensure claim mapping readiness

## Risks Summary

| Risk | Mitigation |
| ---- | ---------- |
| Data does not match in-game text | Cross-verify with multiple sources before marking as primary |
| Language mismatch (en vs vi) | Check if tool supports Vietnamese; fallback to English with translation note |
| API/site goes down or changes | Always ingest to local files; never depend on live external access |
| Copyright concerns | Short excerpts only; prefer metadata and claim mapping over full text |
| Unofficial data treated as official | Always mark as secondary_transcription until verified against game |
| Rate limits block bulk ingestion | Implement delays; batch requests; cache responses |
