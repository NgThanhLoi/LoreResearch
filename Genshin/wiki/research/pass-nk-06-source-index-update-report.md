# Pass NK-06 — Source Index Update Report

## 1. Source-Index Rows Added

The following rows were appended to a new subsection `## 2d. Pass NK-06 Snezhnaya / Nod-Krai Archon Quest Provenance Candidates` in [source-index.md](file:///D:/LoreResseach/Genshin/wiki/sources/source-index.md):
- **AQ-NK-ACT2**
- **AQ-NK-ACT3**
- **AQ-NK-ACT4**
- **AQ-NK-ACT5**
- **AQ-NK-ACT6**
- **AQ-NK-ACT7**
- **AQ-NK-ACT8**

## 2. Source-Index Rows Skipped

No rows from the corrected NK-05.1 / NK-05.1a index candidate list were skipped. The main scope of Acts II–VII is fully mapped, and Act VIII was successfully added as an appendix.

## 3. Collision Check

We performed a collision check against the existing file-level candidates (sections 2, 2b, and 2c of the source index). 
- No conflicting IDs were found.
- The `AQ-NK-ACT*` pattern is distinct from `VLAQ-` (Archon Quest voice lines for released regions) and `CS-` (Character Stories).
- It successfully replaces the incorrect, rejected `EX-` (Fanon/External) pattern proposed in legacy files.

## 4. Why Status is `provenance_candidate`, not `primary_source_found`

A source can only be marked as `primary_source_found` or `deep_read_confirmed` once its contents have been physically read, analyzed, and mapped to specific claims. 
Since Pass NK-06 is restricted to **metadata ingestion and revision-pinning**, we have not yet read or extracted any dialogue claims. Marking these sources as `provenance_candidate` accurately represents their status: they are registered candidates with verified existence, but their internal claims are still unverified and unmapped.

## 5. Future Update Requirements

During Pass NK-07 (Deep Read / Claim Extraction), selected dialogue excerpts will be evaluated. Once specific claims are matched and registered, the status of these source index entries may be upgraded to reflect active mapping (e.g., `needs_claim_level_extraction` or `claim_mapped`), and the "Used by pages" column should be updated to point to the relevant entities or synthesis documents.
