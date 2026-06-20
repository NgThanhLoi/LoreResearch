# External Source Candidates

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Purpose

Registry of all user-provided external sources, classified by tier, with exact URLs preserved.

## Candidate Table

| Candidate ID | Source name | Exact URL | Tier | Source type | Reliability | Allowed use | Canon eligible? | Ingestion priority | Notes |
| ------------ | ----------- | --------- | ---- | ----------- | ----------- | ----------- | --------------- | ------------------ | ----- |
| EX-OFFICIAL-001 | HoYoLAB | https://www.hoyolab.com/ | A | Official community/announcement platform | high | Official announcements, character info, event details | yes_after_local_ingestion | P2 | Official HoYoverse platform |
| EX-OFFICIAL-002 | Official Genshin Impact website | https://genshin.hoyoverse.com/ | A | Official game website | high | Version pages, character promo, official descriptions | yes_after_local_ingestion | P2 | Primary official source |
| EX-OFFICIAL-003 | Genshin Impact Web Manga | https://genshin.hoyoverse.com/en/manga | A | Official manga | high | Official manga chapters, character backstory | yes_after_local_ingestion | P1 | Already have manga_transcripts/ locally |
| EX-OFFICIAL-004 | Official YouTube Channel | https://www.youtube.com/@GenshinImpact | A | Official video | high | Trailers, character demos, version previews | yes_after_local_ingestion | P2 | Trailer source, not quest dialogue |
| EX-API-001 | genshin-db GitHub | https://github.com/theBowja/genshin-db | B | API/database | medium | Character data, voice lines, item metadata | yes_after_local_ingestion | P1 | npm package with structured game data |
| EX-API-002 | genshin-db npm | https://www.npmjs.com/package/genshin-db | B | API/database | medium | Same as above, npm distribution | yes_after_local_ingestion | P1 | Package install for local querying |
| EX-API-003 | Fandom MediaWiki API | https://genshin-impact.fandom.com/api.php | B | API/database | medium | Quest transcripts, book texts, character data | yes_after_local_ingestion | P0 | Structured API for transcript extraction |
| EX-DB-001 | Honey Impact | https://genshin.honeyhunterworld.com/ | B | Static web database | medium | Item stats, character data, quest info | yes_after_local_ingestion | P2 | Datamined content, verify against official |
| EX-DB-002 | Project Amber / Ambr.top | https://ambr.top/ | B | Static web database | medium | Character/weapon/artifact metadata, quest data | yes_after_local_ingestion | P2 | Clean interface, good for metadata |
| EX-WIKI-001 | Genshin Impact Fandom Wiki | https://genshin-impact.fandom.com/ | C | Wiki/guide | medium | Quest titles, character names, version dates, claim discovery | secondary_only | P2 | Community-maintained; summaries are secondary |
| EX-WIKI-002 | GameWith | https://gamewith.net/genshin-impact/ | C | Guide | low | Gameplay guides, basic character info | secondary_only | P3 | Guide-focused, limited lore depth |
| EX-WIKI-003 | Icy Veins | https://www.icy-veins.com/genshin-impact/ | C | Guide | low | Build guides, basic character info | secondary_only | P3 | Gameplay-focused, limited lore value |
| EX-WIKI-004 | BlueStacks Blog | https://www.bluestacks.com/blog/game-guides/genshin-impact/ | C | Blog/guide | low | General game guides | secondary_only | never | Gameplay emulator blog, no lore value |
| EX-WIKI-005 | Wikipedia — Genshin Impact | https://en.wikipedia.org/wiki/Genshin_Impact | C | Encyclopedia | medium | Version history, release dates, meta-game timeline | secondary_only | P3 | Meta/version timeline only, not lore canon |
| EX-WIKI-006 | Beebom | https://www.beebom.com/ | C | Tech blog | low | General articles | secondary_only | never | No lore value |
| EX-WIKI-007 | Sportskeeda | https://www.sportskeeda.com/esports/genshin-impact | C | News/guide | low | News articles, basic character summaries | secondary_only | never | News aggregation, no primary lore |
| TH-REDDIT-001 | Reddit r/Genshin_Lore | https://www.reddit.com/r/Genshin_Lore/ | D | Community lore discussion | low | Theory discovery, claim identification, OOC risk | theory_only | P3 | Best community lore discussion source |
| TH-REDDIT-002 | Reddit r/Genshin_Impact | https://www.reddit.com/r/Genshin_Impact/ | D | Community general | low | General discussion, fanon discovery | theory_only | P3 | General community, less lore-focused |
| TH-COMMUNITY-001 | Teyvat Lore Garden | https://teyvatlore.garden/ | D | Community lore site | low | Lore compilation, theory discussion | theory_only | P3 | Dedicated lore community |
| TH-COMMUNITY-002 | Akiloom Cosplay | https://akiloomcosplay.com/ | D | Fan site | low | Fan perspective, character interpretation | theory_only | never | Cosplay/fan content, no lore source value |
| TH-COMMUNITY-003 | TvTropes — Genshin Impact | https://tvtropes.org/pmwiki/pmwiki.php/Characters/GenshinImpact | D | Trope analysis | low | OOC risk identification, trope comparison | theory_only | P3 | Useful for fanon/OOC trope mapping |
| LQ-LEAK-001 | Reddit r/Genshin_Impact_Leaks | https://www.reddit.com/r/Genshin_Impact_Leaks/ | E | Leak aggregation | unknown | Future-watch only | quarantine_only | never | Must NEVER enter canon |

