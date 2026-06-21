# Pass 8 Kaeya Extraction Notes

Generated: 2026-06-20 - Codex Pass 8 Fandom API Character Story Ingestion Test

## Page / Section Discovery

| Page title | Discovery result | Notes |
| ---------- | ---------------- | ----- |
| `Kaeya/Lore` | reachable, no useful direct sections | Revision history indicates move to `Kaeya/Profile`. |
| `Kaeya` | reachable, gameplay-focused sections | Rejected because it returned gameplay, availability, notes, references, and navigation. |
| `Kaeya/Story` | reachable, no useful direct sections | Redirect-style route after `/Lore` move. |
| `Kaeya/Profile` | successful | Returned profile page sections and wikitext containing `{{Character Story}}`. |
| `Kaeya/Voice-Overs` | reachable route | Rejected because voice-over-only content is already local and outside Pass 8 scope. |

## Accepted Sections

| Section | Reason accepted | Source classification |
| ------- | --------------- | --------------------- |
| Character Details | Structured profile field inside `{{Character Story}}`; corresponds to in-game character profile text. | character_story_transcript_candidate |
| Character Story 1 | Structured character story field with friendship unlock metadata. | character_story_transcript_candidate |
| Character Story 2 | Structured character story field with friendship unlock metadata. | character_story_transcript_candidate |
| Character Story 3 | Structured character story field with friendship unlock metadata. | character_story_transcript_candidate |
| Character Story 4 | Structured character story field with friendship unlock metadata. | character_story_transcript_candidate |
| Character Story 5 | Structured character story field with friendship unlock metadata. | character_story_transcript_candidate |
| Vision | Structured profile-like field inside `{{Character Story}}`; accepted as Vision story. | character_story_transcript_candidate |

## Rejected Sections

| Section | Reason rejected |
| ------- | --------------- |
| Personality | Fandom/editor-written profile section, not accepted as primary-like source text. |
| Appearance | Fandom/editor-written visual description, not character story source. |
| Namecard | Not character story/profile story text for Pass 8. |
| Constellation | Not character story/profile story text for Pass 8. |
| Quests and Events | Navigation/listing section, not raw story text. |
| Character Trials | Gameplay/trial listing, not character story text. |
| Character Mentions | Cross-reference listing, not the target character story source. |
| Other Appearances | Navigation/listing section. |
| Manga | Appearance listing, not character story source. |
| Mail | Mail listing, outside Pass 8 scope. |
| Trivia / Etymology | Editor-written or metadata section; not primary-like story source. |
| Other Languages | Localization metadata, not source text. |
| References / Navigation | Not story source content. |
| Voice-over sections | Rejected because Pass 8 targets character stories and Kaeya voice lines already exist locally. |

## Extraction Risks

- Fandom is community-maintained.
- Transcript-like text may need official or in-game cross-check later.
- Editor summary must not be treated as primary canon.
- Formatting may differ from in-game text.
- Source file is a local candidate only; claim mapping and human review are still required.
