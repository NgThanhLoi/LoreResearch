# Pass 25.3 — Encoding / Mojibake Risk Audit

**Date:** 2026-06-25  
**Type:** Report-only audit  
**Scope:** All .md files in repository scanned for encoding artifacts

---

## Summary

| Metric | Value |
|--------|-------|
| total_suspicious_occurrences | 1,949 |
| files_affected | 213 |
| source_files_affected | 84 |
| current_wiki_files_affected | 5 |
| legacy/entity_files_affected | 120 |
| other (topics, planning, index) | 4 |
| highest_risk_single_file | _Index.md (709 occurrences) |
| recommended_action | targeted_source_header_fix_in_future_pass |

---

## Patterns Detected

| Pattern | Occurrences | Typical Context |
|---------|-------------|-----------------|
| Ã (U+00C3) | 737 | Vietnamese diacritical mojibake |
| áº (Vietnamese-like) | 735 | Vietnamese diacritical mojibake |
| Â (U+00C2) | 443 | Vietnamese diacritical mojibake |
| á» (Vietnamese-like) | 33 | Vietnamese diacritical mojibake |
| ThÆ° | 1 | Vietnamese Ư mojibake |

**Root Cause:** Vietnamese text (Tiếng Việt) was encoded as UTF-8 but interpreted as Latin-1/ISO-8859-1 at some point in the generation/ingestion pipeline.

---

## Breakdown by Layer

### Source Files (84 files) — HIGH severity

| Subdirectory | Files Affected | Severity |
|--------------|---------------|----------|
| sources/voice_lines/ | 58 | encoding_content_risk |
| sources/book_texts/ | 13 (incl. 7 nod-krai) | encoding_header_risk |
| sources/artifact_descriptions/ | 6 | encoding_header_risk |
| sources/weapon_stories/ | 5 | encoding_header_risk |
| sources/manga_transcripts/ | 2 | encoding_content_risk |

**Assessment:** Source files are the highest risk because corrupted headers/content could mislead extraction pipelines. However, the content within these files (the actual lore text in English/game language) generally remains readable — the mojibake primarily affects Vietnamese section headers and metadata annotations.

**Subcategory:**
- `encoding_header_risk` — Only section headers contain mojibake; lore content is intact
- `encoding_content_risk` — Some content lines also affected (voice_lines, manga_transcripts)

### Entity Files (120 files) — MEDIUM severity

| Subdirectory | Files Affected | Severity |
|--------------|---------------|----------|
| entities/character_intelligence/ | 109 | medium |
| entities/weapons/ | 7 | medium |
| entities/characters/ | 2 | medium |
| entities/artifact_sets/ | 2 | medium |

**Assessment:** These are raw working files. Mojibake affects Vietnamese annotations and metadata headers. Core English-language lore content remains readable.

### Current Wiki Files (5 files) — MEDIUM severity

| File | Severity | Notes |
|------|----------|-------|
| wiki/synthesis/contradiction-register.md | medium | Vietnamese text in entries |
| wiki/entities/characters/Kinich.md | medium | Vietnamese annotation |
| wiki/entities/characters/Nahida.md | medium | Vietnamese annotation |
| wiki/research/pass-24-*.md (2 files) | low | Report metadata only |

### Other (4 files) — LOW severity

| File | Severity |
|------|----------|
| _Index.md | low (709 occurrences but legacy-only) |
| topics/relationships/relationship_database.md | low |
| topics/relationships/relationship_graphs.md | low |
| planning/07-story-bible-skeleton.md | low |

---

## Top 10 Affected Files by Occurrence Count

| # | File | Occurrences | Severity |
|---|------|-------------|----------|
| 1 | _Index.md | 709 | low (legacy) |
| 2 | sources/voice_lines/archon_quests/Caribert/*.md | 9 | high |
| 3 | entities/character_intelligence/Xianyun.md | 8 | medium |
| 4 | sources/voice_lines/characters/Xiangling.md | 7 | high |
| 5 | sources/book_texts/nod-krai/*.md (7 files) | 4-6 each | high |
| 6 | entities/character_intelligence/*.md (multiple) | 4-6 each | medium |
| 7 | sources/voice_lines/characters/*.md (multiple) | 3-5 each | high |
| 8 | wiki/synthesis/contradiction-register.md | ~3 | medium |
| 9 | wiki/entities/characters/Kinich.md | ~2 | medium |
| 10 | wiki/entities/characters/Nahida.md | ~2 | medium |

---

## Recommended Actions

| Priority | Action | Target | Scope |
|----------|--------|--------|-------|
| 1 (future pass) | Fix source file headers | sources/book_texts/nod-krai/*.md | 7 files |
| 2 (future pass) | Fix wiki entity Vietnamese annotations | Kinich.md, Nahida.md | 2 files |
| 3 (future pass) | Fix contradiction-register Vietnamese text | wiki/synthesis/ | 1 file |
| 4 (deferred) | Audit voice_lines mojibake impact | sources/voice_lines/ | 58 files |
| — | No action | _Index.md, entities/character_intelligence/ | legacy layer |

**Mass encoding fix is NOT recommended in this pass.** Source file fixes should be scoped and verified individually in a future maintenance pass to avoid content corruption.

---

## Severity Classification Key

| Severity | Criteria |
|----------|----------|
| low | Legacy/generated files only; not current evidence |
| medium | Current report or wiki readability affected but lore content intact |
| high | Source file header/content affected; could mislead extraction |

| Subcategory | Criteria |
|-------------|----------|
| encoding_header_risk | Only headers/metadata corrupted; lore content readable |
| encoding_content_risk | Some content lines also corrupted |
