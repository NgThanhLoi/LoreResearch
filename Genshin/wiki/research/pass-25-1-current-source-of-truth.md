# Pass 25.1 — Current Source of Truth

> **Date:** 2026-06-25 | **Pass:** 25.1 — Repo State Reconciliation

---

## Current Accepted Progression

| Pass | Status | Patch History |
| --- | --- | --- |
| Pass 11 | ✅ accepted | — |
| Pass 12 | ✅ accepted | — |
| Pass 13 | ✅ accepted | — |
| Pass 14 | ✅ accepted | — |
| Pass 15 | ✅ accepted | — |
| Pass 16 | ✅ accepted | minor patch |
| Pass 17 | ✅ accepted | — |
| Pass 18 | ✅ accepted | 18.1, 18.2 |
| Pass 19 | ✅ accepted | — |
| Pass 19.5 | ✅ accepted | 19.5.1 |
| Pass 20 | ✅ accepted | 20.1 |
| Pass 21 | ✅ accepted | 21.1 |
| Pass 22 | ✅ accepted | 22.1, 22.1.1 |
| Pass 23+24 | ✅ accepted | count reconciliation patch |
| Pass 25 | ✅ accepted | — |

**Evidence basis:** `wiki/research/pass-25-pass-status-matrix.md` (tracks all 14 passes with acceptance status), `wiki/log.md` entries for each pass completion and patch.

---

## Current Source-of-Truth Documents

| Document | Role |
| --- | --- |
| `wiki/research/pass-25-pass-status-matrix.md` | Authoritative pass pipeline status |
| `wiki/research/pass-25-next-actions.md` | Recommended next steps after Pass 25 |
| `wiki/research/pass-25-dedup-page-status-cleanup-report.md` | Pass 25 execution report and cleanup summary |
| `wiki/research/pass-25-stale-count-and-path-audit.md` | Count verification and stale-data audit |
| `wiki/research/pass-25-cleanup-action-list.md` | P0–P3 cleanup items applied in Pass 25 |
| `wiki/research/pass-23-24-combined-source-preparation-report.md` | Pass 23+24 source inventory and gap analysis |
| `wiki/research/pass-22-claim-support-status-matrix.md` | Pass 22 claim cluster status (32 clusters) |
| `wiki/log.md` | Authoritative chronological record |

---

## Preserved Reconciled Counts

### Pass 22 — Claim Support Status

| Metric | Value | Source |
| --- | --- | --- |
| Total claim clusters | 32 | `pass-22-claim-support-status-matrix.md` |
| evidence_packet_created | 15 | Verified in Pass 25 stale-count audit |
| still_blocked | 9 | Verified in Pass 25 stale-count audit |
| requires_human_review | 2 | `pass-22-claim-support-status-matrix.md` |
| partial_support_only | 2 | `pass-22-claim-support-status-matrix.md` |
| deferred_to_pass_23 | 2 | `pass-22-claim-support-status-matrix.md` |

### Pass 23+24 — Combined Source Preparation

| Metric | Value | Source |
| --- | --- | --- |
| Pass 23 candidate rows | 97 | 13 high-priority + 83 standard + 1 character story |
| Pass 24 detailed inventory rows | 73 | 18 artifact + 16 book-main + 9 book-NK + 13 weapon + 17 manga |
| Pass 24 source package rows | 29 | High-risk source package candidates |
| Source gaps | 58 | Unchanged from initial count |

**All counts verified in:** `wiki/research/pass-25-stale-count-and-path-audit.md` (14 items checked, all preserved).

---

## Superseded Documents (Historical Only)

The following files are historical snapshots from 2026-06-24, predating Pass 19–25:

- `wiki/research/project-state-loreresearch-current-report.md`
- `wiki/research/project-state-pass-status-matrix.md`
- `wiki/research/project-state-next-actions.md`
- `wiki/research/project-state-qa-findings.md`
- `wiki/research/project-state-source-missing-and-risk-register.md`
- `wiki/research/project-state-character-coverage-summary.md`
- `wiki/research/project-state-source-governance-summary.md`
- `wiki/research/project-state-file-inventory.md`

These files have been marked with supersession banners. They must not be used for current planning.

---

## LR-00 Log Entries — Historical Status

The following log entries are also historical and must not be used to infer current pass status:

- `[2026-06-24] Project State Report-Only Audit` — states Pass 19–22 NOT STARTED (accurate at time; now resolved)
- `[2026-06-24] LR-00.1 — Source Tier Mapping Cleanup` — recommends Pass 19.0 (now completed as Pass 19)
- `[2026-06-24] LR-00.3 — Final Grep-Clean Wording Patch` — recommends Pass 19.0 (now completed as Pass 19)

These entries remain in log.md for historical integrity but their "recommended next pass" fields are outdated.
