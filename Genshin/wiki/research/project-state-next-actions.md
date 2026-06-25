# Project State — Next Actions

> [!IMPORTANT]
> SUPERSEDED HISTORICAL SNAPSHOT — This file is not the current project state.
> Current source of truth after Pass 25:
> - `wiki/research/pass-25-pass-status-matrix.md`
> - `wiki/research/pass-25-next-actions.md`
> - `wiki/research/pass-25-dedup-page-status-cleanup-report.md`
>
> Any statements in this file that say Pass 19+, Pass 20+, Pass 21+, Pass 22+, Pass 23+, or later passes are `NOT STARTED` are stale and must not be used for current planning.

> **Date:** 2026-06-24 | **Source:** This comprehensive audit

---

## Immediate Fixes

| Priority | Task | Rationale |
| --- | --- | --- |
| 🔴 P0 | **Decide project direction** | The regional foundation pipeline is fully complete (Pass 13–18). The project is at a clean branch point. Decide whether to (a) continue with source governance (Pass 19+) or (b) begin fanfic premise/outline planning. |
| 🔴 P0 | **Open Pass 19 — Cross-Faction Source-Light Batch** | Logged as next step since Pass 18.2 but never started. Dottore, Sandrone, Columbina, Skirk, Nicole, Varka remain blocked or source-light. |
| 🟡 P1 | **Reconcile character-inventory count** | 112 entries in inventory table vs "109" stated in inventory header vs 99 wiki pages. Needs one authoritative count. |
| 🟡 P1 | **Update character-inventory to reflect Pass 13–18.2 work** | Inventory currently reflects Phase 3 status (many entries show "inventory_only" that now have Pass 13–18 foundation pages). |

---

## Next Pass Recommendation

### Suggested Pass 19 — Cross-Faction Source-Light Batch

**Scope:**
1. Create/update Level 2 governance/source-light pages for:
   - Dottore (update existing `blocked_by_missing_source` — NK-07 evidence referenced)
   - Sandrone (update existing `blocked_by_missing_source` — NK-07 evidence referenced)
   - Columbina (update existing `audited_source_light` with NK-07 findings)
   - Skirk (create new page with `source_missing` status)
   - Nicole (create new page with `needs_ooc_audit` status)
   - Varka (create new page with `source_missing` status)
2. Update character-inventory and audit backlog to reflect all Pass 13–18.2 changes
3. Update ooc-risk-index and headcanon-fanon-policy for cross-faction characters
4. NO source-index changes unless provenance files are created
5. NO source IDs created
6. NO claim mapping
7. NO character-story ingestion

**Dependency:** None — independent of other passes.

### Suggested Pass 19.5 — Source-Missing Character Resolution Plan

**Scope:**
1. Formal priority ingestion queue for all source-missing characters
2. Source requirement map per character (what specific documents are needed)
3. Feasibility assessment for each ingestion route (Fandom API, official release, etc.)
4. Estimated effort and priority ranking

**Dependency:** After Pass 19 (to have accurate source-status baseline).

### Suggested Pass 20 — Character-Story Provenance Ingestion (Priority Batch A)

**Scope:**
1. Ingest character stories via Fandom API (tested working in Pass 8) for priority characters
2. Create CS source IDs for 5–10 priority characters
3. Create provenance records (not full transcripts) per EXTERNAL_SOURCE_POLICY

**Dependency:** After Pass 19/19.5 prioritization.

### Suggested Pass 21 — Character-Story Provenance Ingestion (Batch B)

**Scope:**
1. Continue character-story provenance for remaining priority characters
2. Focus on blocked/source-light characters first

**Dependency:** After Pass 20.

### Suggested Pass 22 — Quest Dialogue Provenance (Batch A)

**Scope:**
1. Map quest dialogue coverage for priority claim groups
2. Create provenance records for key quest arcs (similar to NK-06 pattern)

**Dependency:** After character-story passes.

### Suggested Pass 23+ — Claim Mapping

**Scope:**
1. Begin claim-level mapping for audited characters
2. Update character pages with verified source IDs
3. Upgrade guarded claims after human review

**Dependency:** After source ingestion passes. Per roadmap: "Keep claim mapping for Pass 26+."

---

## NK-08 (Optional)

If human review wants to approve source-status wording changes based on NK-07 evidence:

**Scope:**
1. Review NK-07 evidence index
2. Approve or reject source-status wording changes for Dottore, Columbina, Sandrone, Aether, Lumine
3. Apply approved changes to character pages and synthesis registers

---

## Long-Term Roadmap Status

| Phase | Status | Notes |
| --- | --- | --- |
| Phase 3.0 — Inventory | ✅ Complete | 112 entries in character-inventory.md |
| Phase 3.1 — First High-Risk Batch | ✅ Complete | 5 audited |
| Phase 3.2 — Lore-Impact Batch | ✅ Complete | 13 audited, 2 blocked |
| Phase 3.3 — Region/Faction Batches | ✅ Complete (Pass 13–18.2) | 81 foundation pages across 6 regions |
| Phase 3.4 — Low-Risk Cleanup | ⏸️ Deferred | Not needed until project requires it |
| Source Ingestion (Pass 20–21) | ❌ Not started | Deferred |
| Claim Mapping (Pass 26+) | ❌ Not started | Deferred |

---

## Files to Send to Reviewer

All files created by this project-state audit:

1. `wiki/research/project-state-loreresearch-current-report.md` — Main executive report
2. `wiki/research/project-state-pass-status-matrix.md` — Full pass pipeline table
3. `wiki/research/project-state-character-coverage-summary.md` — Regional character tables
4. `wiki/research/project-state-source-governance-summary.md` — Source policy audit
5. `wiki/research/project-state-source-missing-and-risk-register.md` — Blocked/risky claims
6. `wiki/research/project-state-next-actions.md` — This file (recommendations)

Additionally:
7. `wiki/research/project-state-file-inventory.md` (optional — file count summary)
8. `wiki/research/project-state-qa-findings.md` (optional — QA gate results)

---

## Do NOT Do

- Do NOT start Pass 19 without reviewing NK-07 evidence
- Do NOT create character-story CS source IDs without confirming the ingestion route
- Do NOT upgrade NK-07 evidence from `evidence_found_guarded` without human review
- Do NOT start claim mapping before source ingestion
- Do NOT create fanfic premise/outline/chapter plan while pipeline is incomplete (unless explicitly directed)
