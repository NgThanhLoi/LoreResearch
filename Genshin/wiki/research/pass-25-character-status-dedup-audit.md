# Pass 25 — Character Coverage/Status Dedup Audit

## Purpose

Audit character-level tracking files for duplicate or inconsistent status entries across inventory, backlog, and research reports.

## Sources Audited

- `wiki/entities/characters/character-inventory.md`
- `wiki/synthesis/character-audit-backlog.md`
- `wiki/research/pass-11-character-tier-map.md`
- `wiki/research/pass-11-character-source-gap-map.md`
- Regional batch reports Pass 13–18
- Cross-faction/source-missing/high-risk reports Pass 19–21

## Character Status Dedup Table

| character | region_or_group | page_exists | coverage_level | source_status | tracking_status_conflicts | recommended_cleanup | safe_to_patch_now | notes |
| --------- | --------------- | ----------- | -------------- | ------------- | ------------------------- | ------------------- | ----------------- | ----- |
| Aether | Cross-Faction | yes | Level 2 | mixed | none — inventory says "audited", backlog says "Level 2, P1 high" | none | n/a | consistent |
| Lumine | Cross-Faction | yes | Level 2 | mixed | none | none | n/a | consistent |
| Kaeya | Mondstadt | yes | Level 2 | mixed | none — inventory "P0 audited", backlog "Level 2 P0" | none | n/a | consistent |
| Diluc | Mondstadt | yes | Level 2 | mixed | none | none | n/a | consistent |
| Jean | Mondstadt | yes | Level 2 | mixed | none | none | n/a | consistent |
| Lisa | Mondstadt | yes | Level 2 | mixed | none | none | n/a | consistent |
| Zhongli | Liyue | yes | Level 2 | mixed | none | none | n/a | consistent |
| Columbina | Fatui/Cross-Faction | yes | Level 2 | indirect_source_only | inventory: "audited_source_light"; backlog: "Level 2, P1 high, missing voice lines" | labels differ but meaning consistent — source-light acknowledged in both | no | source-light governance correct |
| Dottore | Fatui/Cross-Faction | yes | blocked | source_missing | inventory: "blocked_by_missing_source"; backlog: "blocked_by_missing_source" | none | n/a | consistent |
| Sandrone | Fatui/Cross-Faction | yes | blocked | source_missing | inventory: "blocked_by_missing_source"; backlog: "blocked_by_missing_source" | none | n/a | consistent |
| Skirk | Cross-Faction | yes | blocked governance | source_missing | inventory: NOT LISTED; backlog: NOT LISTED; Pass 19 report: "blocked governance page created" | **CONFLICT** — Skirk has a page but is not in character-inventory.md or character-audit-backlog.md | add Skirk to inventory and backlog | yes |
| Varka | Cross-Faction | yes | source-light governance | indirect_source_only | inventory: "needs_ooc_audit, P1 high"; backlog: "Level 1, P1 high, missing voice lines" | **CONFLICT** — inventory says "needs_ooc_audit" but page exists as source-light governance (created in Pass 19). Backlog still says Level 1 | update backlog to reflect governance page exists; update inventory status | yes |
| Nicole | Cross-Faction | yes | source-light governance | indirect_source_only | inventory: "needs_ooc_audit, P1 high"; backlog: "Level 1, P1 high, missing voice lines" | **CONFLICT** — same as Varka. Page exists (Pass 19) but tracking files don't reflect it | update backlog to reflect governance page; update inventory status | yes |
| Arlecchino | Fatui/Cross-Faction | yes | Level 2 | mixed | none | none | n/a | consistent |
| Tartaglia | Fatui/Cross-Faction | yes | Level 2 | mixed | none | none | n/a | consistent |
| Venti | Mondstadt | yes | Level 2 | mixed | none | none | n/a | consistent |
| Nahida | Sumeru | yes | Level 2 | mixed | none | none | n/a | consistent |
| Raiden Shogun | Inazuma | yes | Level 2 | mixed | none | none | n/a | consistent |
| Kẻ Lang Thang | Sumeru | yes | Level 2 | mixed | none | none | n/a | consistent |
| Albedo | Mondstadt | yes | Level 2 | mixed | none | none | n/a | consistent |
| Klee | Mondstadt | yes | Level 2 | mixed | none | none | n/a | consistent |
| Neuvillette | Fontaine | yes | Level 2 | mixed | none | none | n/a | consistent |
| Furina | Fontaine | yes | Level 2 | mixed | none | none | n/a | consistent |
| Capitano | Cross-Faction | no | none | source_absent | Pass 22 confirms source_absent; Pass 19 lists as source_missing_no_page; Pass 21 confirms zero sources | consistent across reports — no page, no source | none | consistent absence |
| Alice | Cross-Faction | no | none | only_analysis_files | Pass 21 reports only_analysis_files_found; Pass 19 lists source_missing_no_page | consistent | none | no page correct |
| Rhinedottir | Cross-Faction | no | none | only_analysis_files | Pass 20 reports only_analysis_files_found | consistent | none | no page correct |
| Pierro | Cross-Faction | no | none | no_local_package | Pass 20 reports no_local_package_found; zero sources | consistent | none | no page correct |
| Dainsleif | Cross-Faction | no | none | partial_local_package | Pass 21 partial (NK provenance ref only) | consistent | none | no page correct |
| Paimon | Cross-Faction | no | none | no_local_package | Pass 21 confirms no dedicated source; mentioned in 135+ files | consistent | none | no page correct |
| Mavuika | Natlan | yes | Level 2 | mixed | none after 18.1/18.2 | none | n/a | consistent |

