# Project State — QA Findings

> **Date:** 2026-06-24 | **Source:** This report-only audit

---

## Quality Gate Verification

| Gate | Status | Finding |
| --- | --- | --- |
| [ ] Report-only audit | ✅ PASS | All operations read-only; no file modifications except report creation |
| [ ] No character pages modified | ✅ PASS | Zero character pages touched |
| [ ] No source files modified | ✅ PASS | Zero source files touched |
| [ ] source-index.md not modified | ✅ PASS | Read-only inspection only |
| [ ] No source IDs created | ✅ PASS | No source IDs created |
| [ ] No external/web/API used | ✅ PASS | All inspection done via local file tools |
| [ ] No source ingestion | ✅ PASS | No new source files created |
| [ ] No claim mapping | ✅ PASS | No claim mapping performed |
| [ ] No canon upgrades | ✅ PASS | All high-risk claims remain guarded |
| [ ] No fanfic/story content | ✅ PASS | No story/plot/outline content created |
| [ ] Pass statuses based on repo reports/logs | ✅ PASS | All pass statuses derived from wiki/log.md and wiki/research/ files |
| [ ] Character coverage uses unknown where missing | ✅ PASS | Used "approximate", "unknown", or mark_surplus for uncertain counts |
| [ ] Source-missing counts reconciled | ✅ PASS (approximate) | Some counts are approximate (marked as such) due to Nod-Krai NPC classification ambiguity |
| [ ] High-risk claims remain guarded | ✅ PASS | All high-risk claims documented as evidence_found_guarded, source_missing, or keep_theory |
| [ ] Pass 22 current status clearly stated | ✅ PASS | Pass 22 does not exist; clearly documented as NOT STARTED |
| [ ] Next actions concrete | ✅ PASS | Pass 19 scope defined with clear steps and boundaries |
| [ ] Files created list complete | ✅ PASS | Listed in main report and next-actions file |

---

## Key Discrepancies Found

### 1. Pass 19 through Pass 22 Do Not Exist
**Severity:** High
**Detail:** The log ends at Pass 18.2 (2026-06-22). Despite the audit prompt asking for detailed status of Pass 19, 19.5, 20, 21, 22 — **none of these passes have any files or log entries.** The most recent log entry is Pass 18.2, which recommends "Pass 19 — Cross-Faction Source-Light Batch" as next step. This means the project is currently stalled at an unstarted transition point.

### 2. Character Inventory Count Mismatch
**Severity:** Medium
**Detail:** The character-inventory.md file header says "toàn bộ 109 nhân vật" (109 characters), but the actual table contains 112 rows (including Aino, Flins, Illuga, Ineffa, Jahoda, Lauma, Linnea, Nefer, Nicole, Prune, Varka, Zibai — 12 Nod-Krai/background characters). The inventory table also uses different counts than the wiki pages (99 pages vs 112 listed).

### 3. Log Chronology Issue
**Severity:** Low
**Detail:** NK-05.1a entry is timestamped 2026-06-21, but its patches (NK-06, NK-06.1, NK-07, Pass 15, Pass 16, Pass 17, Pass 18, Pass 18.1, Pass 18.2) have mixed timestamps (2026-06-21 and 2026-06-22). The log ordering is:
- NK-05.1a (2026-06-21)
- NK-06 (2026-06-21)
- NK-06.1 (2026-06-21)
- NK-07 (2026-06-21)
- Pass 15 (2026-06-21)
- Pass 16 (2026-06-21)
- Pass 17 (2026-06-21)
- Pass 18 (2026-06-22)
- Pass 18.1 (2026-06-22)
- Pass 18.2 (2026-06-22)

So NK-07 (nod-krai deep-read) was done BEFORE Pass 15 (Inazuma foundation) chronologically, but they appear interleaved in the log.

### 4. Inventory Status Stale
**Severity:** Medium
**Detail:** The character-inventory.md table still shows many characters as "inventory_only" (e.g., Amber, Barbara, Bennett, etc.) that have since received Pass 13–18 foundation pages. The inventory was last updated during Phase 3.2 and has not been refreshed to reflect the regional foundation batches.

### 5. Log.md Line 17 Says "2026-06-20" for Wiki Setup
**Severity:** Info
**Detail:** All pass entries are compressed into 2026-06-20 through 2026-06-22 timeline. This is consistent across the log and appears intentional (rapid pass execution), but the timestamps should be verified if temporal ordering matters.

---

## Known Untracked Issues

These were flagged in the prompt as things to check but are consistent with the project's state:

| Check | Result |
| --- | --- |
| Dottore 2nd seat overclaimed? | Not assessed — ruled out-of-scope for this audit; recommends NK-08 or Pass 19 review |
| Aether-Lumine Descender status overclaimed? | NK-07 evidence_found_guarded for Descender-related claims; Aether.md/Lumine.md have VLAQ source refs; not audited for overclaim in this pass |
| Voice-line rows mixed into quest-dialogue evidence? | Not detected — VLAQ and VL are distinct source categories |
| Long copyrighted text copied? | Not detected — EXTERNAL_SOURCE_POLICY copyright rules appear respected |

---

## Recommendations from QA Findings

1. **Fix character-inventory count** — reconcile 109 vs 112 vs 99
2. **Update character-inventory statuses** to reflect Pass 13–18.2 work
3. **Start Pass 19** to unblock project pipeline
4. **Verify log timestamps** if temporal ordering matters for future work
