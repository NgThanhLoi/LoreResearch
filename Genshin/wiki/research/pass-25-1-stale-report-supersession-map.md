# Pass 25.1 — Stale Report Supersession Map

> **Date:** 2026-06-25 | **Pass:** 25.1 — Repo State Reconciliation

---

## Supersession Map

| File Path | Exists | Stale or Current | Stale Claims Found | Corrective Status | Safe Patch Applied | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| `wiki/research/project-state-pass-status-matrix.md` | ✓ | **STALE** | Pass 19, 19.5, 20, 21, 22, 22.1, 23+ all marked ❌ NOT STARTED | Superseded by `pass-25-pass-status-matrix.md` | ✓ Banner added | Most severely stale — entire pass pipeline from 19 onward shown as not started |
| `wiki/research/project-state-loreresearch-current-report.md` | ✓ | **STALE** | States "Pass 19 (Cross-Faction Source-Light Batch) was never started"; Pass 19–22 listed as NOT STARTED | Superseded by Pass 25 reports | ✓ Banner added | Executive summary incorrectly implies project stalled at Pass 18.2 |
| `wiki/research/project-state-next-actions.md` | ✓ | **STALE** | Recommends opening Pass 19 as P0 action; implies Pass 19+ not yet begun | Superseded by `pass-25-next-actions.md` | ✓ Banner added | Proposes work that has already been completed through Pass 25 |
| `wiki/research/project-state-qa-findings.md` | ✓ | **STALE** | Documents "Pass 19 through Pass 22 Do Not Exist" as High severity finding | Superseded — finding is now resolved | ✓ Banner added | The finding was accurate at time of writing; now resolved |
| `wiki/research/project-state-source-missing-and-risk-register.md` | ✓ | **STALE (partial)** | No explicit "NOT STARTED" claims but implicitly assumes pre-Pass-19 state | Superseded by Pass 22/23+24 reports | ✓ Banner added | Risk inventory predates Pass 19–25 work; some risks may have been partially addressed |
| `wiki/research/project-state-character-coverage-summary.md` | ✓ | **STALE (partial)** | No explicit "NOT STARTED" claims but counts predate Pass 19–25 cleanup | Superseded by Pass 25 dedup report | ✓ Banner added | Character counts may have shifted after Pass 25 dedup/cleanup |
| `wiki/research/project-state-source-governance-summary.md` | ✓ | **STALE (partial)** | No false "NOT STARTED" claims; accurately documented source-index state at time | Superseded by Pass 23+24 source preparation | ✓ Banner added | Source governance context predates Pass 23+24 combined source preparation |
| `wiki/research/project-state-file-inventory.md` | ✓ | **STALE (partial)** | No explicit "NOT STARTED" claims but file counts predate all Pass 19–25 outputs | Superseded by current repo state | ✓ Banner added | File counts (2,086) no longer accurate after 25+ passes of new reports |

---

## Stale Phrase Search Results

The following specific stale phrases were found across project-state files:

| Phrase | Found In |
| --- | --- |
| "Pass 19 NOT STARTED" / "Pass 19… ❌ NOT STARTED" | `project-state-pass-status-matrix.md` (line ~66) |
| "Pass 19.5 NOT STARTED" / "Pass 19.5… ❌ NOT STARTED" | `project-state-pass-status-matrix.md` (line ~67) |
| "Pass 20 NOT STARTED" / "Pass 20… ❌ NOT STARTED" | `project-state-pass-status-matrix.md` (line ~68) |
| "Pass 21 NOT STARTED" / "Pass 21… ❌ NOT STARTED" | `project-state-pass-status-matrix.md` (line ~69) |
| "Pass 22 NOT STARTED" / "Pass 22… ❌ NOT STARTED" | `project-state-pass-status-matrix.md` (line ~70) |
| "Pass 22.1 NOT STARTED" | `project-state-pass-status-matrix.md` (line ~71) |
| "Pass 23+ NOT STARTED" | `project-state-pass-status-matrix.md` (line ~72) |
| "Pass 19 (Cross-Faction Source-Light Batch) was never started" | `project-state-loreresearch-current-report.md` (line 14) |
| "Pass 19–22 do not exist" | `project-state-loreresearch-current-report.md` (line ~231), `project-state-qa-findings.md` (line ~36) |
| "Open Pass 19" (as P0 recommendation) | `project-state-next-actions.md` (line 12) |

---

## Corrective Action Taken

All 8 `project-state-*.md` files received a standardized supersession banner:

```markdown
> [!IMPORTANT]
> SUPERSEDED HISTORICAL SNAPSHOT — This file is not the current project state.
> Current source of truth after Pass 25:
> - `wiki/research/pass-25-pass-status-matrix.md`
> - `wiki/research/pass-25-next-actions.md`
> - `wiki/research/pass-25-dedup-page-status-cleanup-report.md`
>
> Any statements in this file that say Pass 19+, Pass 20+, Pass 21+, Pass 22+, Pass 23+, or later passes are `NOT STARTED` are stale and must not be used for current planning.
```

No old content was deleted. Original analysis preserved for historical reference.
