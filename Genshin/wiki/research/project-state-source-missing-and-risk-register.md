# Project State — Source-Missing & Risk Register

> [!IMPORTANT]
> SUPERSEDED HISTORICAL SNAPSHOT — This file is not the current project state.
> Current source of truth after Pass 25:
> - `wiki/research/pass-25-pass-status-matrix.md`
> - `wiki/research/pass-25-next-actions.md`
> - `wiki/research/pass-25-dedup-page-status-cleanup-report.md`
>
> Any statements in this file that say Pass 19+, Pass 20+, Pass 21+, Pass 22+, Pass 23+, or later passes are `NOT STARTED` are stale and must not be used for current planning.

> **Date:** 2026-06-24 | **Source:** wiki/log.md, wiki/research/pass-18-next-actions.md, wiki/synthesis/unverified-lore-register.md, character-inventory.md, NK-07 reports

---

## Source-Missing Inventory

### Critical Blocked Characters (no primary source available)

| Candidate | Current Status | Blocking Reason | Missing Source Type | Recommended Route | Priority | Next Pass Bucket | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Dottore** | blocked_by_missing_source | No voice lines, no character stories, no intelligence file | VL, CS, character_intelligence | Source ingestion (Fandom API or official) | P1 high | Pass 19 | NK-07 found evidence_found_guarded for false moon claim |
| **Sandrone** | blocked_by_missing_source | No voice lines, no character stories, no intelligence file | VL, CS, character_intelligence | Source ingestion (Fandom API or official) | P1 high | Pass 19 | NK-07 found evidence_found_guarded for Rotwang link |
| **Skirk** | source_missing | Brief intro only in VLAQ; no dedicated source | VL, CS, AQ | Needs official release or quest transcript | P1 high | Pass 19/20 | CLM-009 remains source_missing; Third Descender identity unresolved |

### Source-Light Characters

| Candidate | Current Status | Blocking Reason | Missing Source Type | Recommended Route | Priority | Next Pass Bucket | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Columbina** | audited_source_light | Voice lines missing; identity claims indirect | VL | Voice-line ingestion or quest dialogue | P1 high | Pass 19 | Kuutar/Moon status: evidence_found_guarded (NK-07) |
| **Nicole** | needs_ooc_audit | Voice lines missing; no wiki page | VL, CS | Source ingestion then audit | P1 high | Pass 19 | Hexenzirkel; inventory_only |
| **Varka** | needs_ooc_audit | Voice lines missing; no wiki page | VL, CS | Source ingestion then audit | P1 high | Pass 19 | Mondstadt; inventory_only |

### Characters Skipped for Missing Voice Lines

| Candidate | Current Status | Missing Source Type | Next Pass Bucket |
| --- | --- | --- | --- |
| **Ifa** | skipped / source_missing | VL | Pass 19 or later |
| **Iansan** | skipped / source_missing | VL | Pass 19 or later |
| **Varesa** | skipped / source_missing | VL | Pass 19 or later |
| **Escoffier** | skipped / out_of_scope | VL | Future patch |

### Nod-Krai Characters Without Wiki Pages

| Candidate | Current Status | Source Status | Next Pass Bucket |
| --- | --- | --- | --- |
| Aino | inventory_only | indirect_source_only | Pass NK integration |
| Flins | inventory_only | indirect_source_only | Pass NK integration |
| Illuga | inventory_only | indirect_source_only | Pass NK integration |
| Ineffa | inventory_only | indirect_source_only | Pass NK integration |
| Jahoda | inventory_only | indirect_source_only | Pass NK integration |
| Lauma | inventory_only | indirect_source_only | Pass NK integration |
| Linnea | inventory_only | indirect_source_only | Pass NK integration |
| Nefer | inventory_only | indirect_source_only | Pass NK integration |
| Prune | inventory_only | indirect_source_only | Pass NK integration |
| Zibai | inventory_only | indirect_source_only | Pass NK integration |

### Missing Source Folders

| Missing Folder | Impact | Priority |
| --- | --- | --- |
| `sources/character_stories/` (except Kaeya) | All 99 character pages lack character-story provenance | Critical |
| `sources/official/` | No official source repository | Medium |
| `sources/quest_dialogue/` | Legacy retired; use VLAQ/VLWQ/AQ/WQ prefixes | Low |

### Pre-existing Critical Source Gaps (from Pass 1 CC workspace audit)

