# Pass NK-06 — Provenance Ingestion Report

## 1. Purpose

The purpose of Pass NK-06 is to register the metadata and revision-pinned indices for Snezhnaya / Nod-Krai Archon Quest Acts II–VII (and Act VIII as an appendix candidate). This moves the source infrastructure from `source_missing / blocked_unavailable` to `provenance_candidate_registered / pending_local_claim_mapping`.

This pass establishes the physical index files required for future claim mapping without introducing copyright risks or making premature canon updates.

## 2. Inputs from NK-05.1 / NK-05.1a

This pass relies directly on the outputs and corrections established in:
- **Pass NK-05.1 — Official/Fandom Reclassification Patch**
- **Pass NK-05.1a — Metadata + Wording Strictness Patch**

Key inputs:
- Pinned revision IDs and page IDs for the 6 main acts and 19 subquest pages.
- Corrected official HoYoverse URL IDs (159349, 160521, 161275, 162159, 162081) from the human-reviewed log, rejecting the incorrect placeholder IDs (1301, 1305, etc.).
- The `AQ-NK-ACT*-PROV-CANDIDATE` classification pattern (Tier B).

## 3. Local Files Created

We created 7 local provenance index files under the newly established directory:
`sources/provenance/archon_quests/nod-krai/`
- [AQ-NK-ACT2.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT2.md)
- [AQ-NK-ACT3.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT3.md)
- [AQ-NK-ACT4.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT4.md)
- [AQ-NK-ACT5.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT5.md)
- [AQ-NK-ACT6.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT6.md)
- [AQ-NK-ACT7.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT7.md)
- [AQ-NK-ACT8.md](file:///D:/LoreResseach/Genshin/sources/provenance/archon_quests/nod-krai/AQ-NK-ACT8.md)

## 4. External Pages and Official URLs Checked

We verified the following Fandom pages and official HoYoverse announcement news pages:
- **Act II:** `https://genshin-impact.fandom.com/wiki/Elegy_of_Dust_and_Lamplight` | HoYoverse ID: `159349`
- **Act III:** `https://genshin-impact.fandom.com/wiki/A_Nation_That_Doesn%27t_Exist` | HoYoverse ID: `160521`
- **Act IV:** `https://genshin-impact.fandom.com/wiki/An_Elegy_for_Faded_Moonlight` | HoYoverse ID: `160521`
- **Act V:** `https://genshin-impact.fandom.com/wiki/A_Nocturne_of_the_Far_North` | HoYoverse ID: `161275`
- **Act VI:** `https://genshin-impact.fandom.com/wiki/Melting_Moonlight_in_the_Morning_Mist` | HoYoverse ID: `161275`
- **Act VII:** `https://genshin-impact.fandom.com/wiki/A_Traveler_on_a_Winter%27s_Night` | HoYoverse ID: `162159`
- **Act VIII:** `https://genshin-impact.fandom.com/wiki/True_Moon` | HoYoverse ID: `162081`

All external links were found valid. In future steps, if URLs become unreachable, they will be marked as `official_url_status: needs_recheck`.

## 5. Ingested vs. Not Ingested

- **Ingested:**
  - Page IDs, Revision/oldid numbers, and timestamps.
  - Subquest lists and URL links.
  - Voice code indicators and character presence hints.
  - Local source-index registrations under candidate status.
- **Not Ingested (Forbidden):**
  - Full dialogue transcripts.
  - Dialogue summaries or long quest walkthroughs.
  - MediaWiki wikitext code bodies.

## 6. Copyright and Safety Handling

We strictly followed the **metadata-only copyright policy**. No copyrighted creative work from the Fandom community or official game scripts was cloned or mirrored locally. This keeps the database lean, focused, and legally compliant, storing only references (revision pins) that allow automated or manual tools to query the live wiki during active claim-mapping passes.

## 7. Summary Conclusion

Pass NK-06 successfully registers the source candidates for Acts II-VIII. By establishing these provenance records and updating the source index, we provide a secure, revision-pinned bridge to the game's actual script data, setting up the groundwork for Pass NK-07 (Deep Read and Claim Extraction).
