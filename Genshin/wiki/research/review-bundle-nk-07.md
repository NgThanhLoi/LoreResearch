# Pass NK-07 Compact Review Bundle

This bundle compiles all key reports, status mappings, and page patch summaries from Pass NK-07 to facilitate human-in-the-loop review and audit.

---

## 1. Pass Name and Purpose
* **Pass Name**: Pass NK-07 — Acts II–VII Deep Read / Claim-Level Extraction + Controlled Page Source-Status Patch.
* **Purpose**: Evaluate revision-pinned Snezhnaya / Nod-Krai Archon Quest Acts II–VII wikitext sources, extract copyright-safe evidence, map candidate claims, and apply controlled source-status updates to existing character pages and wiki registers.

## 2. Files Created
* `wiki/research/pass-nk-07-evidence-index.md`
* `wiki/research/pass-nk-07-claim-level-extraction-map.md`
* `wiki/research/pass-nk-07-page-patch-plan.md`
* `wiki/research/pass-nk-07-page-patch-report.md`
* `wiki/research/pass-nk-07-deep-read-report.md`
* `wiki/research/pass-nk-07-risk-and-guardrail-report.md`
* `wiki/research/pass-nk-07-next-actions.md`
* `wiki/research/review-bundle-nk-07.md` (this file)

## 3. Files Updated
* `wiki/entities/characters/Dottore.md`
* `wiki/entities/characters/Columbina.md`
* `wiki/entities/characters/Sandrone.md`
* `wiki/entities/characters/Aether.md`
* `wiki/entities/characters/Lumine.md`
* `wiki/synthesis/unverified-lore-register.md`
* `wiki/synthesis/contradiction-register.md`
* `wiki/synthesis/power-system-governance.md`
* `wiki/research/priority-source-map.md`
* `wiki/log.md`

## 4. Source-Index Changes
* No changes were made to global source index status; they remain registered as `provenance_candidate` with reliability `Medium / provenance candidate`.
* Notes were added to source entries in `priority-source-map.md` to reference the completed deep-read mapping.

