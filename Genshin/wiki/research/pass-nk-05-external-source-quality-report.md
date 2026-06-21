# Pass NK-05 — External Source Quality Report

This report evaluates and classifies the main families of external sources encountered in the Genshin Impact research pipeline according to the repository's [External Source Policy](file:///D:/LoreResseach/Genshin/wiki/sources/EXTERNAL_SOURCE_POLICY.md).

---

## Source Family Evaluations

### 1. HoYoverse Official
*   **Examples:** HoYoLAB posts, official website, web manga, official trailers, livestream updates, patch notes.
*   **Classification:** `usable_as_source` (Tier A)
*   **Rationale:** These are official developer materials. They can support canon claims directly, but only **after** local ingestion (using `SOURCE_TEMPLATE.md`), assignment of a valid source ID, and verification against in-game state.

### 2. Genshin Impact Wiki / Fandom (Official Game Pages)
*   **Examples:** Quest transcript pages, item descriptions, character dialogue logs for official quests.
*   **Classification:** `usable_as_provenance_candidate` (Tier B)
*   **Rationale:** The main Fandom wiki contains high-quality transcripts of the live game. They must be verified against actual in-game text before being upgraded from candidate to secondary transcription status, but they are highly reliable for structure and dialogue.

### 3. Fandom MediaWiki API
*   **Examples:** Raw JSON/wikitext pages fetched via API, containing page ID, revision ID, and timestamp metadata.
*   **Classification:** `usable_as_provenance_candidate` (Tier B)
*   **Rationale:** Useful for automated ingestion and establishing verifiable provenance trails (such as Kaeya's character stories). They lock in a specific version of the page, protecting the repository against wiki edit drift.

### 4. genshin-db or Other Structured Database
*   **Examples:** Honey Impact, Project Amber, genshin-db API.
*   **Classification:** `usable_as_provenance_candidate` (Tier B)
*   **Rationale:** Provides clean, structured item/quest metadata. Excellent for automated checks but must be verified against live gameplay before claim-level mapping.

### 5. YouTube Playthroughs / Video Gameplay
*   **Examples:** Video quest walkthroughs, cutscene compilations.
*   **Classification:** `support_only` (Tier C)
*   **Rationale:** Playthroughs are only used to verify the physical existence of quests and to verify timing/visual context. They do **not** provide written transcripts and must never be used to establish text-based dialogue canon.

### 6. Game Guide Sites
*   **Examples:** Game8, GameWith, Icy Veins, BlueStacks.
*   **Classification:** `summary_only_do_not_canonize` (Tier D)
*   **Rationale:** These sites write summaries for gameplay guides. They contain high risk of summary errors and offer zero value for primary lore transcripts.

### 7. Reddit / HoYoLAB / Community Discussions
*   **Examples:** r/Genshin_Lore, lore theory threads, analysis posts.
*   **Classification:** `summary_only_do_not_canonize` (Tier D)
*   **Rationale:** Useful only for identifying community theories or mapping fanon risk/unverified claims. They must never support a canon claim.

### 8. Genshin Impact Fanon Wiki / Fanon Storylines
*   **Examples:** The "Song of the Welkin Moon" chapter acts, fan-written quest wikis, spin-offs.
*   **Classification:** `quarantine` / `summary_only_do_not_canonize` (Tier D / Tier E)
*   **Rationale:** Since these are purely creative fanfiction projects, they have zero canonical validity. They must be quarantined and blocked from the canon layer of the wiki.

### 9. Leak Sources
*   **Examples:** r/Genshin_Impact_Leaks, datamined unreleased beta text.
*   **Classification:** `quarantine` (Tier E)
*   **Rationale:** Strictly banned from the `sources/` directory and claim mapping. If confirmed upon official release, new sources must be created from official released material, not the leaks.
