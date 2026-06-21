# Pass NK-05 — Local Ingestion Plan

## Overview
Because the search in Pass NK-05 revealed that "Song of the Welkin Moon" Acts II–VII are entirely fan-created content (Fanon), **no mass ingestion into the canon layer of the wiki is feasible or permitted**. The official quest files must remain blank or in a `source_missing` / `blocked_unavailable` state.

However, if the workspace requires documenting these acts to govern the Alternate Universe (AU) or fanfiction layer (to manage unverified theories and OOC risks), this plan outlines how to ingest the metadata safely without contaminating the canon layer.

## Ingestion Priority
If ingestion is triggered for the AU/Theory layer, the metadata should be ingested in order of quest release:
1.  **Act II:** "Elegy of Dust and Lamplight" (EX-NK-ACT2-CANDIDATE)
2.  **Act III:** "A Nation That Doesn't Exist" (EX-NK-ACT3-CANDIDATE)
3.  **Act IV:** "An Elegy for Faded Moonlight" (EX-NK-ACT4-CANDIDATE)
4.  **Act V:** "A Nocturne of the Far North" (EX-NK-ACT5-CANDIDATE)
5.  **Act VI:** "Melting Moonlight in the Morning Mist" (EX-NK-ACT6-CANDIDATE)
6.  **Act VII:** "A Traveler on a Winter's Night" (EX-NK-ACT7-CANDIDATE)
7.  **Act VIII:** "True Moon" (EX-NK-ACT8-CANDIDATE)

## Storage Policy (No Full Text)
*   **DO NOT** copy or store copyrighted wiki text or full dialogue summaries in the local workspace.
*   **DO** store metadata only. Each ingested candidate file must contain:
    *   Fandom Page URL and Page ID.
    *   Pinned Revision ID (oldid) to prevent drift.
    *   Retrieval timestamp.
    *   List of characters and factions appearing in the summary.
    *   Map of fanon claim groups covered.

## Proposed Source ID Convention
*   **External Candidates:** Keep the `EX-` prefix:
    *   `EX-NK-ACT2-CANDIDATE` through `EX-NK-ACT8-CANDIDATE`
*   **Local AU/Fanon Indexing:** If registered locally, they must use an `AU-` (Alternate Universe) prefix to prevent confusion with official `AQ-` (Archon Quest) sources:
    *   `AU-NK-ACT2-SUM` through `AU-NK-ACT8-SUM`
*   Official IDs (like `AQ-NK-ACT2`) **must never** be assigned to these files.

## Future Files to Create
If the AU layer is activated, a new registry file should be created:
*   `wiki/sources/fanon-source-index.md` — to index and track fanon-only metadata separate from the official `source-index.md`.

## Checksums and Revision Requirements
*   Every external candidate record must include the Fandom wiki revision ID (e.g., `2099816` for the fetched chapter page) to ensure reproducibility.
*   Retrieved timestamp must be recorded as ISO 8601 (e.g., `2026-06-21T15:00:00Z`).

## Human Review Requirements
1.  **Strict Demarcation:** Any ingestion must be manually reviewed to confirm that no `AU-` or `EX-` source is mapped to `CANON` claims.
2.  **Unverified Register Mapping:** Ensure that all claims supported by these ingested summaries are mapped exclusively in [unverified-lore-register.md](file:///D:/LoreResseach/Genshin/wiki/synthesis/unverified-lore-register.md) with labels like `THEORY / UNVERIFIED` or `THEORY / HEADCANON`.
