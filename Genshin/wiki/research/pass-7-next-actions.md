# Pass 7 Next Actions

Generated: 2026-06-20 - Codex Pass 7 Controlled Source Ingestion Test

## Pass 7 Summary

- genshin-db installation and basic querying succeeded in an isolated temp workspace.
- Kaeya, Furina, and Nahida were found in both `characters` and `voiceovers` data.
- Vietnamese output was available for tested profile metadata and voiceover data.
- No character-story text fields were exposed by the tested package queries.
- No `sources/character_stories/*.md` files were created.
- No `CS-*` source IDs were added.
- No claim candidates were created from character story files.
- Dottore, Sandrone, Columbina, Skirk, Nod-Krai Acts II-VII, and full character story ingestion remain blocked.

## Recommended Pass 8

Pass 8 - Alternative Source Ingestion Route

Scope:

- test Fandom API for one character lore/story section only
- or manually curate official source links for one character
- no scraping
- no mass ingestion
- no page backfill

## What Not To Do Yet

- do not ingest all 109 character stories
- do not backfill pages from newly queried package data
- do not update Dottore, Sandrone, Columbina, or Skirk
- do not write story, premise, outline, or chapter
