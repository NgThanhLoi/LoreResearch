# Pass NK-06 Review Bundle — Acts II–VII Ingestion & Source Index Candidate Registration

This bundle provides a compact, self-contained summary of Codex Pass NK-06, designed for review and transfer.

## 1. Overview

- **Pass Name:** Codex Pass NK-06 — Snezhnaya / Nod-Krai Acts II–VII Ingestion & Source Index Candidate Registration
- **Purpose:** Formally ingest metadata, pin revisions, and register Snezhnaya / Nod-Krai Archon Quest Acts II–VII (and Act VIII) as provenance candidate sources in the central index. This transitions them from `source_missing / blocked_unavailable` to `provenance_candidate_registered / pending_local_claim_mapping` without storing copyrighted transcripts or prematurely upgrading canon pages.

---

## 2. Ingestion Metadata & Pinned Sources

The following official HoYoverse announcement URLs and Fandom MediaWiki revision pins were used to establish the local provenance records:

| Source ID | Act Title | Official HoYoverse URL | Fandom Act URL | Page ID | Pinned Revision (oldid) | Timestamp |
| :--- | :--- | :--- | :--- | :---: | :---: | :--- |
| **AQ-NK-ACT2** | Elegy of Dust and Lamplight | `.../detail/159349` | `.../wiki/Elegy_of_Dust_and_Lamplight` | 395211 | 2113329 | 2026-06-18T23:27:38Z |
| **AQ-NK-ACT3** | A Nation That Doesn't Exist | `.../detail/160521` | `.../wiki/A_Nation_That_Doesn%27t_Exist` | 408386 | 2106489 | 2026-06-18T23:27:38Z |
| **AQ-NK-ACT4** | An Elegy for Faded Moonlight | `.../detail/160521` | `.../wiki/An_Elegy_for_Faded_Moonlight` | 408387 | 2113774 | 2026-06-19T06:31:44Z |
| **AQ-NK-ACT5** | A Nocturne of the Far North | `.../detail/161275` | `.../wiki/A_Nocturne_of_the_Far_North` | 420143 | 2089444 | 2026-06-18T23:27:38Z |
| **AQ-NK-ACT6** | Melting Moonlight in the Morning Mist | `.../detail/161275` | `.../wiki/Melting_Moonlight_in_the_Morning_Mist` | 420144 | 2092224 | 2026-06-20T07:07:23Z |
| **AQ-NK-ACT7** | A Traveler on a Winter's Night | `.../detail/162159` | `.../wiki/A_Traveler_on_a_Winter%27s_Night` | 429476 | 2087899 | 2026-06-20T07:07:23Z |
| **AQ-NK-ACT8** | True Moon (Appendix) | `.../detail/162081` | `.../wiki/True_Moon` | 429478 | 2113632 | 2026-06-20T07:07:23Z |

*Note: The official URL prefix is `https://genshin.hoyoverse.com/en/news` and the Fandom prefix is `https://genshin-impact.fandom.com`.*

---

## 3. Files Created & Updated

### Files Created:
- **Provenance files:**
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT2.md`
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT3.md`
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT4.md`
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT5.md`
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT6.md`
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT7.md`
  - `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT8.md`
- **Research Reports:**
  - `wiki/research/pass-nk-06-provenance-ingestion-report.md`
  - `wiki/research/pass-nk-06-created-provenance-files-report.md`
  - `wiki/research/pass-nk-06-source-index-update-report.md`
  - `wiki/research/pass-nk-06-act-subquest-revision-map.md`
  - `wiki/research/pass-nk-06-transcript-coverage-index.md`
  - `wiki/research/pass-nk-06-claim-mapping-prep.md`
  - `wiki/research/pass-nk-06-risk-and-guardrail-report.md`
  - `wiki/research/pass-nk-06-next-actions.md`

