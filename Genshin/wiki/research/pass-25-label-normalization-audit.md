# Pass 25 — Label Normalization Audit

## Purpose

Audit common status labels across tracking files and propose a normalized label set to resolve inconsistencies introduced during Passes 11–24.

## Observed Labels and Normalization Map

| observed_label | preferred_label | meaning | allowed_context | needs_patch | affected_files |
| -------------- | --------------- | ------- | --------------- | ----------- | -------------- |
| source_missing | source_missing | Zero local source files exist for this character/claim | inventory, backlog, character pages, research reports | no | — |
| blocked_by_missing_source | blocked_by_missing_source | Character page exists but all claims blocked due to missing primary sources | inventory, backlog, character pages | no | — |
| source_light | source_light | Page exists with limited/indirect sources only; not sufficient for full foundation | research reports, governance pages | no | — |
| indirect_source_only | indirect_source_only | Only character_intelligence or analysis files available; no primary source | inventory, character pages | no | — |
| audited_source_light | source_light_audited | Character was audited (Level 2) but primary sources remain insufficient | inventory | yes — normalize to `source_light_audited` | character-inventory.md (Columbina row) |
| needs_ooc_audit | source_light_governance | Legacy label from Pass 3.0 — character has intelligence file but page is now a source-light governance page | inventory | yes — update for Varka, Nicole to reflect Pass 19 page creation | character-inventory.md |
| evidence_found_guarded | evidence_found_guarded | NK-07 or Pass 22 evidence packets exist but claims NOT upgraded to canon | character pages, research reports | no | — |
| requires_human_review | requires_human_review | Claim requires human editorial judgment before status change | research reports, character pages | no | — |
| requires_claim_mapping | requires_claim_mapping | Claim has evidence but formal claim-mapping pass not yet performed | research reports | no | — |
| deferred_to_pass_23 | deferred_to_pass_23 | Voice-line context items deferred from Pass 22 to Pass 23 | Pass 22 reports | no — Pass 23+24 resolved these | — |
| non_quest_context | non_quest_context | Evidence from voice lines rather than quest dialogue | Pass 22/23 reports | no | — |
| not_resolvable_from_quest_dialogue | not_resolvable_from_quest_dialogue | Claim cluster cannot be resolved using quest dialogue alone | Pass 22 reports | no | — |
| partial_support_only | partial_support_only | Some evidence exists but insufficient for full canon status | character pages, research reports | no | — |
| profile_candidate | profile_candidate | Official profile text is a candidate source for this claim | Pass 23+24 reports | no | — |
| voice_line_candidate | voice_line_candidate | Voice-line file is a candidate source for this claim | Pass 23+24 reports | no | — |
| artifact_candidate | artifact_candidate | Artifact description is a candidate source | Pass 24 reports | no | — |
| book_candidate | book_candidate | Book text is a candidate source | Pass 24 reports | no | — |
| weapon_story_candidate | weapon_story_candidate | Weapon story is a candidate source | Pass 24 reports | no | — |
| manga_candidate | manga_candidate | Manga transcript is a candidate source | Pass 24 reports | no | — |
| event_candidate | event_candidate | Event dialogue/text is a candidate source | Pass 24 reports | no | — |
| context_only | context_only | Information provides context but is not sufficient evidence for a canon claim | character pages | no | — |
| not_enough_for_canon | not_enough_for_canon | Evidence exists but does not meet the threshold for canon status | research reports | no | — |
| source_absent | source_absent | Confirmed zero presence in local files after active search (stronger than source_missing) | Pass 22 reports (Capitano) | no | — |
| no_local_package_found | no_local_package_found | Feasibility search found zero files of any kind | Pass 20/21 reports | no | — |
| only_analysis_files_found | only_analysis_files_found | Only character_intelligence or historical_figures analysis exists | Pass 20/21 reports | no | — |
| partial_local_package_found | partial_local_package_found | Some source signals found but insufficient for full resolution | Pass 20/21 reports | no | — |
| provenance_candidate | provenance_candidate | Source file registered as a provenance pointer but not fully ingested | source-index.md, NK-06 reports | no | — |
| inventory_only | inventory_only | Character listed in inventory but no audit or page work done | inventory, backlog | no | — |
| audited | audited | Character has completed Level 2 OOC Risk Audit | inventory, backlog | no | — |

## Labels Requiring Patch

| label_issue | affected_character | current_label | should_be | file | safe_to_patch |
| ----------- | ----------------- | ------------- | --------- | ---- | ------------- |
| Legacy status not updated after Pass 19 page creation | Varka | needs_ooc_audit | source_light_governance | character-inventory.md | yes |
| Legacy status not updated after Pass 19 page creation | Nicole | needs_ooc_audit | source_light_governance | character-inventory.md | yes |
| Inconsistent compound label | Columbina | audited_source_light | source_light_audited (or keep as-is — low priority) | character-inventory.md | P2 — cosmetic |

## Preferred Label Families (Reference)

### Source availability labels
- `source_missing` — zero local source files
- `source_absent` — confirmed absent after active search
- `indirect_source_only` — only intelligence/analysis files
- `source_light` — limited/insufficient primary sources
- `mixed` — has voice lines but missing character stories/quest dialogue

### Blocking labels
- `blocked_by_missing_source` — page exists, all claims blocked
- `no_local_package_found` — feasibility search found nothing
- `only_analysis_files_found` — no primary source, only analysis

### Evidence/claim status labels
- `evidence_found_guarded` — evidence exists, not canonized
- `partial_support_only` — some evidence, insufficient for canon
- `requires_human_review` — needs editorial judgment
- `requires_claim_mapping` — needs formal claim-mapping pass
- `non_quest_context` — evidence from voice lines not quest dialogue
- `deferred_to_pass_23` — legacy label, resolved in Pass 23+24

### Candidate labels (source type)
- `profile_candidate`, `voice_line_candidate`, `artifact_candidate`, `book_candidate`, `weapon_story_candidate`, `manga_candidate`, `event_candidate`

### Audit status labels
- `inventory_only` — Level 1
- `audited` — Level 2 completed
- `source_light_audited` — Level 2 but source-light
- `source_light_governance` — governance page created (not full foundation)
- `blocked_by_missing_source` — blocked, page exists as placeholder

## Summary

- Total observed labels: 26
- Labels requiring patch: 3 (2 P0, 1 P2)
- Label families defined: 5
- No global label replacement recommended without full-file context check
- Labels are additive/informational — no label carries canon authority by itself
