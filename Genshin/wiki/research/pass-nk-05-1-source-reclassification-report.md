# Pass NK-05.1 — Acts II–VII Source Reclassification Report

## Purpose
This corrective report addresses and corrects the misclassifications of Pass NK-05 regarding Nod-Krai / Snezhnaya Archon Quest Acts II–VII. It establishes a correct source classification model, verifies the official game status of these acts, and provides a safe provenance path for future ingestion.

> [!NOTE]
> **Pass NK-05.1a Update:** This report has been patched to fix official URLs, correct Fandom page IDs, and align the wording of claim evaluations to maintain strict governance before ingestion and mapping.

## What NK-05 Got Wrong
1.  **Fanon/Official Confusion:** Pass NK-05 misclassified the domain `genshin-impact.fandom.com` as a Fanon wiki. In doing so, it labeled the official game wiki pages as fan-created content.
2.  **Act Existence Denial:** NK-05 incorrectly asserted that "Song of the Welkin Moon" Acts II–VII do not exist in the live game. In our 2026 workspace context (which covers the Version 6.x/Luna series updates), these acts are officially released game content.
3.  **Transcript Failure:** NK-05 failed to look at the individual subquest pages linked from each act. It concluded that no dialogue transcripts existed, when in fact, the individual subquest pages on the Fandom wiki contain full, detailed dialogue transcripts with audio codes.

## Invalidated NK-05 Conclusions
*   *Invalid:* "Song of the Welkin Moon Acts II–VII are entirely fan-created content."
*   *Invalid:* "No official raw dialogue transcripts or database records exist because these acts do not exist in the official live game."
*   *Invalid:* "Unlocking these acts is impossible for the canon layer."

## Corrected Source Classification Model
Under the [External Source Policy](file:///D:/LoreResseach/Genshin/wiki/sources/EXTERNAL_SOURCE_POLICY.md), the re-audit uses the following taxonomy:
*   **Tier A (Official Source):** `official_hoyoverse` — Official patch notes, update logs, and announcements from `genshin.hoyoverse.com` (verified URLs) confirming quest existence, titles, release versions, and unlock requirements.
*   **Tier B (Provenance Candidate):** `fandom_main_wiki_transcript_candidate` — Pages on the main game wiki (`genshin-impact.fandom.com`) containing actual quest dialogue transcripts, trial details, and objective text.
*   **Tier C (Support Only):** `youtube_support_only` — Walkthrough videos used only for timestamp and visual verification.
*   **Tier D (Summary Only):** `fandom_main_wiki_walkthrough_only` — Pages that only outline walkthrough objectives and rewards without dialogue.

## Summary of Corrected Act Status
*   **Act II (Elegy of Dust and Lamplight):** Confirmed released in Version "Luna I" (September 2025). High-quality transcripts exist for all 5 subquests (e.g. *Fulminations and Undercurrents*).
*   **Act III (A Nation That Doesn't Exist):** Confirmed released in Version "Luna II" (October 2025). Transcripts exist on individual subquest pages (e.g. *Hidden in the Shadows*).
*   **Act IV (An Elegy for Faded Moonlight):** Confirmed released in Version "Luna II" (October 2025). Transcripts exist on individual subquest pages (e.g. *All Is Foretold*).
*   **Act V (A Nocturne of the Far North):** Confirmed released in Version "Luna III" (December 2025). Transcripts exist on subquest pages.
*   **Act VI (Melting Moonlight in the Morning Mist):** Confirmed released in Version "Luna III" (December 2025). Transcripts exist on subquest pages.
*   **Act VII (A Traveler on a Winter's Night):** Confirmed released in Version "Luna IV" (January 2026). Transcripts exist on subquest pages.
*   **Act VIII (True Moon):** Confirmed released in Version "Luna IV" (February 2026). Transcripts exist on subquest pages.

## Remaining Blockers
*   **No Local Transcripts:** The local directories in `sources/voice_lines/archon_quests/` are empty. Transcripts remain `local_source_missing` until a future ingestion pass creates these files.
*   **Revision Pinning Needed:** The Fandom page revisions must be locked in the next pass to prevent future community edits from drifting.
*   **Guarded Claims:** High-risk claim groups must remain guarded until local files are created and checked for contradiction.
