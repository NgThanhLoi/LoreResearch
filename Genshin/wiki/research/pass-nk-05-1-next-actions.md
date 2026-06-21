# Pass NK-05.1 — Next Actions

> [!NOTE]
> **Corrective Patch NK-05.1a Status:** Complete. Official HoYoverse news URLs, MediaWiki API subquest/act metadata (page IDs, revision IDs, timestamps), and claim group wording strictness have been fully patched. Option A (Pass NK-06) is now ready to proceed.

## Recommended Option

**Option A — Pass NK-06: Acts II–VII Provenance Ingestion & Source Index Candidate Registration**

### Rationale
Our re-audit has successfully verified that the main-wiki Fandom pages (`genshin-impact.fandom.com`) for Nod-Krai Acts II–VII are official-game wiki pages, cross-confirmed by HoYoverse update details on `genshin.hoyoverse.com`. 

Crucially, we have verified that the individual subquest pages contain full, high-quality dialogue transcripts (ranging from 19k to 72k wikitext characters) complete with in-game voice line audio codes.

Because strong Tier B transcript candidates exist and have been successfully cataloged with MediaWiki API metadata (page IDs, revision IDs, and timestamps), we can now safely proceed with local ingestion.

---

## Action Plan for Pass NK-06
1.  **Create Provenance Files:** Create local metadata files in `sources/provenance/archon_quests/nod-krai/` for each act.
2.  **Pin Revisions:** Hardcode the fetched MediaWiki API page IDs and revision IDs (e.g. `2113329` for Act II, `2113330` for Subquest 1) in the local source files to prevent edit drift.
3.  **Register Candidates:** Add the new source IDs (e.g. `AQ-NK-ACT2-PROV-CANDIDATE` through `AQ-NK-ACT8-PROV-CANDIDATE`) to [source-index.md](file:///D:/LoreResseach/Genshin/wiki/sources/source-index.md) as unverified/provenance candidates.
4.  **Claim Mapping:** Prepare the claim group mapping files to connect the verified transcripts to the wiki pages in a future verification pass.
5.  **Maintain Guardrails:** Keep all high-risk claim groups guarded until local files are written and peer-reviewed.
