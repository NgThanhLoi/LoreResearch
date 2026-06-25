# Pass 25.7 — Controlled Subset Selection

**Date:** 2026-06-25  
**Status:** Plan — awaiting local data provision

---

## Priority categories for first alias build

### Required subset (first import batch)

| Category | Priority | Rationale |
|----------|----------|-----------|
| characters | P0 | Core entities, high-risk claim subjects, most wiki pages |
| organizations | P0 | Fatui, Knights, Abyss Order — frequent in claims |
| locations | P1 | Regions, nations, key lore locations |
| story_terms | P1 | Lore terminology, worldbuilding concepts |

### Optional subset (include if clearly bounded and small)

| Category | Priority | Rationale |
|----------|----------|-----------|
| quests | P2 | Source-reference context for evidence |
| artifacts | P2 | Lore text in artifact descriptions |
| weapons | P3 | Some weapons have lore relevance |

### Excluded from first build

| Category | Reason |
|----------|--------|
| Full dialogue text | Too large, not needed for alias index |
| Large examples corpus | Bloat risk, not alias data |
| Items (general) | Low lore relevance for alias mapping |
| Unneeded metadata | pronunciationJa not needed for alias resolution |

---

## High-priority entity groups

### Nod-Krai names (confirmed reported in source)

```text
Columbina Hyposelenia
Kuutar
Ineffa
Aino
Lauma
Varka
```

### Fatui / Harbingers

```text
All Harbinger codenames and real names across languages
Fatui organization aliases
```

### Abyss / Khaenri'ah terms

```text
Abyss Order
Khaenri'ah
Cataclysm
Abyss Lector / Herald / etc.
Dainsleif
```

### Regions / Nations

```text
Mondstadt, Liyue, Inazuma, Sumeru, Fontaine, Natlan, Snezhnaya, Nod-Krai, Khaenri'ah
Regional sub-locations (key ones)
```

---

## Expected scale estimate

Based on Hermes report (36 dictionary files, actively maintained):

| Category | Estimated entries | Notes |
|----------|------------------|-------|
| Characters | 80–120 | All playable + key NPCs, multilingual |
| Organizations | 30–50 | Factions, groups |
| Locations | 100–200 | Regions, sub-areas |
| Story terms | 50–100 | Lore concepts, events |
| **Total first batch** | **260–470** | Conservative estimate |

---

## Import mode

```text
Mode: controlled_subset
Selection: characters + organizations + locations + story_terms
Format: extract alias entries only (name fields, language variants, tags)
Exclude: full examples, dialogue text, pronunciation-only entries
Output: normalized alias index entries per schema
```

---

## Status

**Deferred** — subset cannot be extracted until genshin-langdata is locally available.

When data is provided (Pass 25.7.1), apply this selection plan to build the actual indexes.
