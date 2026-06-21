# Pass 8.1 Kaeya Source Hardening Report

Generated: 2026-06-21 - Codex Pass 8.1 Kaeya Source File Hardening

## Scope

Pass 8.1 hardened `sources/character_stories/Kaeya.md` only. It used the Fandom MediaWiki API, exact page `Kaeya/Profile`, and exact revision/oldid `2108515`.

No character page, entity page, synthesis page, theory claim, or mass-ingestion target was updated.

## API Reopen Result

| Field | Value |
| ----- | ----- |
| API | `https://genshin-impact.fandom.com/api.php` |
| Page title | `Kaeya/Profile` |
| Page ID | `12187` |
| Revision / oldid | `2108515` |
| Parent revision | `2062397` |
| Revision timestamp | `2026-06-09T03:14:34Z` |
| Route used | `action=query&revids=2108515&prop=revisions&rvprop=ids|timestamp|content&rvslots=main&formatversion=2&format=json` |
| Template confirmed | `{{Character Story}}` inside `==Character Stories==` |

## Exact Text Storage Decision

Exact text was **not** stored locally.

Reason: `wiki/sources/EXTERNAL_SOURCE_POLICY.md` says not to paste long copyrighted dialogue/text into source files, and to prefer metadata, short summaries, and claim mapping over full transcription. The extracted character-story fields are long profile/story text, so Pass 8.1 converted the local file into a provenance and extraction index instead of storing full field text.

## Hardened Sections

| Section | Template text field | Local hardening added |
| ------- | ------------------- | --------------------- |
| Character Details | `text1` | field path, mentions, char count, cleaned text SHA-256 |
| Character Story 1 | `text2` | field path, friendship unlock, char count, cleaned text SHA-256 |
| Character Story 2 | `text3` | field path, friendship unlock, mentions, char count, cleaned text SHA-256 |
| Character Story 3 | `text4` | field path, friendship unlock, char count, cleaned text SHA-256 |
| Character Story 4 | `text5` | field path, friendship unlock, mentions, char count, cleaned text SHA-256 |
| Character Story 5 | `text6` | field path, friendship unlock, mentions, char count, cleaned text SHA-256 |
| Vision | `text8` | field path, friendship unlock, mentions, char count, cleaned text SHA-256 |

## Source Status Outcome

| Item | Pass 8 value | Pass 8.1 value | Reason |
| ---- | ------------ | -------------- | ------ |
| `source_type` | `character_story_transcript_candidate` | `api_provenance_record` | Local file does not store exact text. |
| `source_status` | `locally_ingested_needs_review` | `extraction_index_candidate` | It indexes the exact extraction route and fields. |
| `claim_mapping_status` | `not_yet_mapped` | `requires_api_reopen_for_claim_mapping` | Pass 9 must reopen revision `2108515`. |

`CS-KAEYA-001` remains valid because it still points to a real local file and a pinned external API revision, but it is no longer represented as a local transcript candidate.

## Safety Confirmation

- No new source ID was created.
- No claim was added or upgraded.
- No lore backfill was performed.
- No browser HTML was scraped.
- No mass ingestion was performed.
- `wiki/entities/characters/Kaeya.md` was not updated.
- No character page was updated.

## Pass 9 Implication

Pass 9 can proceed to Kaeya claim mapping only with API reopen. It should not treat `sources/character_stories/Kaeya.md` as containing exact story text; it should use the file as the pinned route, section index, and fingerprint record.
