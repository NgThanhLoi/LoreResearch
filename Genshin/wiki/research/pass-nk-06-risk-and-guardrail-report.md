# Pass NK-06 — Risk and Guardrail Report

## 1. Identified Risks

### A. Copyright Risk
- **Risk:** Copying dialogue transcripts, quest walk-through summaries, or massive chunks of MediaWiki text into the local repository violates external copyright boundaries and clutters the database.
- **Mitigation:** Strict metadata-only ingestion policy. Only revision pins (URLs, page IDs, oldids, timestamps, categories) and simple lists of covered entities are stored. No dialogue text is archived locally.

### B. Fandom Revision Drift Risk
- **Risk:** The Fandom wiki is community-editable. Page contents may change over time, resulting in drift between the local indices and the live pages.
- **Mitigation:** Revision pinning. We record the specific `revision ID / oldid` for each page. Any future tool reading these pages must specify the pinned revision ID, isolating our codebase from live updates.

### C. Official URL Drift Risk
- **Risk:** HoYoverse news URLs can break, redirect, or go offline.
- **Mitigation:** Official URL verification. If a HoYoverse URL fails to load, it must be flagged with `official_url_status: needs_recheck` instead of being silently replaced or guessed.

### D. API Failure Risk
- **Risk:** Automated MediaWiki API scripts can fail due to network, rate-limiting, or domain blocks.
- **Mitigation:** Graceful degradation. If the API fails, the system logs:
  ```text
  api_status: failed
  failure_reason: [error message]
  fallback_method: [manual inspection or retry]
  needs_manual_review: true
  ```

### E. Transcript vs. Walkthrough Risk
- **Risk:** Distinguishing official quest dialogue from community walkthrough advice or editorial comments is critical. Walkthrough guides contain player tips that are not canon.
- **Mitigation:** We index only pages classified as `fandom_main_wiki_transcript_candidate` and target the specific dialogue sections, ignoring guide sections.

### F. Source-Index Overclaim Risk
- **Risk:** Registering new sources could lead downstream scripts or authors to believe that claims have already been verified.
- **Mitigation:** All added rows in `source-index.md` are marked `provenance_candidate` with reliability `Medium / provenance candidate`, warning that a deep read has not yet occurred.

### G. High-Risk Claim Over-Upgrade Risk
- **Risk:** Prematurely moving high-risk claims (e.g. Dottore's hacks or Skirk's Descender definitions) to verified canon.
- **Mitigation:** All claims in the preparation map are labeled `provenance_candidate_found` or `needs_deep_read`. No canon upgrades are allowed.

### H. Character Page Contamination Risk
- **Risk:** Modifying character foundation files (e.g. Dottore, Columbina, Kaeya) with unverified Act II-VII claims.
- **Mitigation:** No files under `wiki/entities/characters/` were modified.

### I. Fanfic Plot Contamination Risk
- **Risk:** Injecting fan-fiction plot lines, chapters, or premises into the database.
- **Mitigation:** Strictly no creative writing or plot outlining occurred. This pass was confined entirely to index infrastructure.

## 2. Mitigations Applied

1. **Clean Directory Isolation:** All new files were placed in the dedicated `sources/provenance/archon_quests/nod-krai/` folder.
2. **Metadata Frontmatter Validation:** Every file contains YAML frontmatter defining its copyright status and pass origin (`NK-06`).
3. **No Unverified Data:** Pinned IDs (e.g., page IDs like `395211`) were verified against the audited data in `pass-nk-05-1-fandom-page-audit.md` and the official release notices.
