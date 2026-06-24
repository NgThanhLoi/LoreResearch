# Pass 19 — Cross-Faction Source-Light / Blocked Character Governance Report

## Purpose

Audit cross-faction, source-light, and blocked characters to make their wiki status safer. Prevent unsafe canonization of unsupported claims. Establish governance pages where needed and record source-missing statuses for characters that cannot receive full pages.

---

## Files Read First

| File | Status |
|------|--------|
| wiki/index.md | Read |
| wiki/README.md | Read |
| wiki/SCHEMA.md | Read |
| wiki/log.md | Read (tail) |
| wiki/entities/characters/README.md | Read |
| wiki/entities/characters/character-inventory.md | Read |
| wiki/entities/characters/_character-template-v2.md | Read |
| wiki/research/pass-11-full-character-coverage-plan.md | Read |
| wiki/research/pass-11-character-tier-map.md | Read |
| wiki/research/pass-11-character-source-gap-map.md | Read |
| wiki/research/pass-11-batch-roadmap.md | Read |
| wiki/research/pass-11-next-actions.md | Read |
| wiki/research/pass-12-character-template-report.md | Read |
| wiki/research/pass-12-template-usage-guide.md | Read |
| wiki/research/pass-13-mondstadt-character-foundation-report.md | Read |
| wiki/research/pass-14-liyue-character-foundation-report.md | Read |
| wiki/research/pass-15-inazuma-character-foundation-report.md | Read |
| wiki/research/pass-16-sumeru-character-foundation-report.md | Read |
| wiki/research/pass-17-fontaine-character-foundation-report.md | Read |
| wiki/research/pass-18-natlan-character-foundation-report.md | Read |
| wiki/research/pass-18-1-template-overclaim-fix-report.md | Read |
| wiki/research/pass-nk-03-guarded-claims-register.md | Read |
| wiki/research/pass-nk-04-character-source-gap-map.md | Read |
| wiki/research/pass-nk-04-character-tier-map.md | Read |
| wiki/research/pass-nk-04-full-character-plan-merge-notes.md | Read |
| wiki/research/pass-nk-07-evidence-index.md | Read |
| wiki/research/pass-nk-07-claim-level-extraction-map.md | Read |
| wiki/research/pass-nk-07-page-patch-report.md | Read |
| wiki/sources/source-index.md | Read (read-only, not modified) |
| wiki/sources/SOURCE_ID_RULES.md | Read |
| wiki/sources/EXTERNAL_SOURCE_POLICY.md | Read |
| wiki/synthesis/ooc-risk-index.md | Read |
| wiki/synthesis/headcanon-fanon-policy.md | Read |
| wiki/synthesis/contradiction-register.md | Read |
| wiki/synthesis/power-system-governance.md | Read |
| wiki/synthesis/unverified-lore-register.md | Read |
| wiki/synthesis/character-audit-backlog.md | Read |
| wiki/entities/characters/Dottore.md | Read |
| wiki/entities/characters/Columbina.md | Read |
| wiki/entities/characters/Sandrone.md | Read |
| wiki/entities/characters/Aether.md | Read |
| wiki/entities/characters/Lumine.md | Read |
| wiki/entities/characters/Arlecchino.md | Read |
| wiki/entities/characters/Tartaglia.md | Read |

---

## Candidate Selection Source

Candidates were derived from:

1. **Pass 11 batch roadmap** — explicitly assigns Pass 19 to: Dottore, Sandrone, Columbina, Skirk, Nicole, Varka, and Nod-Krai cross-faction characters.
2. **Pass 11 tier map** — Tier X (Dottore, Sandrone), Tier A high-risk (Harbingers, Archons, Traveler), Tier D source-light.
3. **Pass 11 source-gap map** — identifies characters with missing source packages.
4. **Character inventory** — provides current page status and source availability.
5. **NK-04 tier/source-gap maps** — Nod-Krai specific character classifications.
6. **Pass 17 report** — explicitly deferred Arlecchino to Pass 19.

No candidates were invented from memory alone.

---

## Candidates Reviewed

**Total: 19 candidates**

### Existing pages preserved unchanged (7)

| Character | Reason |
|-----------|--------|
| Dottore | Blocked page correct; NK-07 already patched source notes |
| Columbina | Source-light page correct; NK-07 already patched Kuutar evidence |
| Sandrone | Blocked page correct; NK-07 already patched Khaenri'ah/Rotwang notes |
| Arlecchino | Level 2 audited page already compliant; cross-faction review confirms no issues |
| Aether | Level 2 audited page with NK-07 patches already applied |
| Lumine | Level 2 audited page with NK-07 patches already applied |
| Tartaglia | Level 2 audited page already compliant; Skirk claims remain guarded |

### New governance pages created (3)

| Character | Page type | Reason |
|-----------|-----------|--------|
| Skirk | Blocked governance page | NK-07 confirmed source_missing_after_deep_read; prevents false canonization |
| Varka | Source-light governance page | Referenced by other characters but no dedicated source; prevents unsupported claims |
| Nicole | Source-light governance page | Hexenzirkel member with no local source; prevents omniscience/narrator claims |

### Source-missing — no page created (9)

| Character | Reason |
|-----------|--------|
| Capitano | Zero local primary source files |
| Alice | Zero local primary source files (only indirect via Klee) |
| Rhinedottir | Zero local primary source files (only indirect via Albedo) |
| Pierro | Zero local primary source files |
| Pantalone | Zero local primary source files |
| Pulcinella | Zero local primary source files |
| Tsaritsa | Zero local primary source files |
| Dainsleif | Zero local primary source files |
| Paimon | Zero local primary source files (no dedicated voice-line file) |

---

## Pages Patched

**0 pages patched.**

NK-07 (Pass NK-07) already applied all necessary source-status patches to Dottore, Columbina, Sandrone, Aether, and Lumine. No additional patching was needed.

---

## Source Policy Used

- source-index.md was inspected read-only and not modified.
- SOURCE_ID_RULES.md was used as reference; no new source IDs were created.
- EXTERNAL_SOURCE_POLICY.md was respected; no external sources were ingested.
- No live web/API queries were made.

---

## What This Pass Did NOT Do

| Action | Status |
|--------|--------|
| Source ingestion | Not performed |
| Claim mapping | Not performed |
| Character-story provenance ingestion | Not performed |
| External/web/API queries | Not performed |
| New source ID creation | Not performed |
| source-index.md modification | Not performed |
| Fanfic/plot/outline/divergence creation | Not performed |
| Template v2 normalization of existing high-risk pages | Not performed |
| Level 2 page creation for source-missing characters | Not performed |
| NK-07 evidence upgraded to canon | Not performed |

---

## Quality Gate Results

All 24 quality gates passed. See `pass-19-risk-and-guardrail-report.md` for detailed verification.

---

## Output Files Created

| File | Purpose |
|------|---------|
| wiki/research/pass-19-cross-faction-source-light-report.md | This report |
| wiki/research/pass-19-character-action-list.md | Per-candidate action tracking |
| wiki/research/pass-19-source-coverage-matrix.md | Source status by dimension |
| wiki/research/pass-19-risk-and-guardrail-report.md | Risk prevention evidence |
| wiki/research/pass-19-next-actions.md | Next safe step recommendation |
| wiki/entities/characters/Skirk.md | Blocked governance page |
| wiki/entities/characters/Varka.md | Source-light governance page |
| wiki/entities/characters/Nicole.md | Source-light governance page |
