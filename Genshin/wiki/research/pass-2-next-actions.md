# Pass 2 Next Actions

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Pass 2 Summary

Pass 2 established the source ingestion framework for the Genshin Impact Fanfic LLM Wiki:

### Created

| File | Purpose |
| ---- | ------- |
| wiki/sources/SOURCE_TEMPLATE.md | Reusable template for all new source files |
| wiki/sources/SOURCE_ID_RULES.md | Naming conventions and assignment rules for Source IDs |
| wiki/sources/EXTERNAL_SOURCE_POLICY.md | External source tier classification and canon eligibility |
| wiki/research/source-index-alignment.md | Alignment report comparing source-index with real folders |
| wiki/research/external-source-candidates.md | Full registry of 22 external sources with exact URLs and tier classification |
| wiki/research/source-ingestion-queue.md | Priority-ordered ingestion packages (P0–P3 + quarantine) |
| wiki/research/priority-source-map.md | Claim-to-source mapping for 21 critical claims |
| wiki/research/api-ingestion-feasibility.md | Evaluation of 5 API/tools for automated ingestion |
| wiki/research/leak-quarantine.md | Quarantine policy for leak content |
| wiki/research/pass-2-next-actions.md | This file |

### Key Decisions Made

1. **5-tier external source classification** (Official → Leak Quarantine)
2. **Source ID prefix system** (20 prefixes covering all source types)
3. **External candidate lifecycle** (unverified → evaluated → ingested → mapped → verified)
4. **Leak quarantine** — complete separation from canon
5. **Priority queue** — 7 P0 packages, 7 P1 packages, 6 P2 packages

## Ready For Pass 3?

**Yes — the framework is in place.**

The repo now has:
- ✓ Source templates for creating new source files
- ✓ Source ID rules preventing phantom/placeholder IDs
- ✓ External source policy with clear tier boundaries
- ✓ Registered external candidates with exact URLs
- ✓ Priority queue ordering ingestion work
- ✓ Claim-to-source map showing what blocks what
- ✓ API feasibility notes for tool selection
- ✓ Leak quarantine preventing contamination

## Recommended Pass 3

**Pass 3 — Source Tool Tests + P0 Source Package Ingestion**

### Pass 3 Tasks

| # | Task | Description | Depends on |
| - | ---- | ----------- | ---------- |
| 1 | Test Fandom MediaWiki API | Fetch one safe quest page, evaluate transcript quality | Human approval of external ingestion policy |
| 2 | Test genshin-db availability | Install npm package, query character/voice/story data | Human approval |
| 3 | Test Project Amber / Honey Impact | Manual inspection of transcript candidate pages | None |
| 4 | Create one sample local source file | Use SOURCE_TEMPLATE on an existing local source | None |
| 5 | Prepare missing source folders | Create sources/character_stories/, sources/official/, sources/external_candidates/ | After confirming ingestion approach |
| 6 | Verify VLAQ coverage for P1 claims | Check which archon quest voice line files cover Fontaine/Sumeru/Inazuma final acts | None |
| 7 | Begin character_stories ingestion (if approved) | Use genshin-db or Fandom API for character story texts | Human approval on source archive |

### Pass 3 Rules

- Do NOT mass ingest without human approval
- Do NOT backfill lore from ingested sources yet
- Do NOT upgrade theory claims based on newly ingested sources (that's Pass 4)
- Test with ONE source file first, verify quality, then scale
- Always use SOURCE_TEMPLATE for new source files
- Always assign Source IDs per SOURCE_ID_RULES

## Human Decisions Needed

These decisions must be made before Pass 3 can proceed:

| # | Question | Options | Impact |
| - | -------- | ------- | ------ |
| 1 | Should external transcript sources be allowed as `secondary_transcription`? | Yes / No / Case-by-case | Determines if Fandom/genshin-db data can support claims |
| 2 | Should Fandom API be used to fetch quest and book text? | Yes / No | Unblocks quest transcript ingestion |
| 3 | Should Project Amber / Honey be used as data source candidates? | Yes / No / Verification only | Determines metadata source access |
| 4 | Should leaks be fully excluded or quarantined for future-watch? | Fully excluded / Quarantined with future-watch | Already quarantined — confirm policy |
| 5 | Which P0 source package should be tested first? | character_stories / Dottore / Sandrone / Skirk / Fontaine AQ / Wanderer-Nahida-Raiden | Determines Pass 3 starting point |
| 6 | Is Vietnamese the preferred language for new source ingestion? | Vietnamese / English / Both | Affects tool selection and matching |

## What Not To Do Yet

- Do NOT fill 56 quest files from memory
- Do NOT auto-fill 481 entity template shells
- Do NOT upgrade Dottore / Sandrone / Columbina claims
- Do NOT treat community theory as canon
- Do NOT use leaks for any wiki updates
- Do NOT write premise / outline / chapter
- Do NOT perform large-scale source-index rewrite
- Do NOT create source IDs for non-existent files
- Do NOT ingest external content without human approval

## Pass 2.1 Corrections

- Retired legacy `QD/QD-ALL` wording.
- Clarified quest transcript prefixes:
  - `AQ/WQ/SQ/IQ` for future full transcripts.
  - `VLAQ/VLWQ` for existing voice-line quest sources.
- Corrected Dottore/Sandrone source package wording to avoid assuming character stories or direct voice lines exist.
- Reclassified source-index alignment as `P0-Internal Cleanup`, not a lore blocker.
- Verified required Pass 2 framework files exist.
- Verified user-provided external URLs are preserved.

## Updated Recommended Pass 3

Pass 3 should start with:

1. **P0-Internal Cleanup:**
   - Source-index alignment notes (add MG-ALL, VLAQ-ALL, VLWQ-ALL)
   - Retire QD-ALL legacy placeholder
   - Remove/downgrade Skirk TODO placeholder
2. **API/tool smoke tests:**
   - Fandom API — one safe quest page
   - genshin-db — one character query
   - Project Amber / Honey Impact — one manual inspection
3. **One sample local source file** using SOURCE_TEMPLATE
4. No mass ingestion
5. No lore backfill