### Files Updated:
- [source-index.md](file:///D:/LoreResseach/Genshin/wiki/sources/source-index.md) (Registered the 7 new AQ-NK-ACT* provenance index entries).
- [log.md](file:///D:/LoreResseach/Genshin/wiki/log.md) (Added Pass NK-06 completion summary).

### Character/Entity/Source Pages Touched:
- **None.** No files under `wiki/entities/characters/`, `wiki/entities/nations/`, or synthesis directories (except source-index/log) were touched.

---

## 4. Quality Gates & Guardrails Summary

- **Quality Gates Passed:**
  - [x] Pinned revision IDs matching audited Fandom page API data.
  - [x] Official URL IDs matching human-reviewed announcements (Luna I-IV: 159349, 160521, 161275, 162159, 162081).
  - [x] No duplicate/misclassified `EX-` fanon IDs used.
  - [x] YAML frontmatter correctly written for all 7 provenance index files.
- **Important Guardrails Preserved:**
  - **No Copyright Dumps:** No raw dialogue transcript text was copied locally.
  - **No Canon Upgrades:** The reliability of all added source-index rows remains `Medium / provenance candidate` and status remains `provenance_candidate`.
  - **No Creative Writing:** No fanfic chapter outlining, timelines, or premises were created.

---

## 5. High-Risk Claims & Status Matrix

All high-risk claim groups remain strictly blocked/guarded pending the Pass NK-07 deep-read:

| Claim Group | Candidate Act/Subquest | Current Status | Guardrail Constraint |
| :--- | :--- | :--- | :--- |
| **acts_ii_vii** | Acts II-VII subquests | `provenance_candidate_found` | Blocked until claim-level verification is complete. |
| **columbina_kuutar** | Act VI — *Return to the Moon* | `transcript_candidate_found` | Keep guarded. No character page updates. |
| **dottore_false_moon** | Act VII — *Moonless Night* | `needs_deep_read` | Keep guarded. No character page updates. |
| **dottore_irminsul_hack** | Act VII — *Where Our Space and Time Intersect* | `needs_deep_read` | Keep blocked. |
| **sandrone_rotwang** | Act II — *The Ashen-White Order Burns* | `needs_deep_read` | Keep guarded. No character page updates. |
| **sandrone_khaenriah_link** | Act II — *The Ashen-White Order Burns* | `needs_deep_read` | Keep blocked. |
| **skirk_descender** | Act VII — *Where Our Space and Time Intersect* | `transcript_candidate_found` | Keep blocked. No character page updates. |
| **false_sky_mechanics** | Act III & VII subquests | `needs_deep_read` | Keep guarded. |
| **true_welkin_moon** | Act IV & VIII pages | `needs_deep_read` | Keep guarded. |
| **moon_authority** | Act VI & VIII pages | `needs_deep_read` | Keep guarded. |
| **traveler_moon_marrow** | Act V — *In the Shifting Light...* | `needs_deep_read` | Keep blocked. |
| **abyss_sibling_actions** | Act VII — *Where Our Space and Time...* | `transcript_candidate_found` | Keep guarded. |
| **voynich_guild** | Act II — *The Dark Side of Memory* | `needs_deep_read` | Keep guarded/blocked. |
| **nefer_boss_lady** | Act II — *Fulminations and Undercurrents* | `needs_deep_read` | Keep guarded. |
| **nod_krai_later_locations** | Act V — *Ripples That Will Never Reach* | `provenance_candidate_found` | Keep guarded. No region profile updates. |
| **harbinger_actions** | Act III & VI subquests | `needs_deep_read` | Keep guarded. |

---

## 6. Summaries of Research Reports

### A. Provenance Ingestion Report
- **File Path:** `wiki/research/pass-nk-06-provenance-ingestion-report.md`
- **Summary:**
  - Evaluates the ingestion methodology and outlines transition of Acts II-VII/VIII source states.
  - Confirms validation of inputs from Pass NK-05.1/NK-05.1a corrective patches.
  - Identifies the 7 newly created index files in `sources/provenance/`.
  - Details checks on external Fandom main wiki pages and official HoYoverse announcements.
  - Lists ingested metadata: Page IDs, revision IDs, subquest structures, voice-over code tags.
  - Lists excluded metadata: Full transcripts, narrative guides, walkthrough text.
  - Validates the copyright compliance approach (strict metadata-only containment).
  - Outlines safety boundary enforcement prohibiting canon upgrades.
  - Establishes transition groundwork for future claim mapping in Pass NK-07.

### B. Created Provenance Files Report
- **File Path:** `wiki/research/pass-nk-06-created-provenance-files-report.md`
- **Summary:**
  - Lists and validates all 7 local provenance file paths.
  - Maps source IDs (AQ-NK-ACT2 to AQ-NK-ACT8) to their official act titles.
  - Counts subquests covered in each act metadata index (ranging from 0 for Act VIII to 5 for Act II).
  - Verifies that YAML frontmatter properties are present in all created files.
  - Confirms zero dialog transcripts are held in local files.
  - Highlights specific voice line tags mapped (e.g. Heikki, Lauma, Fevroniya, Columbina).
  - Verifies that all status flags are set to `provenance_candidate`.

### C. Source Index Update Report
- **File Path:** `wiki/research/pass-nk-06-source-index-update-report.md`
- **Summary:**
  - Documents the additions made to `wiki/sources/source-index.md`.
  - Details the creation of section `## 2d. Pass NK-06 Snezhnaya / Nod-Krai Archon Quest Provenance Candidates`.
  - Explains the collision audit confirming no overlap with `VLAQ-` or `CS-` records.
  - Clarifies why reliability is limited to `Medium / provenance candidate`.
  - Explains the use of `provenance_candidate` status instead of `primary_source_found`.
  - Details downstream tracking requirements for "Used by pages" in the index.

### D. Act & Subquest Revision Map
- **File Path:** `wiki/research/pass-nk-06-act-subquest-revision-map.md`
- **Summary:**
  - Creates a master directory mapping all 6 acts and 19 subquests to their API metadata.
  - Pins every page to its respective Page ID (e.g. `395211` for Act II) and Revision ID (e.g. `2113329` for Act II).
  - Assigns a last-modified timestamp validation record for each entry.
  - Identifies which subquests contain dialog scripts and voice audio codes.
  - Logs API query success status (`successful`) for all 19 pages.

### E. Transcript Coverage Index
- **File Path:** `wiki/research/pass-nk-06-transcript-coverage-index.md`
- **Summary:**
  - Reviews size properties for all Fandom transcript pages checked.
  - Lists page size estimations (e.g. ~35 KB for Act VI Return to the Moon, ~40 KB for Act VII Space/Time).
  - Maps detected entities and factions (such as Fatui, Skirk, Dainsleif, Columbina) to subquest scripts.
  - Tracks specific voice-over audio filename patterns (e.g. `vo nkaq205 4 columbina 01.ogg`).
  - Distinguishes dialogue markup (`<div class="dialogue">`) from walkthrough commentary to ensure data accuracy.

### F. Claim Mapping Preparation
- **File Path:** `wiki/research/pass-nk-06-claim-mapping-prep.md`
- **Summary:**
  - Maps 16 Snezhnaya / Nod-Krai claim groups to potential evidence locations.
  - Assigns guarded statuses (`provenance_candidate_found`, `transcript_candidate_found`, `needs_deep_read`) to all groups.
  - Details specific subquests containing candidate dialogue for Columbina, Dottore, and Skirk.
  - Outlines the verification requirements and boundaries for each group.
  - Prohibits canon upgrades or character foundation page edits prior to Pass NK-07 deep-read.

### G. Risk and Guardrail Report
- **File Path:** `wiki/research/pass-nk-06-risk-and-guardrail-report.md`
- **Summary:**
  - Evaluates 9 categories of technical, copyright, and content risk.
  - Details mitigations against copyright issues (metadata-only) and revision drift (oldid pinning).
  - Establishes rules for handling HoYoverse URL drift and MediaWiki API failures.
  - Documents character page isolation, verifying no files in `entities/` were touched.
  - Enforces the quarantine of fanfic plot elements and theories.

### H. Next Actions Report
- **File Path:** `wiki/research/pass-nk-06-next-actions.md`
- **Summary:**
  - Recommends Pass NK-07: Acts II–VII Deep Read / Claim-Level Extraction Map as the next action.
  - Establishes the technical parameters of the next pass.
  - Recommends querying the pinned revision IDs directly.
  - Outlines requirements for extracting short, copyright-safe dialogue quotes.
  - Reinforces safety limits, preventing direct character page modifications during Pass NK-07.

---

## 7. Unresolved Issues & Next рекомендован steps

- **Unresolved Issues:**
  - Dialogue transcripts remain unread and unmapped at the claim level.
  - All Snezhnaya/Nod-Krai high-risk claims remain guarded and blocked from character foundation pages.
  - The misplaced Natlan Archon Quest Act V file remains quarantined in the Nod-Krai directory.
- **Next Recommended Pass:**
  - **Pass NK-07 — Acts II–VII Deep Read / Claim-Level Extraction Map** to inspect pinned revisions and extract copyright-safe dialogue evidence.
