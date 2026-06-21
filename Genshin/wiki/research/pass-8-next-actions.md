# Pass 8 Next Actions

> Superseded by Pass 9. Use `pass-9-next-actions.md` for current next steps.

Generated: 2026-06-20 - Codex Pass 8 Fandom API Character Story Ingestion Test

## Pass 8 Summary

- Fandom MediaWiki API succeeded for Kaeya character story discovery.
- The working page was `Kaeya/Profile`.
- A local source candidate was created: `sources/character_stories/Kaeya.md`.
- `CS-KAEYA-001` was added to `wiki/sources/source-index.md`.
- Candidate claims were identified but not applied.
- Dottore, Sandrone, Columbina, Skirk, Nod-Krai Acts II-VII, and full character story ingestion remain blocked.

## Recommended Pass 9

Pass 9 - Kaeya Character Story Claim Mapping

> Pass 8.1 update: `sources/character_stories/Kaeya.md` was hardened into an API provenance/extraction index. Exact character-story text is not stored locally. Pass 9 must re-open Fandom MediaWiki API revision `2108515` for `Kaeya/Profile` before mapping claims.

Scope:

- claim-map `sources/character_stories/Kaeya.md` as a pinned API provenance record
- re-open exact API revision/oldid `2108515` and verify the listed field hashes before using extracted text
- compare against `wiki/entities/characters/Kaeya.md`
- report proposed source_status upgrades
- do not apply page updates until human approval

## What Not To Do Yet

- do not ingest all character stories
- do not backfill Kaeya page
- do not treat `sources/character_stories/Kaeya.md` as a full local transcript
- do not update Dottore, Sandrone, Columbina, or Skirk
- do not update theory claims
- do not write story, premise, outline, or chapter
