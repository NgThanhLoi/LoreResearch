# Pass NK-05.1 — Risk and Correction Report

This report documents the risks of the previous misclassification in Pass NK-05 and outlines the corrective actions taken.

---

## Identified Risks and Analysis

### 1. Previous Misclassification Risk
*   **Description:** By declaring official game updates (Luna series) and main-wiki pages as "entirely fan-created content," Pass NK-05 introduced the risk of deleting or ignoring valid canonical evidence in the wiki. It threatened to block legitimate lore updates.
*   **Correction:** We have performed a complete re-audit of the Fandom domain and HoYoverse updates, confirming the official status of the "Song of the Welkin Moon" chapter.

### 2. Official/Fandom Confusion Risk
*   **Description:** Misclassifying `genshin-impact.fandom.com` as Fanon can cause future editors to disregard all main-wiki transcripts.
*   **Correction:** The wiki guidelines have been reinforced to clarify that `genshin-impact.fandom.com` represents the main official game wiki, whereas fanon pages are hosted on separate domains or sub-communities (e.g. `genshin-impact-fanon.fandom.com`).

### 3. Fanon Contamination Risk
*   **Description:** The reverse risk—accidentally importing actual fanon pages as official canon—remains high.
*   **Correction:** Every candidate page must be audited by categories (`Archon Quest Acts`, `Released in Version...`), infoboxes, and namespaces to confirm it relates to the main official game database.

### 4. Fandom Revision Drift Risk
*   **Description:** Fandom pages are publicly editable, meaning transcripts can be modified or corrupted.
*   **Correction:** All provenance candidates must record the specific `revision_id` and timestamp retrieved from the MediaWiki API to lock the reference state.

### 5. Copyright Risk
*   **Description:** Ingesting full dialogue transcripts (which are up to 72k wikitext characters long) violates copyright policy and causes massive file bloat in the local repository.
*   **Correction:** The local files must be created as **extraction indices** (linking to specific sections, revision IDs, and short metadata summaries) instead of full transcript copies.

### 6. Transcript vs. Walkthrough Risk
*   **Description:** Some act pages are only walkthoughs and do not contain dialogue, which provides weak claim support.
*   **Correction:** Each page has been audited. The act master pages are walkthroughs, but the linked subquest pages contain the actual raw dialogue transcripts.

### 7. Summary vs. Raw Dialogue Risk
*   **Description:** Relying on summaries introduces subjective interpretation.
*   **Correction:** Ingestion must target the subquest pages containing raw dialogue (Tier B), rather than the summary-only act pages.

### 8. High-Risk Character Claim Risk
*   **Description:** Upgrading claims like Columbina being Kuutar or Dottore's false moon god directly to canon without local verification is highly risky.
*   **Correction:** All high-risk claim groups remain **guarded** or **blocked** until the next pass performs local ingestion and verification.

---

## Corrective Actions Taken
1.  **Invalidated NK-05 Reports:** Explicitly documented that the fanon conclusions in Pass NK-05 are invalid.
2.  **Verified HoYoverse Releases (Luna I–IV):** Corrected all official HoYoverse news update URLs to actual verified links (`159349`, `160521`, `161275`, `162159`, `162081`) instead of dummy URLs.
3.  **MediaWiki API Query & Audit Patch (NK-05.1a):** Re-checked and patched all page IDs, revision IDs, and timestamps for each main act page and individual subquest page. Corrected the duplicate Page ID typo for Act V (`420143`) and revision ID typo for *The Dark Side of Memory* (`2113334`).
4.  **Confirmed Dialogue Transcripts:** Verified the presence of Dialogue sections and actual transcript wikitext on individual subquest pages, adding all 19 subquests to the audit index.
5.  **Reclassified Candidates:** Upgraded all `EX-` candidates to `AQ-NK-ACT*-PROV-CANDIDATE` (Tier B).
6.  **Tightened Claim Wording (NK-05.1a):** Reassessed all 16 claim groups. Changed any wording implying canonization or absolute confirmation to `"transcript candidate found; eligible for future claim mapping after local ingestion"`.
7.  **Guarded Claims Framework (NK-05.1a):** Enforced a multi-state checklist status (`transcript_candidate_found`, `requires_local_ingestion`, `requires_claim_level_extraction`, `requires_human_review`) for all high-risk claim groups, keeping their safe-mapping status strictly set to `guarded` or `pending` (no premature canonization).
