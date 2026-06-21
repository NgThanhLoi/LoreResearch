# Pass 8 Created Source Report

Generated: 2026-06-20 - Codex Pass 8 Fandom API Character Story Ingestion Test

## Created Source Files

| Source ID | File | Character | Source type | Source status | Created? | Notes |
| --------- | ---- | --------- | ----------- | ------------- | -------- | ----- |
| CS-KAEYA-001 | `sources/character_stories/Kaeya.md` | Kaeya | character_story_transcript_candidate | locally_ingested_needs_review | yes | Created from Fandom MediaWiki API `Kaeya/Profile`; not canon until claim-mapped and human-reviewed. |

## Validation Checks

| Check | Result | Notes |
| ----- | ------ | ----- |
| local file exists | yes | `sources/character_stories/Kaeya.md` |
| provenance included | yes | API, wiki, page title, route, revision id, oldid, and retrieved sections recorded. |
| usage limits included | yes | Source file forbids canon use and page updates without review. |
| API route recorded | yes | `action=parse&page=Kaeya/Profile&prop=wikitext|sections|revid&format=json` |
| revision id recorded if available | yes | `2108515` |
| contains character story sections | yes | Character Details, Character Story 1-5, Vision listed. |
| excludes voice-over-only content | yes | `Kaeya/Voice-Overs` rejected. |
| excludes wiki summary as primary source | yes | Main page, trivia, navigation, gameplay, and editor summaries were not used as primary canon. |