| Gap ID | Description | Status |
| --- | --- | --- |
| SG-0001 | Dottore missing sources | ⛔ Still blocked |
| SG-0002 | Sandrone missing sources | ⛔ Still blocked |
| SG-0005 | Quest layer entirely empty | ⛔ Still empty |
| SG-0007 | character_stories/ folder missing | ⛔ Still missing (except Kaeya) |
| SG-0008 | Nod-Krai Acts II–VII no source | ✅ Partially resolved — provenance created in NK-06, not locally ingested |
| SG-0011 | 56 quest skeletons unusable | ⛔ Still empty |

**Total documented source gaps:** ~14 (from Pass 1 audit); most remain unresolved as no mass ingestion was performed.

---

## Blocked Claim Clusters

### Fatui / Harbinger Claims

| Claim Cluster | Characters | Current Status | Support State | Later Pass Needed | Human Review? |
| --- | --- | --- | --- | --- | --- |
| Dottore creates False Moon God | Dottore | evidence_found_guarded | NK-07 found evidence in Acts II–VII transcripts | NK-08 or claim mapping | Yes |
| Columbina = Kuutar | Columbina | evidence_found_guarded | NK-07 found evidence; voice lines still missing | NK-08 or claim mapping | Yes |
| Sandrone = Rotwang link | Sandrone | evidence_found_guarded | NK-07 found evidence in Acts II–VII | NK-08 or claim mapping | Yes |
| Dottore 2nd seat status | Dottore | source_missing | No primary source in workspace | Pass 19/20 | Yes |
| Sandrone Marionette nature | Sandrone | source_missing | No primary source in workspace | Pass 19/20 | Yes |

### Abyss / Khaenri'ah / Descender / Irminsul

| Claim Cluster | Characters | Current Status | Support State | Later Pass Needed | Human Review? |
| --- | --- | --- | --- | --- | --- |
| Third Descender = Gnosis material | Skirk, Traveler | source_missing_after_deep_read | Not found in NK-07 deep-read; CLM-011 unresolved | Later game patch | Yes |
| Gnosis as shackles | All Archons | keep_theory | CLM-010; only indirect support (Skirk quote in overview) | Later game patch | Yes |
| Traveler vs Abyss Sibling role | Aether, Lumine | CON-0015 resolved | VLAQ direct evidence; role separation documented | None — resolved | No |
| Irminsul rewrite mechanics | Wanderer, Nahida | VLAQ direct evidence | CON-0012, CON-0013 resolved | None — resolved | No |
| Kaeya = Alberich/Khaenri'ah | Kaeya | partial_support_only | VLAQ-TRAVELER-002: Alberich = Abyss founder confirmed | Claim mapping | Yes |

### Hexenzirkel

| Claim Cluster | Characters | Current Status | Support State |
| --- | --- | --- | --- |
| Hexenzirkel membership | Nicole, Alice, etc. | source_missing | No local sources |
| Nicole's role | Nicole | source_missing | No wiki page; inventory_only |

### Moon / False Sky / Nod-Krai

| Claim Cluster | Characters | Current Status | Support State | Later Pass Needed | Human Review? |
| --- | --- | --- | --- | --- | --- |
| True Welkin Moon | Multiple | evidence_found_guarded | NK-07 evidence; not locally ingested | NK-08 | Yes |
| Tri-Lunar Authority | Multiple | evidence_found_guarded | NK-07 evidence in Acts VII–VIII | NK-08 | Yes |
| Snezhnaya Acts II–VII plot | Multiple | evidence_found_guarded | NK-07 deep-read completed; not locally ingested | NK-08 | Yes |
| Tháp Embla | — | source_missing | Not found in workspace | Future game patch | Yes |
| Mũi Tên Terpikeraunas | — | source_missing | Not found in workspace | Future game patch | Yes |

### Natlan Mechanics (guarded in Pass 18.1)

| Claim Cluster | Characters | Current Status | Support State |
| --- | --- | --- | --- |
| Night Kingdom mechanics | Mavuika, etc. | source_missing | Character stories missing |
| Ode of Resurrection mechanics | Mavuika, etc. | source_missing | Character stories missing |
| Ancient Name system | Kachina, etc. | partial_support_only | Voice lines give basic info |
| 500-year plan details | Mavuika | source_missing | Not confirmed in local sources |
| Sacred Flame mechanics | Mavuika | source_missing | Not confirmed in local sources |

### Power Scaling

