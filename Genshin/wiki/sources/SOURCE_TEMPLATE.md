# Source Template

This template defines the standard format for all source files in the workspace.

---

## Frontmatter

```yaml
---
source_id: [PREFIX]-[NNNN] or [PREFIX]-[NAME]-[NNN]
source_type: [weapon_story | artifact_description | book_text | voice_line | archon_quest_dialogue | world_quest_dialogue | story_quest_dialogue | character_story | manga_transcript | official_post | official_video | api_derived | external_candidate]
title: [Source title]
original_title: [Original language title if different]
game_version: [e.g. 4.2, 5.0]
language: [vi | en | ja | zh | ko]
location: [In-game location or media location]
local_path: [Relative path from repo root]
external_url: [URL if external candidate, empty if local]
source_owner: [HoYoverse | community | fandom | unknown]
source_tier: [A_official | B_api_database | C_secondary | D_community | E_leak]
transcription_status: [raw | cleaned | verified | unverified | partial]
reliability: [high | medium | low | unknown]
source_status: [primary_source_found | indirect_source_only | source_missing | external_candidate_unverified | secondary_transcription | needs_primary_source]
contains_spoilers: [true | false]
related_claims: [list of Claim IDs]
related_entities: [list of entity names/paths]
last_checked: [YYYY-MM-DD]
added_by: [claude_code | human | tool]
---
```

## Template Body

```markdown
# [Source Title]

## Source Metadata

| Field | Value |
| ----- | ----- |
| Source ID | |
| Type | |
| Game version | |
| Language | |
| Local path | |
| External URL | |
| Tier | |
| Status | |

## Short Summary

[Brief description of what this source contains. 2-5 sentences maximum.]
[Do NOT paste long copyrighted dialogue here.]

## Claim Mapping

| Claim ID | Claim | Label | Supported? | Source status | Notes |
| -------- | ----- | ----- | ---------- | ------------- | ----- |
| | | | | | |

## Related Files

| File | Relationship | Notes |
| ---- | ------------ | ----- |
| | | |

## Excerpts

[Only short excerpts if needed for claim verification.]
[Avoid long copyrighted passages.]
[Prefer paraphrased summaries with page/section references.]

## Verification Notes

- [ ] Locally present in workspace
- [ ] External candidate only
- [ ] Official source
- [ ] Secondary transcription
- [ ] Transcript-like
- [ ] Leak quarantine
- [ ] Needs human review
```

## Usage Rules

1. Every new source file must use this template.
2. Source ID must follow rules in SOURCE_ID_RULES.md.
3. Do not create a source file without actual content to fill it.
4. Do not create placeholder source files as proof that content exists.
5. Short summary only — no long copyrighted passages.
6. Claim mapping connects this source to wiki claim IDs.
7. Verification notes must be honest about source provenance.
