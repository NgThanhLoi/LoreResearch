# Project State — Pass Status Matrix

> [!IMPORTANT]
> SUPERSEDED HISTORICAL SNAPSHOT — This file is not the current project state.
> Current source of truth after Pass 25:
> - `wiki/research/pass-25-pass-status-matrix.md`
> - `wiki/research/pass-25-next-actions.md`
> - `wiki/research/pass-25-dedup-page-status-cleanup-report.md`
>
> Any statements in this file that say Pass 19+, Pass 20+, Pass 21+, Pass 22+, Pass 23+, or later passes are `NOT STARTED` are stale and must not be used for current planning.

> **Date:** 2026-06-24 | **Source:** wiki/log.md, wiki/research/

---

## Pass Status Summary

| Pass | Purpose | Status | Patch History | Outputs Found | Count/QA Notes | Next Dependency |
| --- | --- | --- | --- | --- | --- | --- |
| **Wiki Setup** | Create wiki structure, schema, index, log | ✅ accepted | — | SCHEMA.md, index.md, log.md, README.md | 7+ files | Pass 2 |
| **Pass 2** | Source index, reliability audit, link fixing | ✅ accepted | — | source-index, source-map, source-quality-report, synthesis pages | 18 files changed | Pass 2.1 |
| **Pass 2.1** | Tighten source discipline, retire QD-ALL | ✅ accepted | — | source-index, contradiction-register, power-system | 7 files changed | Phase 3 |
| **Phase 3.0** | Character inventory | ✅ accepted | — | character-inventory.md | 109(112) characters inventoried | Phase 3.1 |
| **Phase 3.1** | First high-risk OOC audit (Kaeya, Diluc, Zhongli, Lisa, Jean) | ✅ accepted | — | 5 character pages created | Level 2 pages | Phase 3.2 |
| **Phase 3.1.1** | Fix link format and risk labels | ✅ accepted | — | inventory, OOC index, 2 character pages | 6 files updated | Phase 3.2 |
| **Phase 3.2A** | Lore-impact batch: Albedo, Klee, Neuvillette | ✅ accepted | — | 3 character pages + updates | 8 files changed | Phase 3.2B |
| **Phase 3.2B** | Furina, Dottore, Columbina | ✅ accepted (Dottore blocked) | — | 3 character pages + updates | Dottore=blocked_by_missing_source | Phase 3.2C |
| **Phase 3.2C** | Sandrone, Kẻ Lang Thang, Aether | ✅ accepted (Sandrone blocked) | — | 3 character pages + updates | Sandrone=blocked_by_missing_source | Phase 3.2D |
| **Phase 3.2D** | Lumine, Nahida, Raiden Shogun | ✅ accepted | — | 3 character pages + contradictions CON-0012/13/14 | 8 files changed | Phase 3.2E |
| **Phase 3.2E** | Arlecchino, Tartaglia, Venti | ✅ accepted | — | 3 character pages + CON-0015 | 7 files changed | Phase 3.2 Final |
| **Phase 3.2 Final** | Summary of Phase 3.2 | ✅ accepted | — | Summary report | 13 completed, 2 blocked | Phase 3.2.1 |
| **Phase 3.2.1** | Tighten Dottore/Columbina/Sandrone strictness | ✅ accepted | — | 3 character pages + all synthesis registers | 9 files changed | Pass 1 |
| **Pass 1 (CC)** | Workspace audit | ✅ accepted | — | 12 research reports | 1,820 files mapped, 14 source gaps | Pass 1.1 |
| **Pass 1.1 (CC)** | Source-gap wording fix | ✅ accepted | — | source-gap-report | 2 files changed | Pass 2 (CC) |
| **Pass 2 (CC)** | Source ingestion framework | ✅ accepted | — | SOURCE_TEMPLATE, SOURCE_ID_RULES, EXTERNAL_SOURCE_POLICY | 12 files created | Pass 2.1 |
| **Pass 2.1 (CC)** | Source framework consistency | ✅ accepted | — | Various source files | 7 files changed | Pass 3 |
| **Pass 3 (CC)** | Source tool tests, source-index cleanup | ✅ accepted | — | Sample mapping, API smoke tests | 7 files changed | Pass 4 |
| **Pass 4 (CC)** | Local VLAQ coverage mapping | ✅ accepted | → Pass 4.1 | VLAQ inventory + claim-source matrix | 8 files changed; 8 VLAQ IDs added to source-index | Pass 4.1 |
| **Pass 4.1 (CC)** | VLAQ strictness fix | ✅ accepted | — | Strictness report | 9 files updated; overconfident labels downgraded | Pass 4.1.1 |
| **Pass 4.1.1 (CC)** | Documentation cleanup | ✅ accepted | — | stale wording fixed | 3 files changed | Pass 5 |
| **Pass 5 (CC)** | Deep read for partial VLAQ claims | ✅ accepted | — | 3 new deep-read reports; 2 new VLAQ IDs | 16 files read; CLM-014/015/016/018 confirmed direct | Pass 6 |
| **Pass 6 (CC)** | Human review + source-status updates | ✅ accepted | — | Page update plan; source-status changelog | 8 character pages updated with VLAQ source refs | Pass 7 |
| **Pass 7** | Controlled source ingestion test (genshin-db) | ✅ accepted | — | Ingestion test report | No CS source IDs created; no character stories retrieved | Pass 8 |
| **Pass 8** | Fandom API character story ingestion test | ✅ accepted | → 8.1 | Kaeya character story test | sources/character_stories/Kaeya.md created; CS-KAEYA-001 indexed | Pass 8.1 |
| **Pass 8.1** | Kaeya source file hardening | ✅ accepted | — | Hardening report | Downgraded to provenance record per copyright rules | Pass 9 |
| **Pass 9** | Kaeya character story claim mapping | ✅ accepted | — | Claim mapping + verification + page update proposal | API revision verified; proposal only, no page changes | Pass 10 |
| **Pass 10** | Controlled Kaeya page source-status update | ✅ accepted | — | Page update status + changelog | Kaeya page updated with CS-KAEYA-001 refs | Stop Kaeya pipeline |
| **Pass 11** | Full Character Coverage Plan | ✅ accepted | — | Coverage plan, tier map, source gap map, batch roadmap | 4 research files | Pass 12 |
| **Pass 12** | Character Template v2 | ✅ accepted | — | _character-template-v2.md + usage guide | 4 files created | Pass 13 |
| **NK-01** | Nod-Krai source recon | ✅ accepted | — | Structure audit, source recon, candidate index, gap map | 5 research files | NK-02 |
| **NK-02** | Nod-Krai local source / provenance index build | ✅ accepted | — | Provenance index, source-index update, source-to-claim map | 7 source IDs added; 7 research files | NK-03 |
| **NK-03** | Nod-Krai region/faction governance notes | ✅ accepted | — | Governance notes for region, factions, power, terminology | 8 research files | NK-04 |
| **NK-04** | Nod-Krai character inventory / tier / source gap prep | ✅ accepted | — | Character inventory prep, tier map, gap map, merge notes | 7 research files | NK-05 |
| **NK-05** | Acts II–VII raw source search & provenance feasibility | ✅ accepted | → NK-05.1 | Source search, feasibility assessment, claim group map | Initially misclassified as fanon | NK-05.1 |
| **NK-05.1** | Official/Fandom reclassification patch | ✅ accepted | → NK-05.1a | Reclassification report, official verification, page audit | Reclassified to AQ-NK-ACT* provenance candidates | NK-05.1a |
| **NK-05.1a** | Metadata & wording strictness patch | ✅ accepted | — | Page audit fix, claim group reassessment | Corrected revision IDs, strict safety statuses | NK-06 |
| **NK-06** | Acts II–VII provenance ingestion & source index registration | ✅ accepted | → NK-06.1 | 7 provenance files, source-index update, subquest revision map | 7 AQ-NK-ACT2–8 provenance files created | NK-06.1 |
| **NK-06.1** | Subquest count / coverage consistency patch | ✅ accepted | — | Count consistency fix | "18 subquests" → "19 subquests" corrected | NK-07 |
| **NK-07** | Acts II–VII deep read, claim extraction, controlled patch | ✅ accepted | — | Evidence index, claim-level extraction map, page patch plan/report | 16 evidence IDs (NK07-*); 5 character pages patched; 4 synthesis registers updated | Return to main plan |
| **Pass 13** | Mondstadt Character Foundation Batch | ✅ accepted | — | 11 new pages + 7 preserved | 18 Mondstadt pages total | Pass 14 |
| **Pass 14** | Liyue Character Foundation Batch | ✅ accepted | — | 20 new pages + 1 preserved | 21 Liyue pages total; review-bundle-pass-14.md | Pass 15 |
| **Pass 15** | Inazuma Character Foundation Batch | ✅ accepted | — | 15 new pages + 1 preserved | 16 Inazuma pages; review-bundle-pass-15.md | Pass 16 |
| **Pass 16** | Sumeru Character Foundation Batch | ✅ accepted | — | 12 new pages + 2 preserved | 14 Sumeru pages total | Pass 17 |
| **Pass 17** | Fontaine Character Foundation Batch | ✅ accepted | — | 10 new pages + 2 preserved + 1 skipped (Escoffier) | 12 Fontaine pages total | Pass 18 |
| **Pass 18** | Natlan Character Foundation Batch | ✅ accepted (with patches) | → 18.1 → 18.2 | 8 new pages + 3 skipped (Ifa/Iansan/Varesa) | review-bundle-pass-18.md created | Pass 19 |
| **Pass 18.1** | Natlan template v2 + overclaim fix patch | ✅ accepted | — | 8 pages patched; legacy→template v2; Mavuika overclaims fixed | "Xích Tùng Vương" removed; Gnosis downgraded | Pass 18.2 |
| **Pass 18.2** | Natlan report scope + Canon Identity table consistency patch | ✅ accepted | — | Capitano removed from scope; paths fixed; 4 Canon Identity tables normalized | 6 reports fixed; 4 pages fixed | Pass 19 |