## High-Risk Guardrail Verification

| character | guardrail_rule | status_verified |
| --------- | -------------- | --------------- |
| Dottore | remains blocked_by_missing_source; 2nd seat = partial_support only | ✓ verified |
| Sandrone | remains blocked_by_missing_source; Rotwang NOT FOUND in deep-read | ✓ verified |
| Pierro | no_local_package; no page created | ✓ verified |
| Rhinedottir | only_analysis_files; no page created | ✓ verified |
| Columbina | indirect_source_only; Kuutar = THEORY/UNVERIFIED | ✓ verified |
| Alice | only_analysis_files; no page created | ✓ verified |
| Dainsleif | partial (NK provenance pointer only); no page created | ✓ verified |
| Paimon | no dedicated source; identity theories remain blocked | ✓ verified |
| Aether/Lumine | Descender status = requires_human_review / requires_claim_mapping | ✓ verified |
| Skirk | blocked governance page; source_missing | ✓ verified |
| Varka | source-light governance page; indirect_source_only | ✓ verified |
| Nicole | source-light governance page; indirect_source_only | ✓ verified |

## Nod-Krai Non-Duplication Check

| check | result |
| ----- | ------ |
| NK character foundation pages duplicating Full Character Plan? | NO — NK-04 explicitly created inventory/tier/gap prep only, no character pages |
| NK region governance duplicating character pages? | NO — Pass NK-03 created region/faction governance notes only |
| Lauma/Flins/Aino character pages created? | NO — remain at Level 1 inventory_only |
| NK-07 evidence upgraded to CANON? | NO — all evidence_found_guarded |

## Conflicts Requiring Patch

| id | character | issue | fix |
| -- | --------- | ----- | --- |
| DEDUP-01 | Skirk | page created in Pass 19 but not in character-inventory.md or character-audit-backlog.md | add to both tracking files |
| DEDUP-02 | Varka | inventory says "needs_ooc_audit" but Pass 19 created a source-light governance page | update inventory status to match actual page state |
| DEDUP-03 | Nicole | inventory says "needs_ooc_audit" but Pass 19 created a source-light governance page | update inventory status to match actual page state |
| DEDUP-04 | Varka | backlog says "Level 1" but governance page exists | update backlog level |
| DEDUP-05 | Nicole | backlog says "Level 1" but governance page exists | update backlog level |

## Summary

- Total characters audited: 30 (all high-priority + all conflict candidates)
- Characters with page/tracking conflicts: 3 (Skirk, Varka, Nicole)
- Characters with correct consistent status: 27
- High-risk guardrails verified: 12/12 pass
- Nod-Krai non-duplication: confirmed safe
- Recommended patches: 5 (all metadata-only, safe to apply)
