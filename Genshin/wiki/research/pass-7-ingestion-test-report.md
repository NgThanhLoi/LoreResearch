# Pass 7 Ingestion Test Report

Generated: 2026-06-20 - Codex Pass 7 Controlled Source Ingestion Test

## Purpose

Pass 7 tested a controlled character story ingestion route before any mass ingestion. The test used an isolated temp workspace and queried only Kaeya, Furina, and Nahida through `genshin-db`.

This pass did not ingest all character stories, did not backfill pages, and did not upgrade any theory or source-light claim.

## Tool / Package Test

| Tool/source | Status | Version/info | Result | Notes |
| ----------- | ------ | ------------ | ------ | ----- |
| bundled Node.js | available | v24.14.0 | usable | Used only to run the temp query script. |
| pnpm | available | 11.5.3 | usable | Used only inside `wiki/research/_tmp/pass7-genshin-db-test/`. |
| genshin-db | installed_in_temp | 5.2.11; package description says Genshin Impact v6.6 JSON data | package test succeeded | Installed only in the Pass 7 temp folder. |
| genshin-db `characters` query | succeeded | 119 names in `characters` category | Kaeya, Furina, and Nahida found | Returns profile metadata, not character story fields. |
| genshin-db `voiceovers` query | succeeded | 109 names in `voiceovers` category | Kaeya, Furina, and Nahida found | Voice lines are separate from character profile data, not mixed into the same character object. |

## Character Query Results

| Character | Query success? | Character story available? | Vietnamese available? | File created? | Notes |
| --------- | -------------- | -------------------------- | --------------------- | ------------- | ----- |
| Kaeya | yes | no | yes | no | `characters` returned profile metadata; `voiceovers` returned 49 friend lines and 25 action lines. No `story`, `profile story`, or similar character-story field was exposed. |
| Furina | yes | no | yes | no | `characters` returned profile metadata; `voiceovers` returned 45 friend lines and 25 action lines. No `story`, `profile story`, or similar character-story field was exposed. |
| Nahida | yes | no | yes | no | `characters` returned profile metadata; `voiceovers` returned 50 friend lines and 25 action lines. No `story`, `profile story`, or similar character-story field was exposed. |

## Field Availability Notes

| Check | Result |
| ----- | ------ |
| Available languages | Package README states all in-game languages are supported. Direct probe succeeded for English, Vietnamese, ChineseSimplified, ChineseTraditional, Japanese, Korean, French, German, Spanish, Portuguese, Russian, Thai, Indonesian, Turkish, and Italian for Kaeya profile metadata. |
| Vietnamese available | yes, for tested character profile metadata and voiceover titles/descriptions |
| Story fields exist | no story-like keys were exposed in the returned `characters` objects |
| Voice lines mixed into same object | no; voice lines are returned by the separate `voiceovers` query |
| Version metadata | package version is 5.2.11; character profile objects include character release versions; voiceover objects include per-line version metadata |
| Source classification | Tier B API/database candidate; not official; secondary transcription until verified |

## Failures

| Step | Error | Impact | Safe next action |
| ---- | ----- | ------ | ---------------- |
| Character story retrieval | `genshin-db` package did not expose character-story/profile-story text fields for the tested characters | No `sources/character_stories/*.md` files were created, and no `CS-*` IDs were registered | Test an alternative route such as a controlled Fandom API character-lore section query, or manually curate official/local source links. |

## Safety Confirmation

- no mass ingestion performed
- no page backfill performed
- no theory upgraded
- package install happened only in `wiki/research/_tmp/pass7-genshin-db-test/`
- no Dottore, Sandrone, Columbina, or Skirk page update performed
- no browser scraping fallback used
- no source IDs created without a validated local source file