---

## Not Started Passes

| Pass | Purpose | Status | Target Characters/Scope |
| --- | --- | --- | --- |
| **Pass 19** | Cross-Faction Source-Light Batch | ❌ NOT STARTED | Dottore, Sandrone, Columbina, Skirk, Nicole, Varka, Nod-Krai source-light chars |
| **Pass 19.5** | Source-Missing Character Resolution Plan | ❌ NOT STARTED | Formal priority ingestion queue |
| **Pass 20** | High-Risk Source Package Feasibility / Provenance Batch A | ❌ NOT STARTED | Character-story provenance for priority characters |
| **Pass 21** | High-Risk Source Package Feasibility / Provenance Batch B | ❌ NOT STARTED | Character-story provenance for remaining blocked |
| **Pass 22** | Quest Dialogue Provenance Batch A | ❌ NOT STARTED | Quest dialogue mapping |
| **Pass 22.1** | Patch pass (if Pass 22 needed) | ❌ NOT STARTED | N/A — no Pass 22 exists to patch |
| **Pass 23+** | Character-story provenance ingestion | ❌ NOT STARTED | Deferred to Pass 20+ |
| **Pass 26+** | Full claim mapping | ❌ NOT STARTED | Deferred to Pass 26+ |

---

## Count Summary

| Metric | Value |
| --- | --- |
| Total passes (including sub-patches) | ~40 |
| Fully accepted passes | ~40 |
| Patched passes | 7 (Pass 4→4.1, 18→18.1→18.2, NK-05→05.1→05.1a, NK-06→06.1) |
| Not started passes | 8 (Pass 19, 19.5, 20, 21, 22, 22.1, 23+, 26+) |
