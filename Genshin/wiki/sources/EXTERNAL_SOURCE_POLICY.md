# External Source Policy

## Purpose

Define how external sources may be used in this workspace without contaminating the canon layer. External sources are valuable for discovery, navigation, and verification candidates — but they are NOT automatically canon.

## Source Tiers

| Tier | Name | Examples | Allowed use | Canon use? | Required status |
| ---- | ---- | -------- | ----------- | ---------- | --------------- |
| A | Official Source Candidate | HoYoLAB, official website, web manga, official YouTube | Official announcements, manga, trailers, version pages, character promo | Yes — after local ingestion + claim mapping | official_source_candidate |
| B | API / Database / Transcript Candidate | genshin-db, Fandom API, Honey Impact, Project Amber | Locate game text, item/character metadata, prepare automated ingestion | Yes — after local ingestion + verification | external_candidate_unverified → secondary_transcription |
| C | Wiki / Guide / Secondary Reference | Fandom wiki pages, GameWith, Icy Veins, BlueStacks, Wikipedia | Locate names, quest titles, version dates, claims to verify elsewhere | Secondary only — never as primary canon | secondary_only |
| D | Community Theory / Lore Discussion | Reddit r/Genshin_Lore, Teyvat Lore Garden, TvTropes | Theory discovery, fanon/OOC risk discovery, trope comparison | Theory only — never as canon | theory_source |
| E | Leak Quarantine | Reddit r/Genshin_Impact_Leaks | Future-watch only if user explicitly requests | Never canon | leak_quarantined |

## Canon Eligibility Rules

1. **Official sources** (Tier A) can become canon-supporting ONLY after:
   - Local source file is created using SOURCE_TEMPLATE.md
   - Source ID is assigned per SOURCE_ID_RULES.md
   - Claim mapping connects source to specific wiki claims
   - Content is verified against in-game state

2. **API/database sources** (Tier B) can become source-like after:
   - Verification that data matches in-game text
   - Local ingestion into workspace
   - Classification as secondary_transcription (not official)
   - They are NOT official by default

3. **Wiki/guide summaries** (Tier C) are permanently secondary:
   - May be used to locate claims that need primary verification
   - May be used for quest titles, version dates, character names
   - Must NEVER be used as primary canon proof

4. **Community discussions** (Tier D) support theory discovery only:
   - Can identify claims that need verification
   - Can support THEORY / UNVERIFIED / OOC_RISK labels
   - Must NEVER upgrade claims to CANON

5. **Leaks** (Tier E) cannot support canon:
   - Must remain outside sources/ folder
   - Must remain outside claim mapping
   - If later confirmed by official release, create new source from official material

## Copyright / Excerpt Rules

- Do NOT paste long copyrighted dialogue into source files.
- Use short excerpts only when necessary for claim verification.
- Prefer claim mapping, metadata, and short summaries over full transcription.
- Reference page/section/timestamp rather than copying full text.
- If a source requires substantial text for verification, note the location and let human review decide.

## External Candidate Lifecycle

```
1. external_candidate_unverified
   ↓ (evaluated by human or tool test)
2. evaluated_candidate
   ↓ (content brought into local workspace)
3. locally_ingested_source
   ↓ (claims connected to wiki)
4. claim_mapped_source
   ↓ (verified against game)
5. primary_source_found OR secondary_transcription
```

Each transition requires:
- Step 1→2: Basic accessibility check, tier classification
- Step 2→3: Actual content ingestion into sources/ with SOURCE_TEMPLATE
- Step 3→4: Claim IDs mapped in source file
- Step 4→5: Cross-verification against in-game state or other primary sources

## Leak Quarantine Rules

Leak content must:
- Stay outside normal `sources/` folder
- Never update canon claim mapping
- Never update character pages
- Never update power governance
- Never update timeline as canon
- Never be used for premise/outline/chapter drafting
- Never be narrator-safe statements
- Remain in `wiki/research/leak-quarantine.md` registry only

If a leak later becomes official:
- Create a NEW official source entry from the official released material
- Do NOT cite the old leak as the source
- The leak entry remains in quarantine as historical record

## Ingestion Decision Tree

```
Is the source official HoYoverse material?
├─ Yes → Tier A → Can become canon after local ingestion
└─ No
   ├─ Is it structured game data (API/database)?
   │  ├─ Yes → Tier B → Can become secondary_transcription after verification
   │  └─ No
   │     ├─ Is it a wiki/guide summary?
   │     │  ├─ Yes → Tier C → Secondary only, never primary
   │     │  └─ No
   │     │     ├─ Is it community discussion/theory?
   │     │     │  ├─ Yes → Tier D → Theory support only
   │     │     │  └─ No
   │     │     │     └─ Is it leaked/datamined?
   │     │     │        ├─ Yes → Tier E → Quarantine
   │     │     │        └─ No → Classify as unknown, request human review
```
