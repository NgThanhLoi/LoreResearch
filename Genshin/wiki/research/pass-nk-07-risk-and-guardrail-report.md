# Pass NK-07 — Risk and Guardrail Report

This report outlines the copyright, canon, character plan, and design risks audited during Pass NK-07, along with the specific mitigations used to resolve them.

## Audited Risks & Mitigations

### 1. Copyright Risk
* **Risk**: Violating copyright policies by importing full dialogue transcripts, long quest walkthroughs, or massive fandom wikitext.
* **Mitigation**: Strictly enforced extremely short quotes (mostly single phrases or sentences) and summarized all dialogue context in the editor's own words. All raw text downloads were cached in a temporary scratch space (`C:\Users\loilo\.gemini\antigravity\scratch\`) and excluded from the main wiki files.

### 2. Transcript Overquote Risk
* **Risk**: Excessive quotes in the evidence index itself.
* **Mitigation**: The [pass-nk-07-evidence-index.md](file:///d:/LoreResseach/Genshin/wiki/research/pass-nk-07-evidence-index.md) contains only identification excerpts (e.g., 5-10 words) that prove the presence of the keywords without exposing creative text.

### 3. Source-Index Overclaim Risk
* **Risk**: Broadly upgrading whole source files to `primary_source_found` or `claim_mapped`.
* **Mitigation**: The `AQ-NK-ACT*` sources remain marked as candidate provenances under review. A specific note `selected_claims_deep_read_in_pass_nk_07` was added to limit status upgrades to the audited claims only.

### 4. High-Risk Claim Over-Upgrade Risk
* **Risk**: Mistakenly declaring unverified claims as narrator-safe canon or fully verified.
* **Mitigation**: Applied strictly guarded status labels (`evidence_found_guarded`, `partial_evidence_found`, `source_missing_after_deep_read`, `contradicted_by_deep_read`). No claim was labeled `canon` or `confirmed_canon`.

### 5. Full Character Plan Collision Risk
* **Risk**: Re-writing or standardizing character profiles to templates, duplicating Liyue/Mondstadt work, or creating new profiles.
* **Mitigation**: Absolutely no new character profiles were created (such as Skirk, Traveler, or Paimon which do not exist in `wiki/entities/characters/`). Normalization to `_character-template-v2.md` was skipped entirely.

### 6. Character Page Contamination Risk
* **Risk**: Over-editing character details such as Voice Guides, canon personalities, or relationships.
* **Mitigation**: Excluded all core sections from editing. Patches were restricted to `## Source Coverage Notes`, `## Theory / Interpretation`, and `## Sources`.

### 7. Region / Timeline Contamination Risk
* **Risk**: Writing timeline details or region profiles directly into regional pages (like `Nod_Krai.md`).
* **Mitigation**: Since `wiki/entities/nations/Nod_Krai.md` was not present in the workspace, it was left untouched. No Acts II-VII summary prose was added to any region file.

### 8. Fanfic Plot Contamination Risk
* **Risk**: Restructuring character paths or writing plot points to fit fanfictions.
* **Mitigation**: Maintained a strictly neutral, source-status-driven record of evidence. The status of claims is documented purely as database relations.

## Summary Checklist

| Quality Gate | Status | Details |
|---|---|---|
| No new character profiles | Pass | None created. |
| Restricted character page edits | Pass | Only edited Source Notes, Theories, and Sources. |
| Cautious status labels used | Pass | Labels like `evidence_found_guarded` applied. |
| Short quotes only | Pass | Excerpts limited to short fragments. |
