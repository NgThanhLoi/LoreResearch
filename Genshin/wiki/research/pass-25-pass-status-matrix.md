# Pass 25 — Pass Status Matrix

## Purpose

Current accepted status of all passes from Pass 11 through Pass 24, verified against wiki/log.md entries.

## Status Matrix

| pass_id | pass_name | accepted_status | latest_patch_if_any | primary_outputs | known_non_blocking_hygiene | remaining_blockers | next_dependency |
| ------- | --------- | --------------- | ------------------- | --------------- | -------------------------- | ------------------ | --------------- |
| Pass 11 | Full Character Coverage Plan | accepted | none | pass-11-full-character-coverage-plan.md, pass-11-character-tier-map.md, pass-11-character-source-gap-map.md, pass-11-batch-roadmap.md | none | none | Pass 12 |
| Pass 12 | Character Template v2 | accepted | none | _character-template-v2.md, pass-12-template-usage-guide.md | none | none | Pass 13 |
| Pass 13 | Mondstadt Character Foundation Batch | accepted | none | 13 Level 2 pages created, 7 preserved | none | character-story provenance missing | Pass 14 |
| Pass 14 | Liyue Character Foundation Batch | accepted | none | 20 Level 2 pages created, 1 preserved (Zhongli) | minor format variation (table vs bullet) | character-story provenance missing | Pass 15 |
| Pass 15 | Inazuma Character Foundation Batch | accepted | none | 15 Level 2 pages created, 1 preserved (Raiden Shogun) | none | character-story provenance missing | Pass 16 |
| Pass 16 | Sumeru Character Foundation Batch | accepted | minor (lesson learned re: character_intelligence) | 12 Level 2 pages created, 2 preserved (Nahida, Kẻ Lang Thang) | none | character-story provenance missing | Pass 17 |
| Pass 17 | Fontaine Character Foundation Batch | accepted | none | 10 Level 2 pages created, 2 preserved (Furina, Neuvillette) | Escoffier skipped (out_of_scope) | character-story provenance missing | Pass 18 |
| Pass 18 | Natlan Character Foundation Batch | accepted | Pass 18.1, Pass 18.2 | 8 Level 2 pages created, 3 skipped (Ifa, Iansan, Varesa) | none after 18.2 | character-story provenance missing; Ifa/Iansan/Varesa source_missing | Pass 19 |
| Pass 19 | Cross-Faction Source-Light Batch | accepted | none | 3 governance pages (Skirk, Varka, Nicole), 5 reports | none | 9 characters source_missing_no_page | Pass 19.5 |
| Pass 19.5 | Source-Missing Character Resolution Plan | accepted | none (Pass 19.5.1 not found in log — no evidence of patch) | Resolution plan, inventory, requirement map, ingestion queue | none | all 37 candidates remain at current status | Pass 20 |
| Pass 20 | High-Risk Source Package Feasibility Batch A | accepted | none (Pass 20.1 not found in log — no evidence of patch) | Feasibility report, provenance route map, source inventory, blocked cluster map | none | 30 claim clusters unresolvable; Pierro/Rhinedottir zero sources | Pass 21 |
| Pass 21 | High-Risk Source Package Feasibility Batch B | accepted | none (Pass 21.1 not found in log — no evidence of patch) | Feasibility report, provenance route map, source inventory, blocked cluster map | none | 30 claim clusters unresolvable; Capitano/Paimon zero sources | Pass 22 |
| Pass 22 | Quest Dialogue Provenance Batch A | accepted | Pass 22.1 (reconciliation patch) | Evidence packets for 6 candidates, claim-support matrix | none after 22.1 | 9 clusters still_blocked; Capitano source_absent; Nod-Krai metadata-only | Pass 23+24 |
| Pass 23+24 | Combined Source Preparation | accepted | count reconciliation patch (97 VL candidates, 73 Pass 24 rows, 29 source packages, 58 gaps) | VL inventory, artifact/book/event inventory, source-package map, gap register | none | Capitano/Columbina/Sandrone fully blocked; event folders missing; content not inspected | Pass 25 |

## Discrepancies Found

### Pass 19.5

The prompt states "accepted after 19.5.1" but the log contains NO entry for Pass 19.5.1. Only Pass 19.5 exists. This may be an expected-state assumption that does not match repo evidence. **Recording discrepancy — not forcing expected state.**

### Pass 20

The prompt states "accepted after 20.1" but the log contains NO entry for Pass 20.1. Only Pass 20 exists. **Recording discrepancy.**

### Pass 21

The prompt states "accepted after 21.1" but the log contains NO entry for Pass 21.1. Only Pass 21 exists. **Recording discrepancy.**

### Pass 22.1

The log confirms Pass 22.1 exists as a reconciliation patch. Log entry also references "Pass 22.1.1" in the expected state from the prompt — but no Pass 22.1.1 entry exists in the log. **Recording discrepancy.**

## Summary

- Total passes tracked: 14 (Pass 11 through Pass 23+24)
- All passes accepted per log evidence
- Patches confirmed in log: Pass 18.1, Pass 18.2, Pass 22.1
- Patches claimed but NOT found in log: Pass 19.5.1, Pass 20.1, Pass 21.1, Pass 22.1.1
- NK passes (NK-01 through NK-07 + NK-05.1/05.1a/06.1) are separate from the main sequence and not tracked in this matrix
