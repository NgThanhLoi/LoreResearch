# Pass 5 Next Actions

Generated: 2026-06-20 — Claude Code Pass 5 Deep Read for Partial VLAQ Claims

> **⚠️ SUPERSEDED:** This file's recommendations have been superseded by Pass 6 Human Review. Use `wiki/research/pass-6-next-actions.md` for current next steps.

## Pass 5 Summary

### Claims confirmed (direct evidence, ready for human review)
- **CLM-014** — Fontaine final AQ / Focalors sacrifice: ALL sub-claims confirmed with direct evidence
- **CLM-015** — Wanderer / Irminsul memory rewrite: Core rewrite + Traveler exception confirmed (name adoption sub-claim partial)
- **CLM-016** — Nahida / Rukkhadevata / memory erasure: ALL sub-claims confirmed with direct evidence
- **CLM-017** — Raiden Ei vs Shogun puppet: Unchanged from Pass 4 (already confirmed)
- **CLM-018** — Traveler vs Abyss sibling roles: ALL major sub-claims confirmed across 12 files

### Claims partially confirmed
- **CLM-011** — Third Descender identity: Descender concept confirmed; specific Third Descender identity NOT found in local files
- **CLM-015** (sub-claim) — "Wanderer" name adoption post-rewrite: Not in this file batch

### Claims still missing / unchanged
- **CLM-009** — Skirk: Only brief introduction found; identity claims remain source_missing
- **CLM-010** — Gnosis as shackles: Zero support; remains keep_theory
- **CLM-001 through CLM-006** — Dottore/Sandrone: Still blocked_by_missing_source
- **CLM-007/008** — Columbina: Still indirect_source_only
- **CLM-012** — Nod-Krai Acts II–VII: Still blocked_by_missing_source
- **CLM-019** — Character stories: Still blocked_by_missing_source

### Source-index impact
- 5 existing VLAQ source IDs (VLAQ-SUMERU-001, VLAQ-FONTAINE-001/002, VLAQ-TRAVELER-001/002, VLAQ-WANDERER-001) upgraded from `partial inspected` / `needs_deep_read` to `deep_read_confirmed`.
- Up to 5 new VLAQ IDs may be added for highest-value newly-read files.
- No structural changes to source-index format.

### No page update
- Zero character pages modified.
- Zero entity/topic/quest pages modified.
- Zero claims upgraded from THEORY to CANON.
- Zero external sources used.

---

## Recommended Pass 6

### Pass 6 — Human Review + Source Status Update Preparation (RECOMMENDED)

**Rationale:** Five claims (CLM-014, CLM-015, CLM-016, CLM-017, CLM-018) now have direct inspected evidence and are ready for human review. This is sufficient to proceed with source_status upgrades on corresponding wiki pages.

**Preconditions met:**
- CLM-014: ✓ All sub-claims direct
- CLM-015: ✓ Core claim direct (minor sub-claim partial — acceptable)
- CLM-016: ✓ All sub-claims direct
- CLM-017: ✓ Already confirmed Pass 4
- CLM-018: ✓ All major sub-claims direct

**Tasks for Pass 6:**
1. Human reviews Pass 5 claim-source matrix and evidence index.
2. Human approves which claims may have source_status upgraded on wiki pages.
3. Prepare page update plan: which character/synthesis pages get `source_status: primary_source_found`.
4. Execute source_status upgrades in a single controlled pass.
5. Update source-gap-report with closed gaps.
6. Still do NOT write story/premise/outline.
7. Still do NOT backfill lore onto entity shells.

**Risk:** Low — all evidence is direct and locally verified.

---

### Alternative: Pass 6B — Controlled Source Ingestion Test

**Use if:** Human wants to tackle blocked claims (Dottore, Sandrone, character stories) before page updates.

**Tasks:**
1. Install genshin-db in isolated test directory.
2. Query one low-risk character (e.g., Furina or Kaeya).
3. Verify Vietnamese language support.
4. Create one local `sources/character_stories/[character].md`.
5. No mass ingestion.

**Risk:** Low — controlled single-file test.

---

### Alternative: Pass 6C — Third Descender Targeted Search

**Use if:** Human wants to resolve CLM-011 before page updates.

**Tasks:**
1. Search remaining VLAQ files for "Kẻ Đổ Bộ thứ ba" or ordinal Descender references.
2. Check book_texts/ for Descender enumeration.
3. Check weapon_stories/ for Descender references.
4. Update CLM-011 status if found.

**Risk:** Very low — local reads only.

---

## Page Update Rules For Future Pass

No page update until:

1. Human approves the Pass 5 matrix.
2. Source IDs are valid (file exists, fully read, evidence confirmed).
3. Claim evidence is direct or sufficiently marked.
4. Disputed/theory claims remain THEORY — no automatic promotion.
5. Each page update cites the specific source ID and evidence type.

Page update scope (when approved):
- `source_status` field upgrade only.
- No story/premise/outline writing.
- No lore backfill into entity shells.
- No quest file filling.
- Citations added to wiki pages pointing to VLAQ source IDs.

---

## What Not To Do Yet

- Do not mass ingest character stories (100+ characters).
- Do not mass ingest quest transcripts from external APIs.
- Do not rewrite character pages with lore content.
- Do not update Dottore/Sandrone claims (still blocked_by_missing_source).
- Do not resolve Columbina = Kuutar theory (still indirect_source_only).
- Do not ingest Nod-Krai Acts II–VII without verified source.
- Do not fill 56 quest skeletons.
- Do not fill 481 entity shells.
- Do not write story/premise/outline/chapter.
- Do not scrape external sites.
- Do not install packages into repo root.
- Do not promote CLM-010 (Gnosis shackles) — no evidence found.
- Do not promote CLM-011 (Third Descender) — identity not confirmed.
- Do not assign Skirk claims source — still missing.
