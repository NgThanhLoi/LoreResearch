# Leak Quarantine

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Purpose

Keep leak content separate from canon and prevent contamination of the wiki knowledge base.

## Quarantine Source

| Source | Exact URL | Status | Allowed use | Banned use |
| ------ | --------- | ------ | ----------- | ---------- |
| Reddit r/Genshin_Impact_Leaks | https://www.reddit.com/r/Genshin_Impact_Leaks/ | leak_quarantined | Future-watch only if user explicitly requests leak tracking | CANON, character pages, quest pages, power governance, timeline canon, premise, outline, chapter drafting, narrator-safe statements |

## Leak Rule

Any leak content must stay:

- Outside `sources/` folder
- Outside normal claim mapping
- Outside canon registers (contradiction-register, unverified-lore-register)
- Outside character pages
- Outside power-system-governance
- Outside timeline references
- Outside project foundation/planning

## What Leaks Cannot Do

| Action | Allowed? | Reason |
| ------ | -------- | ------ |
| Support a CANON claim | No | Leaks are unverified and may be fake/modified |
| Update a character page | No | Character pages require primary source |
| Update power governance | No | Power rules require verified in-game mechanics |
| Update timeline | No | Timeline requires confirmed release dates |
| Support premise/outline | No | Story foundation must be canon-based |
| Appear in source-index.md | No | Source index is for verified/candidate sources only |
| Override existing canon | No | Leaks cannot supersede confirmed information |
| Be used as OOC reference | No | OOC must reference actual in-game behavior |

## What Leaks Can Do (If User Explicitly Requests)

| Action | Conditions |
| ------ | ---------- |
| Noted as "leak rumor exists" in a quarantine file | Only in this file or a dedicated leak-watch file |
| Used for personal future-planning by user | Only if user explicitly asks for leak awareness |
| Compared against later official release | After official release, create NEW source from official material |

## If A Leak Later Becomes Official

When leaked content is officially released:

1. **Do NOT cite the old leak** as the source
2. **Create a new official source entry** from the official released material
3. **Use standard source template** (SOURCE_TEMPLATE.md)
4. **Assign proper source ID** (OF, AQ, VL, etc. — NOT LQ)
5. **The old LQ entry remains** in this file as historical record only
6. **Never backlink** the official source to the leak

## Current Quarantined Items

None currently quarantined. This section will be populated if user requests leak tracking in future passes.

## Quarantine Review Schedule

- Leaks are not reviewed automatically
- Leaks are only noted if user explicitly requests
- After each major game version release, check if any quarantined items became official
- If official, follow the "becomes official" process above
- If debunked, mark as "debunked_leak" and leave in quarantine as historical note
