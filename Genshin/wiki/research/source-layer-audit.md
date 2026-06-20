# Source Layer Audit

Generated: 2026-06-20 — Pass 1 Structural Audit

## Purpose

Audit the current state of sources/ and determine which source pools can support future claim-level wiki work.

## Source Folder Table

| Source folder | Exists? | File count | Markdown count | Content quality | Usable as source? | Priority | Notes |
| ------------- | ------- | ---------: | -------------: | --------------- | ----------------- | -------- | ----- |
| sources/weapon_stories/ | Yes | 227 | 227 | source_rich | primary_source_candidate | P2 | Full in-game weapon narratives, Vietnamese |
| sources/artifact_descriptions/ | Yes | 61 | 61 | source_rich | primary_source_candidate | P2 | Full artifact set lore descriptions |
| sources/book_texts/ | Yes | 79 | 79 | source_rich | primary_source_candidate | P1 | In-game book/scroll full texts |
| sources/voice_lines/characters/ | Yes | 96 | 96 | source_rich | primary_source_candidate | P0 | Character dialogue by interaction type |
| sources/voice_lines/archon_quests/ | Yes | 124 | 124 | source_rich | primary_source_candidate | P0 | Main story quest dialogue transcripts |
| sources/voice_lines/world_quests/ | Yes | 4 | 4 | source_rich | primary_source_candidate | P0 (gap) | Only 4 files — massive gap |
| sources/manga_transcripts/ | Yes | 21 | 21 | source_rich | primary_source_candidate | P2 | Metadata + plot summaries, not full dialogue |
| sources/character_stories/ | **No** | 0 | 0 | missing | missing | P0 (critical) | Character backstory text not in workspace |
| sources/quest_dialogue/ | **No** | 0 | 0 | missing | missing | P1 | Partially covered by voice_lines/ |
| sources/official/ | **No** | 0 | 0 | missing | missing | P2 | Dev notes, announcements not present |

**Total source files: 612 markdown files**

## Strong Source Pools

| Pool | Strength | Coverage |
| ---- | -------- | -------- |
| Weapon stories | Excellent — 227 files, comprehensive | Appears to cover most/all weapons |
| Archon quest voice lines | Strong — 124 files | Covers major archon quest dialogue |
| Character voice lines | Strong — 96 files | Most playable characters represented |
| Book texts | Good — 79 files | Substantial book collection |
| Artifact descriptions | Good — 61 files | Covers major artifact sets |
| Manga transcripts | Adequate — 21 files | Manga chapter summaries + metadata |

## Weak / Missing Source Pools

| Pool | Status | Impact |
| ---- | ------ | ------ |
| Character stories | **MISSING** — folder does not exist | Cannot verify character backstory claims |
| World quest dialogue | **Severely lacking** — only 4 files | Cannot source world quest lore claims |
| Quest dialogue (dedicated) | **MISSING** — no separate folder | voice_lines/ partially covers this |
| Official sources | **MISSING** — no developer notes/announcements | Cannot verify meta-game claims |
| Nod-Krai Acts II–VII | **No source files** — referenced but absent | Blocks Nod-Krai lore verification |

## Source Index Alignment

Compared with wiki/sources/source-index.md:

### Mismatches Found

| Issue | Detail | Severity |
| ----- | ------ | -------- |
| source-index mentions quest_dialogue | Folder does not exist | High |
| source-index mentions official sources | Folder does not exist | Medium |
| source-index mentions character_stories | Folder does not exist | High |
| WS-ALL: 227 weapon stories | Matches actual count | ✓ Aligned |
| AR-ALL: 61 artifact descriptions | Matches actual count | ✓ Aligned |
| VL-ALL: voice lines | Present but world_quest coverage minimal | Medium |
| BK-ALL: books | Present, appears adequate | ✓ Aligned |

### Source-Index Known Issues (from source-index.md itself)

The source-index already notes:
- "quest_dialogue and official source folders are missing from workspace"
- This is a known documented gap, not a new finding

## Recommendations for Pass 2

1. Do NOT create source folders without actual source content to fill them
2. Prioritize character_stories ingestion — blocks character audit advancement
3. World quest dialogue expansion is critical for world quest claims
4. Source-index alignment fixes can happen in Pass 2 framework setup
5. Do not auto-generate source IDs for non-existent files
