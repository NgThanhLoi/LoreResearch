# Pass 25 — Stale Count and Path Audit

## Purpose

Search for stale counts and stale path forms across log entries, research reports, and tracking files after Passes 13–24.

## Stale Count Findings

| id | location | stale_claim | actual_value | severity | source_of_truth | safe_to_patch |
| -- | -------- | ----------- | ------------ | -------- | --------------- | ------------- |
| SC-01 | prompt expected state | "Pass 19.5 accepted after 19.5.1" | No Pass 19.5.1 entry exists in wiki/log.md | low | wiki/log.md | n/a — prompt assumption, not repo issue |
| SC-02 | prompt expected state | "Pass 20 accepted after 20.1" | No Pass 20.1 entry exists in wiki/log.md | low | wiki/log.md | n/a — prompt assumption |
| SC-03 | prompt expected state | "Pass 21 accepted after 21.1" | No Pass 21.1 entry exists in wiki/log.md | low | wiki/log.md | n/a — prompt assumption |
| SC-04 | prompt expected state | "Pass 22 accepted after 22.1/22.1.1" | Pass 22.1 exists but no 22.1.1 in log | low | wiki/log.md | n/a — prompt assumption |
| SC-05 | pass-22 reports (pre-22.1) | "37 blocked claim clusters" | 32 actual rows (reconciled in Pass 22.1) | none — already fixed | pass-22-claim-support-status-matrix.md | already patched |
| SC-06 | pass-22 log entry | "15 of 32 clusters now have evidence_packet_created (47%)" | confirmed correct after 22.1 reconciliation | none | pass-22-claim-support-status-matrix.md | n/a |
| SC-07 | pass-23-official-profile-voice-line-inventory.md | "97 voice-line/profile candidates" | verified: 13 high-priority + 83 standard + 1 CS file = 97 | none — correct | pass-23-official-profile-voice-line-inventory.md | n/a |
| SC-08 | pass-24-artifact-book-event-inventory.md | "327 artifact/book/weapon/manga files" | title-based inventory only; 61 artifact + 73 book + 176 weapon + 17 manga = 327 | none — correct | pass-24-artifact-book-event-inventory.md | n/a |
| SC-09 | pass-24-source-package-candidate-map.md | "29 source packages" | verified 29 package rows | none — correct | pass-24-source-package-candidate-map.md | n/a |
| SC-10 | pass-23-24-source-gap-and-risk-register.md | "58 source gaps" | verified: 11 + 4 + 8 + 3 + 17 + 5 + 5 + 5 = 58 | none — correct | pass-23-24-source-gap-and-risk-register.md | n/a |
| SC-11 | character-inventory.md | 113 rows in table (line 17–128) | count includes header row; actual character entries = 112 | low | character-inventory.md | verify — may be 112 or 113 characters |
| SC-12 | character-audit-backlog.md | 113 rows in table | matches inventory | none — consistent | character-audit-backlog.md | n/a |
| SC-13 | Pass 19.5 log entry | "37 individually tracked candidates" | verified from counts: 2 P0 + 9 P1 + 12 P2 + 13 P3 + 1 P4 = 37 | none — correct | wiki/log.md | n/a |
| SC-14 | character-inventory.md "Blocked by Missing Source" section | lists "Columbina, Nicole, Varka" | Columbina is audited_source_light (not blocked); Dottore and Sandrone are the actual blocked characters | medium | character-inventory.md | yes — update section |

## Stale Path Findings

| id | location | stale_path | correct_path | severity | safe_to_patch |
| -- | -------- | ---------- | ------------ | -------- | ------------- |
| SP-01 | Pass 18 reports (pre-18.2) | `characters/natlan/` | `wiki/entities/characters/` | none — already fixed in Pass 18.2 | already patched |
| SP-02 | character-inventory.md | uses backtick code paths (e.g. `entities/character_intelligence/Aether.md`) | correct format — these are relative to repo root | none | n/a |
| SP-03 | wiki/log.md links | mix of relative links `./entities/characters/` and code paths | cosmetic inconsistency — both valid | P3 | not worth patching |
| SP-04 | character-inventory.md "Blocked by Missing Source" section | mentions "Non-playable lore characters with missing voice line files: Columbina, Nicole, Varka" | Columbina IS audited (source-light); Dottore/Sandrone are the actual blocked ones | medium | yes |

## Pass 22/23+24 Count Preservation Check

| metric | accepted_value | current_value | match |
| ------ | -------------- | ------------- | ----- |
| Pass 22 claim clusters | 32 | 32 | ✓ |
| Pass 22 evidence packets created | 15 | 15 | ✓ |
| Pass 22 still_blocked clusters | 9 | 9 | ✓ |
| Pass 23 candidate rows | 97 | 97 | ✓ |
| Pass 24 detailed inventory rows | 73 (book files) | 73 | ✓ |
| Pass 24 source package rows | 29 | 29 | ✓ |
| Pass 23+24 source gaps | 58 | 58 | ✓ |

All Pass 22 and Pass 23+24 reconciled counts are preserved and verified.

## Summary

- Stale count issues found: 14 checked, 1 medium-severity issue (SC-14)
- Stale path issues found: 4 checked, 1 medium-severity issue (SP-04, same as SC-14)
- Pass 22 reconciled counts: all preserved ✓
- Pass 23+24 reconciled counts: all preserved ✓
- Already-patched issues: 2 (SC-05 by Pass 22.1, SP-01 by Pass 18.2)
- Prompt-only assumptions (not repo issues): 4 (SC-01 through SC-04)
- Actionable patch needed: character-inventory.md "Blocked by Missing Source" section text
