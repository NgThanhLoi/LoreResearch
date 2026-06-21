# Pass 9 Kaeya Claim Mapping Report

## Purpose

This report maps Kaeya character-story candidate claims against verified API fields from `CS-KAEYA-001` and the existing `wiki/entities/characters/Kaeya.md` page. It is report-only and does not update page files.

## Claim Mapping Table

| Candidate ID | Claim | Evidence section | Evidence ID | Verification status | Existing Kaeya page match | Current page source_status | Proposed status | Notes |
| ------------ | ----- | ---------------- | ----------- | ------------------- | ------------------------- | -------------------------- | --------------- | ----- |
| CSCLM-KAEYA-001 | Kaeya is an adopted son of the Ragnvindr family. | Character Details | CS-KAEYA-001-E01 | verified | Summary states Ragnvindr adoption; relationship table describes Diluc as adoptive brother. | mixed; relationship currently uses Kaeya voice line as `primary_source_found`; summary has no claim-level source row. | proposed_primary_source_found | Directly supported by the verified profile field; human review should decide where to attach the evidence. |
| CSCLM-KAEYA-002 | Kaeya serves as Cavalry Captain and handles incidents around Mondstadt. | Character Details | CS-KAEYA-001-E01 | verified | Canon Identity Role already states Cavalry Captain. Incident-handling appears in Summary/personality framing. | Role is `primary_source_found`; intelligence/operations framing is `indirect_source_only` where present. | proposed_supporting_source | Role already has voice-line support; CS-KAEYA-001 can support profile-level role and incident-response wording. |
| CSCLM-KAEYA-003 | Kaeya gathers intelligence through tavern socializing and conversation. | Character Story 1; Character Story 3 | CS-KAEYA-001-E02; CS-KAEYA-001-E04 | verified | `CHAR-KAEYA-TRAIT-001` says he leads an intelligence network and uses schemes to draw out criminals. Safe Uses mention Death After Noon at Angel's Share. | `indirect_source_only` with `needs_primary_source: true` for `CHAR-KAEYA-TRAIT-001`; safe-use note has no source_status. | proposed_primary_source_found | Verified sections support tavern/wine-context information gathering; voice lines support Kaeya's wine preference but not the full intelligence claim. |
| CSCLM-KAEYA-004 | Kaeya uses pragmatic and sometimes risky strategy to resolve threats. | Character Story 2 | CS-KAEYA-001-E03 | verified | `CHAR-KAEYA-TRAIT-001` covers strategic deception; OOC guidance emphasizes rational restraint. | `indirect_source_only` with `needs_primary_source: true` for `CHAR-KAEYA-TRAIT-001`. | ready_for_human_review | Supported, but page wording should avoid overstating methods beyond the verified story field. |
| CSCLM-KAEYA-005 | Kaeya conceals the truth of his past and bears a Khaenri'ah-related mission burden. | Character Story 4 | CS-KAEYA-001-E05 | verified | Summary and `CHAR-KAEYA-IMPLIED-001` discuss Khaenri'ah tension and inner conflict. | `indirect_source_only` for `CHAR-KAEYA-IMPLIED-001`; summary has no claim-level source row. | partial_support_only | Supports concealment, origin burden, and Khaenri'ah connection; do not expand into exact mission details unless human review confirms wording. |
| CSCLM-KAEYA-006 | Kaeya and Diluc were close before Crepus's death and later diverged after the Delusion incident. | Character Story 5 | CS-KAEYA-001-E06 | verified | Relationship table states complex adoptive-brother relationship and mentions the night Crepus died. | `primary_source_found` via Kaeya voice line for current relationship; historical details are broader than the voice-line source alone. | proposed_supporting_source | Supports historical relationship context; keep Crepus and Delusion details narrow and tied to this evidence ID. |
| CSCLM-KAEYA-007 | Kaeya received his Vision during the confrontation with Diluc after revealing his origin. | Vision | CS-KAEYA-001-E07 | verified | Canon Identity records Cryo Vision/power, but not the acquisition event. | `primary_source_found` for Cryo power only. | proposed_primary_source_found | Supports Vision acquisition context; proposed as a new evidence note, not an automatic page rewrite. |

## Claim Decisions

### Ready for Human Review

- CSCLM-KAEYA-001: direct support for Ragnvindr adoption.
- CSCLM-KAEYA-002: direct support for profile role and incident-response framing; role already has another source.
- CSCLM-KAEYA-003: direct support for tavern/social intelligence gathering when paired with the verified story fields.
- CSCLM-KAEYA-004: verified support, but page wording should stay restrained.
- CSCLM-KAEYA-006: verified support for relationship history, with careful wording around Crepus and the Delusion incident.
- CSCLM-KAEYA-007: direct support for Vision acquisition context.

### Partial / Needs Caution

- CSCLM-KAEYA-005: verified support for concealed past and Khaenri'ah burden, but not for broad or detailed mission claims.

### Not Supported

- None of the seven Pass 8 candidate claims failed verification.
- No Dottore, Sandrone, Columbina, Skirk, theory, or unrelated claim was mapped.