## 5. Character/Entity Pages Touched
* Restrained edits applied to:
  * `Dottore.md` (source coverage notes on False Moon & Irminsul local core, updated theories, sources).
  * `Columbina.md` (source coverage notes on Frost Moon & Kuutar rejection, updated theories, sources).
  * `Sandrone.md` (source coverage notes on Khaenri'ahn ruins/bureau, lack of Rotwang evidence, updated theories, sources).
  * `Aether.md` / `Lumine.md` (source coverage notes on Moon Marrow containment and Rerir sibling phantoms, updated theories, sources).

## 6. Quality Gates Summary
* **Inspect Repo**: Pass. Checked existences before any page edit.
* **No New Profiles Created**: Pass. No files created for Skirk, Paimon, or Traveler.
* **Copyright Compliance**: Pass. Dialogue quotes restricted to short identifier excerpts.
* **No Character Plan Duplication**: Pass. Excluded all personality, voice guide, and relationship section edits.
* **Cautious Status Labels**: Pass. Used `evidence_found_guarded` and `source_missing_after_deep_read`.

## 7. Important Guardrails Preserved
* No claims upgraded to narrator-safe canon.
* Pinned oldids used to verify wikitext files.
* Region timelines and summaries left untouched.

## 8. High-Risk Claims & Statuses
* `columbina_kuutar` -> `evidence_found_guarded`
* `dottore_false_moon` -> `evidence_found_guarded`
* `dottore_irminsul_hack` -> `partial_evidence_found` (targets local core in Pulonia, not main tree)
* `sandrone_rotwang` -> `source_missing_after_deep_read` (blocked)
* `sandrone_khaenriah_link` -> `keep_guarded`
* `skirk_descender` -> `source_missing_after_deep_read` (blocked)
* `traveler_moon_marrow` -> `evidence_found_guarded`
* `abyss_sibling_actions` -> `keep_guarded` (sibling appearances are Rerir phantoms)

## 9. Source IDs Added or Proposed
* Mapped to existing source IDs: `AQ-NK-ACT2` through `AQ-NK-ACT8`.

## 10. Official URLs / Fandom Revision IDs Used
* Act II: Fandom revision `2113334`, `2113335`, `2048555`
* Act V: Fandom revision `2070820`
* Act VII: Fandom revision `2111680`, `2071024`
* Act VIII: Fandom revision `2113632`

## 11. Next Recommended Pass
* Return to Full Character Plan — Pass 15 Inazuma Character Foundation Batch.
* Optional NK-08 only if human review wants to approve source-status wording.

## 12. Unresolved Issues
* Mapped claims remain parked in guarded statuses pending human-in-the-loop review and cross-source verification.
* Profiles remain locked/blocked pending official in-game sources (voice lines, character stories).

---

## 13. Summaries of Original Report Files

### File: `wiki/research/pass-nk-07-page-patch-plan.md`
* Details proposed edits to existing registers and character files.
* Restricts edits to source-status and maintenance notes.
* Verifies no conflict exists with the character foundation plan.
* Pre-defines files to patch: `unverified-lore-register.md`, `contradiction-register.md`, `power-system-governance.md`, `priority-source-map.md`, `Dottore.md`, `Columbina.md`, `Sandrone.md`, `Aether.md`, and `Lumine.md`.
* *Critical Table Rows*: All rows mapped to specific evidence IDs and why edits are allowed.
* *Warnings/Failures*: None.

### File: `wiki/research/pass-nk-07-page-patch-report.md`
* Summarizes exact edits performed.
* Documents patched sections: `## Source Coverage Notes`, `## Theory / Interpretation`, and `## Sources`.
* Lists sections explicitly not touched (Personality, Voice Guide, Relationships, etc.).
* References specific evidence IDs for character page patches.
* Confirms registers updated (lore register, contradiction register, priority source map).
* *Warnings/Failures*: None.

### File: `wiki/research/pass-nk-07-deep-read-report.md`
* Explains deep-read purpose and source basis.
* Lists checked claim groups and revision oldids reopened.
* Summarizes findings: Columbina / Damselette is linked to Kuutar Moon Maiden terminology in checked pinned revisions, but Alice/Arlecchino state neither 'Columbina' nor 'Kuutar' is her true name; Dottore assumes "Heretic of the False Moon"; Dottore targeted a local Irminsul core; Sandrone has Khaenri'ahn ruin link; Rotwang and Skirk are absent from checked NK-07 pinned revisions.
* Outlines boundaries: no transcripts copied, no region timeline written.
* *Warnings/Failures*: None.

### File: `wiki/research/pass-nk-07-evidence-index.md`
* Indexes 16 evidence items matching the `NK07-[CLAIMGROUP]-[NNN]` pattern.
* Maps each evidence to Source ID, Act/Subquest, Speaker, and Excerpt.
* Declares relations (e.g. `supports_candidate`, `not_found`, `contradicts`).
* Rates confidence and maps next required action.
* *Critical Table Rows*:
| Evidence ID | Claim Group | Source ID | Revision | Speaker | Short Excerpt | Evidence Note | Relation | Confidence | Next Action |
|---|---|---|---|---|---|---|---|---|---|
| NK07-COLUMBINA-KUUTAR-001 | columbina_kuutar | AQ-NK-ACT2 | 2113334 | Damselette | "...birth a new deity... call the 'Kuutar'." | Columbina / Damselette is linked to Kuutar Moon Maiden terminology in checked pinned revisions. | supports_candidate | high | page_patch_allowed |
| NK07-DOTTORE-FALSE-MOON-001 | dottore_false_moon | AQ-NK-ACT7 | 2111680 | Dottore | "So, you've got your hands on the Moon Marrow..." | Uses Moon Marrow to assume heretic form. | supports_candidate | high | page_patch_allowed |
| NK07-SANDRONE-ROTWANG-001 | sandrone_rotwang | AQ-NK-ACT2 | 2048555 | None | N/A | Rotwang name absent from checked NK-07 pinned revisions. | not_found | high | keep_blocked |
| NK07-SKIRK-DESCENDER-001 | skirk_descender | AQ-NK-ACT7 | 2071024 | None | N/A | Skirk name absent from checked NK-07 pinned revisions. | not_found | high | keep_blocked |
* *Warnings/Failures*: None.

### File: `wiki/research/pass-nk-07-claim-level-extraction-map.md`
* Maps claims from previous status to new status after deep read.
* Summarizes relation of claims to evidence.
* Defines whether character profile patches were applied.
* *Critical Table Rows*:
| Claim Group | Previous Status | Deep-Read Result | Evidence IDs | New Status | Page Patch? | Notes |
|---|---|---|---|---|---|---|
| acts_ii_vii | `provenance_candidate_found` | Ingested & Deep-read | NK07-ACTS-II-VII-001 | `evidence_found_guarded` | yes | Pinned revisions contain all quest dialogues and stages. |
| columbina_kuutar | `transcript_candidate_found` | Supported by dialogue | NK07-COLUMBINA-KUUTAR-001/002 | `evidence_found_guarded` | yes | Columbina is linked to Kuutar Moon Maiden terminology in checked pinned revisions, but Alice/Arlecchino state neither 'Columbina' nor 'Kuutar' is her true name. |
| dottore_false_moon | `needs_deep_read` | Supported by dialogue | NK07-DOTTORE-FALSE-MOON-001 | `evidence_found_guarded` | yes | Dottore assumes "Heretic of the False Moon" form. |
| sandrone_rotwang | `needs_deep_read` | Not found in wikitext | NK07-SANDRONE-ROTWANG-001 | `source_missing_after_deep_read` | yes | Rotwang name absent from checked NK-07 pinned revisions. |
| skirk_descender | `transcript_candidate_found` | Not found in wikitext | NK07-SKIRK-DESCENDER-001 | `source_missing_after_deep_read` | yes | Skirk name absent from checked NK-07 pinned revisions. |
* *Warnings/Failures*: None.

### File: `wiki/research/pass-nk-07-risk-and-guardrail-report.md`
* Summarizes copyright risk, transcript overquote risk, and claim over-upgrade risk.
* Documents mitigations used to preserve project boundaries.
* Includes checklist verifying quality gates.
* *Warnings/Failures*: None.

### File: `wiki/research/pass-nk-07-next-actions.md`
* Recommends resuming Pass 15 Inazuma Character Foundation Batch.
* Recommends optional NK-08 only if human review wants to approve source-status wording.
* Recommends suspending all Nod-Krai region updates.
* *Warnings/Failures*: None.