## Source-Specific Notes

### Tier A — Official

**EX-OFFICIAL-001 — HoYoLAB** (https://www.hoyolab.com/)
- Useful for: official character birthday posts, event announcements, developer notes
- Must NOT be used for: user-generated posts/guides on the platform
- Verification needed: distinguish official HoYoverse posts from community posts

**EX-OFFICIAL-002 — Official Genshin Impact website** (https://genshin.hoyoverse.com/)
- Useful for: character pages, version pages, official descriptions
- Must NOT be used for: gameplay mechanics as lore proof
- Verification needed: content matches in-game state

**EX-OFFICIAL-003 — Genshin Impact Web Manga** (https://genshin.hoyoverse.com/en/manga)
- Useful for: official manga chapters (Diluc, Kaeya, Amber, Vennessa backstory)
- Must NOT be used for: extrapolating events not shown
- Verification needed: compare with local manga_transcripts/

**EX-OFFICIAL-004 — Official YouTube Channel** (https://www.youtube.com/@GenshinImpact)
- Useful for: trailers, character demos, story previews, version livestreams
- Must NOT be used for: trailer as quest dialogue proof
- Verification needed: trailers may show non-canonical promotional content

### Tier B — API / Database / Transcript

**EX-API-001 / EX-API-002 — genshin-db** (https://github.com/theBowja/genshin-db / https://www.npmjs.com/package/genshin-db)
- Useful for: structured character data, voice lines, stories, item descriptions
- Must NOT be used for: auto-canon without verification
- Verification needed: check data freshness, language coverage, version alignment

**EX-API-003 — Fandom MediaWiki API** (https://genshin-impact.fandom.com/api.php)
- Useful for: quest transcript pages, book text pages, structured metadata queries
- Must NOT be used for: community-written analysis sections as canon
- Verification needed: distinguish transcript sections from analysis/trivia sections

**EX-DB-001 — Honey Impact** (https://genshin.honeyhunterworld.com/)
- Useful for: datamined text, unreleased content metadata, quest text
- Must NOT be used for: unreleased/beta content as canon; datamined != confirmed
- Verification needed: cross-check with released in-game state

**EX-DB-002 — Project Amber / Ambr.top** (https://ambr.top/)
- Useful for: character metadata, weapon/artifact descriptions, quest listings
- Must NOT be used for: auto-canon without cross-check
- Verification needed: data accuracy, version freshness

### Tier C — Secondary

**EX-WIKI-001 — Genshin Impact Fandom Wiki** (https://genshin-impact.fandom.com/)
- Useful for: locating quest names, character names, version dates, navigating to transcript pages
- Must NOT be used for: wiki summaries/interpretations as canon proof
- Verification needed: always verify claims against primary source

**EX-WIKI-002 through EX-WIKI-007** — Guide sites
- Useful for: basic navigation, version dates, character rosters
- Must NOT be used for: lore claims, character psychology, story interpretations
- No ingestion priority for lore purposes

### Tier D — Community

**TH-REDDIT-001 — r/Genshin_Lore** (https://www.reddit.com/r/Genshin_Lore/)
- Useful for: identifying popular theories, discovering claims to verify, OOC risk patterns
- Must NOT be used for: canon proof under any circumstances
- Value: best single source for community theory landscape

**TH-COMMUNITY-001 — Teyvat Lore Garden** (https://teyvatlore.garden/)
- Useful for: compiled lore theories, cross-reference navigation
- Must NOT be used for: canon proof
- Value: organized community lore compilation

**TH-COMMUNITY-003 — TvTropes** (https://tvtropes.org/pmwiki/pmwiki.php/Characters/GenshinImpact)
- Useful for: identifying fanon tropes, OOC risk patterns, character perception vs canon
- Must NOT be used for: character definition or canon claims
- Value: excellent for headcanon-fanon-policy cross-reference

### Tier E — Leak

**LQ-LEAK-001 — r/Genshin_Impact_Leaks** (https://www.reddit.com/r/Genshin_Impact_Leaks/)
- Useful for: future-watch only if explicitly requested by user
- Must NOT be used for: any canon, character, quest, power, or timeline updates
- Quarantine policy: see wiki/research/leak-quarantine.md
