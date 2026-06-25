# Pass 25.6 — Import Decision Matrix

**Date:** 2026-06-25  
**Status:** Decision document — no imports executed

---

## Decision matrix

| Source | Import now? | Import type | Storage target | Followup pass | Blocking questions | Risk | Decision |
|--------|-------------|-------------|----------------|---------------|-------------------|------|----------|
| Genshin Lore Graph | No | manifest_only | `_data/external/structured_reference/genshin-lore-graph/` | Pass 25.8 | License status? Schema stability? Size of controlled subset? | Medium — graph edges could be mistaken for evidence | Plan controlled import in Pass 25.8 |
| genshin-langdata | No | manifest_only | `_data/external/alias_reference/genshin-langdata/` | Pass 25.7 | License status? Alias conflict density? Which categories first? | Low — aliases are reference, not claims | Plan alias subset/index in Pass 25.7 |
| Project Amber | No | skip | `_data/external/structured_reference/project-amber/` | SR-04 | API terms? What metadata needed? Which items/books first? | Low — metadata only, not evidence | Defer to SR-04 / item-book-artifact cross-check |
| GenshinTextSearch | No | skip | `_data/external/tooling_reference/genshin-text-search/` | SR-06 | Current Genshin version coverage? Local setup feasible? Disk requirements? | Low — tool only, no data stored | Defer to SR-06 / local search feasibility |
| HoYoWiki | No | skip | `_data/external/official_site_support/` | SR-03 | Official provenance mapping? Structured extraction possible? | Medium — "official" ≠ canon without provenance | Defer to SR-03 |
| GenshinLore | No | skip | `_data/external/secondary_synthesis/` | SR-05 | Quarantine policy sufficient? | Medium — secondary synthesis risk | Defer to SR-05 |
| BWiki | No | skip | `_data/external/secondary_synthesis/` | SR-05 | CN community content review? | Medium — community content | Defer to SR-05 |

---

## Summary of decisions

### Immediate (Pass 25.6)

- **No full raw import for any source.**
- Manifest-only planning for Genshin Lore Graph and genshin-langdata.
- Storage layout and schema policies established.
- All sources remain at documentation/planning stage.

### Next pass (Pass 25.7 — Alias / Terminology Index Build)

- genshin-langdata controlled subset: characters, organizations, locations, story terms
- Alias index build: `alias_index.json`, `entity_name_map.json`, `term_multilang_map.json`
- Genshin Lore Graph `lookup_by_name.json` if license permits

### Later (Pass 25.8 — Graph Reference Controlled Import)

- Genshin Lore Graph controlled subset
- Graph entity lookup, worldview concept lookup, relationship candidate index
- Full schema mapping and normalization

### Deferred (SR passes)

- SR-03: HoYoWiki official provenance
- SR-04: Project Amber item/book/artifact cross-check
- SR-05: GenshinLore / BWiki / community sources quarantine handling
- SR-06: GenshinTextSearch local tool feasibility

---

## Blocking questions to resolve before import

| Source | Question | Resolve by |
|--------|----------|-----------|
| Genshin Lore Graph | What license does the repository use? | Before Pass 25.8 |
| Genshin Lore Graph | Is the graph schema stable or actively changing? | Before Pass 25.8 |
| Genshin Lore Graph | What subset is needed for initial import? | Pass 25.8 planning |
| genshin-langdata | What license does the repository use? | Before Pass 25.7 |
| genshin-langdata | How many alias conflicts exist across languages? | Pass 25.7 planning |
| genshin-langdata | Which categories are highest priority? | Pass 25.7 planning |
| Project Amber | What are the API terms of use? | Before SR-04 |
| GenshinTextSearch | What Genshin version does the search index cover? | Before SR-06 |
| GenshinTextSearch | What are the local disk/setup requirements? | Before SR-06 |
