# RELIABILITY SUMMARY — Genshin Lore Bible (Post-Patch)

> Đánh giá tổng thể độ tin cậy của cơ sở dữ liệu SAU KHI áp dụng các sửa chữa từ audit.
> Ngày đánh giá: 2026-06-19

---

## Tổng Quan Theo Tầng (Layer Assessment)

### Tầng 1: Source Layer (Nguồn sơ cấp)
| Directory | Files | Reliability | Coverage | Notes |
|---|---|---|---|---|
| sources/weapon_stories/ | 227 | **95/100** | 97% | Authentic transcriptions. 7 weapons missing source files. |
| sources/artifact_descriptions/ | 61 | **95/100** | 100% | Complete. 1 file (v6.6) flagged as potentially unreleased. |
| sources/book_texts/ | ~20 | **90/100** | Partial | Nod-Krai books verified authentic. Only Act I quest summary exists. |
| sources/voice_lines/ | ~40+ | **90/100** | Partial | Not fully audited but sampled files are authentic. |

**Verdict: SOURCE LAYER IS HIGHLY RELIABLE (90-95%)**

---

### Tầng 2: Entity Layer (Entities/hồ sơ thực thể)
| Directory | Substantive Files | Reliability | Coverage | Notes |
|---|---|---|---|---|
| entities/weapons/ | 234 | **93/100** | ~97% | Metadata correct. Lore sections empty (by design — linked to sources). |
| entities/artifact_sets/ | 61 | **93/100** | 100% | Same as above. |
| entities/nations/ | 4/9 filled | **65/100** | 44% | Mondstadt corrected. Nod_Krai corrected but partially unverifiable. 5 shells. |
| entities/organizations/ | 4/14 filled | **70/100** | 29% | Fatui corrected. Nod_Krai_Factions unsourced. 10 shells. |
| entities/gods_and_archons/ | 0/13 filled | **N/A** | 0% | All empty templates. |
| entities/dragon_sovereigns/ | 1/5 filled | **50/100** | 20% | Overview has Nibelung claims still needing full revision. |
| entities/celestial_beings/ | 2/2 filled | **70/100** | 60% | Primordial_One mostly accurate (Phanes description CONFIRMED canon). |
| entities/historical_figures/ | 3/10 filled | **65/100** | 30% | Vennessa/Alice/Rhinedottir partially sourced. |
| entities/races/ | 0 | **N/A** | 0% | Empty directory. |
| entities/characters/ | ~60 | **85/100** | Good | Metadata shells, minimal lore claims. |
| entities/character_intelligence/ | ~40 | **70/100** | Good | Major events accurate. Personality sections contain unlabeled speculation. |

**Verdict: ENTITY LAYER IS MIXED — weapons/artifacts excellent, narrative entities poor coverage**

---

### Tầng 3: Analysis Layer (Topics/phân tích tổng hợp)
| Directory | Files | Reliability (Post-Patch) | Coverage | Notes |
|---|---|---|---|---|
| topics/nod-krai/ | 7 | **60/100** (↑ from 45) | 60% | Major corrections applied. Acts II-VII still ❓. Embla/Sampo flagged. |
| topics/relationships/ | 2 | **55/100** (↑ from 50) | 35% | Methodology disclaimer added. 5 claims reclassified. Still missing major pairs. |

**Verdict: ANALYSIS LAYER IMPROVED but still contains unverifiable claims**

---

### Tầng 4: Quest Layer (Quests)
| Directory | Files | Reliability | Coverage | Notes |
|---|---|---|---|---|
| quests/archon_quests/ | 34 | **15/100** | 55% structure | Correct structure, zero content. All summaries empty. |
| quests/world_quests/ | 23 | **15/100** | 40% structure | Same — good file list, no content. |

**Verdict: QUEST LAYER IS INFRASTRUCTURE ONLY — no auditable content**

---

## Confidence Scoring (Post-Patch)

| Category | Reliability | Coverage | Evidence Quality | Change from Pre-Patch |
|---|---|---|---|---|
| Weapon/Artifact Sources | 95 | 97 | 95 | — (unchanged) |
| Nod-Krai Topics | **60** | 60 | **50** | ↑ from 55/60/40 |
| Relationship Database | **55** | 35 | **40** | ↑ from 50/35/30 |
| Character Intelligence | 70 | 75 | 55 | — (unchanged, corrections pending) |
| Nations (filled ones) | **55** | 25 | **45** | ↑ from 40/25/35 |
| Organizations (filled ones) | **50** | 20 | **45** | ↑ from 45/20/40 |

---

## What Was Fixed (Improvements)

1. ✅ **Ianikuinen/Nibelung contradiction resolved** — Source-based correction with clear annotation (5 files)
2. ✅ **Rotwang confirmed as canon** — First audit's false positive corrected; unsupported details (Embla, Sampo Machine) properly flagged (4 files)
3. ✅ **Moon names confirmed** — Aria/Sonnet/Canon verified from Heart's Desire; assignment to moon types flagged as unverified
4. ✅ **Acts II–VII content flagged** — Clear ❓ Unverified labels throughout (3 files)
5. ✅ **Mondstadt timeline error fixed** — "Trăm Năm" → "Năm Trăm Năm"
6. ✅ **Fatui table completed** — Pulcinella added as #11
7. ✅ **5 relationship claims reclassified** — From flat facts to properly tagged speculation/inference
8. ✅ **Methodology disclaimer added** — Readers now warned about editorial content in relationship database
9. ✅ **Terpikeraunas flagged** — Marked ❓ Unverified in all files where it appears (2 files)
10. ✅ **Gnosis creation mechanism sourced** — Skirk dialogue cited; combination mechanism marked 🟡
11. ✅ **40-year war sourced** — Before Sun and Moon quote added to Dragon Sovereigns Overview
12. ✅ **Typo fixed** — "Quyệt" → "Quyền" in Overview.md

## What Still Needs Work

1. 🔴 **34 open issues remain** (see REMAINING_OPEN_ISSUES.md — 3 resolved since initial report)
2. 🔴 **Character Intelligence files** — 40+ files with unlabeled speculation in Sections 3–8
3. ⚪ **relationship_graphs.md** — Rotwang/Sibling link needs source note
4. 🟡 **Massive content gaps** — 70%+ of entity files are empty templates

---

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Reader trusts ❓ content as canon | Medium | High | Classification labels now present; needs propagation to remaining files |
| Character personality headcanon spreads | High | Medium | Section 11 disclaimers exist but inline tags needed |
| Nod-Krai Acts II-VII content turns out to be wrong | Low-Medium | High | Clearly flagged; will auto-resolve when sources are cached |
| Ianikuinen ≠ Nibelung (they're different entities) | Medium | High | Flagged with clear annotation; awaits future game content |
| Sampo Mill conflation causes confusion | Medium | Medium | Corrected in timeline.md; needs propagation |

---

## OVERALL VERDICT

| Metric | Score | Grade |
|---|---|---|
| **Data Integrity (post-patch)** | 72/100 | B- |
| **Source Traceability** | 55/100 | D+ |
| **Canon Classification Accuracy** | 65/100 | C |
| **Coverage Completeness** | 35/100 | F |
| **Structural Soundness** | 80/100 | B |

**Bottom Line:** The database's primary source layer is excellent (A grade). The corrections applied today significantly improved data integrity in the analytical layer by properly flagging unverified content and fixing contradictions. However, the overall database remains heavily incomplete (35% coverage) and the character intelligence files still need systematic inline classification work. The most critical remaining risk is that 2 additional topic files and the Dragon Sovereigns Overview still contain the uncorrected Nibelung claims.