| Claim Cluster | Characters | Current Status | Support State |
| --- | --- | --- | --- |
| Vision as monitoring device | All Vision users | THEORY / source_missing | Community theory, no source |
| Celestia as golden prison | — | THEORY / source_missing | Community theory, no source |
| Dragon Sovereign authority | Neuvillette, etc. | partial_support_only | VLAQ-FONTAINE-003 confirms authority restoration |

---

## High-Risk Characters

Characters requiring the most caution in canon-compliant use:

| Character | Risk Factors | Current Guardrails |
| --- | --- | --- |
| **Dottore** | No primary source; blocked; NK-07 evidence exists but guarded | Page explicitly marks blocked_by_missing_source |
| **Columbina** | Source-light; Kuutar theory guarded; NK-07 evidence found | Identity claims marked as theory |
| **Sandrone** | No primary source; blocked; NK-07 evidence exists but guarded | Page explicitly marks blocked_by_missing_source |
| **Skirk** | source_missing; Third Descender link unresolved | No wiki page exists |
| **Mavuika** | High-risk Natlan mechanics; overclaim history (Pass 18.1) | All mechanics guarded as source_missing |
| **Aether/Lumine** | Descender status; sibling role confusion; NK-07 guarded evidence | CON-0015, NK-07 evidence_found_guarded |

---

## Required Source Types for Unblocking

| Source Type | Needed For | Priority | Viable Ingestion Route |
| --- | --- | --- | --- |
| Character Stories (CS) | All 99 character pages (backstory, personality depth) | High | Fandom API (tested in Pass 8) |
| Dottore voice lines (VL-DOTTORE) | Dottore | High | Fandom API or official release |
| Sandrone voice lines (VL-SANDRONE) | Sandrone | High | Fandom API or official release |
| Columbina voice lines (VL-COLUMBINA) | Columbina | High | Fandom API or official release |
| Nod-Krai AQ full transcripts | Acts II–VII claim verification | Medium | Fandom API (NK-06 provenance exists) |
| Skirk source | Skirk identity | Medium | Official release (inaccessible) |
| Quest dialogue (full) | All quest-related claims | Low | Not available (quests/ layer empty) |

---

## Human Review Queue

The following items require human-in-the-loop review before any status upgrades:

| Item | Type | Evidence Available | Recommended Action |
| --- | --- | --- | --- |
| NK-07 evidence on Dottore/Columbina/Sandrone | Claim upgrade | evidence_found_guarded | Review NK-07 evidence index; approve or keep guarded |
| Kaeya character story mapping (Pass 9) | Page update | CS-KAEYA-001 mapped | Approve or reject Kaeya page update proposal |
| CLM-017 (Raiden/Gnosis) | Claim upgrade | VLAQ direct evidence (Pass 5) | Approve source_status upgrade |
| CLM-009 (Skirk Gnosis/Descender) | Claim resolution | source_missing after deep read | Decide to keep blocked or pursue alternative source |
| CLM-010 (Gnosis shackles) | Label decision | keep_theory | Confirm theory status or approve downgrade |

---

## Claim Mapping Queue

The following require claim-level mapping before page updates can occur:

| Item | Characters | Recommended Pass |
| --- | --- | --- |
| Full claim mapping for all 99 character pages | All | Pass 26+ (per roadmap) |
| NK-07 evidence → page patches | Dottore, Columbina, Sandrone, Aether, Lumine | NK-08 (optional) |
| Cross-faction source-light governance | Dottore, Sandrone, Columbina, Skirk, Nicole, Varka | Pass 19 |
| Character-story evidence mapping | All 99 characters | Pass 20+ |

---

## Count Summary

| Category | Count |
| --- | --- |
| Critical blocked characters | 3 (Dottore, Sandrone, Skirk) |
| Source-light characters | 1 (Columbina) |
| Needs audit (no page) | 2 (Nicole, Varka) |
| Skipped (source_missing) | 4 (Ifa, Iansan, Varesa, Escoffier) |
| Inventory-only no page | ~13 (Nod-Krai characters) |
| Blocked claim clusters | ~15 (across all risk classes) |
| Evidence packets found (guarded) | 16 (NK-07 evidence IDs) |
| Human review items | 5 |
| Pre-existing source gaps | ~14 (mostly unresolved) |

*Note: Counts are approximate where noted. Exact figures depend on classification criteria for Nod-Krai NPCs and cross-faction characters.*
