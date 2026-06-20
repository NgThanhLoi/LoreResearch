# Pass 4 Next Actions

Generated: 2026-06-20 — Claude Code Pass 4 Local VLAQ Coverage Mapping

## Pass 4 Summary (Corrected by Pass 4.1)

> **⚠️ Pass 4.1 Supersession:** The coverage labels below have been corrected by Pass 4.1 Strictness Fix. Only CLM-017 retains full `coverage_found`. All other claims have been downgraded. See "Claim Coverage Status (Pass 4.1 Corrected)" below for current truth.

### VLAQ Inventory
- **124 files** across 34 quest arc subfolders inventoried.
- Key arcs detected: Fontaine (8 files across 4 folders), Sumeru (19 files across 3 folders), Inazuma (18 files across 3 folders), Traveler/Abyss (12 files across 3 folders), Wanderer (1 dedicated file).
- **8 files** physically inspected with content verification.
- **8 file-level VLAQ source IDs** added to source-index.md.

### Claim Coverage Status (Pass 4.1 Corrected)

- **CLM-017** (Raiden Ei/puppet): `coverage_found` — direct evidence, fully inspected. **Ready for human review.**
- **CLM-014** (Fontaine/Focalors): `partial_primary_ready` — Furina/prophecy/Neuvillette direct; Focalors sacrifice needs deep read.
- **CLM-016** (Nahida/Rukkhadevata): `primary_source_found_for_identity`; memory erasure `needs_deep_read`.
- **CLM-018** (Traveler/Abyss sibling): `needs_file_level_confirmation` — only 2 of 12 files inspected.
- **CLM-015** (Wanderer/Irminsul): `needs_deep_read` — only opening 40 lines inspected.
- **CLM-011** (Third Descender): `needs_deep_read` — "Kẻ Đổ Bộ" referenced but identity unconfirmed.
- **CLM-009** (Skirk): `source_missing` — zero local files.
- **CLM-010** (Gnosis as shackles): `keep_theory` — weak indirect only, remains THEORY.

### Source Index Updates
- 8 file-level VLAQ IDs added: VLAQ-INAZUMA-001/002, VLAQ-SUMERU-001, VLAQ-FONTAINE-001/002, VLAQ-TRAVELER-001/002, VLAQ-WANDERER-001
- All based on physical inspection of file content.
- MG-ALL, VLAQ-ALL, VLWQ-ALL from Pass 3 remain valid.

### No Lore Backfill
- Zero character pages updated.
- Zero claims upgraded.
- Zero theories promoted to canon.
- No external ingestion performed.

---

## Recommended Pass 5 Options

### Option A — Human Review + Page Update Preparation (NOT YET RECOMMENDED)

> **⚠️ Pass 4.1 Note:** Option A was previously recommended as default. After strictness correction, only CLM-017 has full direct inspected evidence. CLM-014, CLM-016, CLM-018 each have uninspected files critical to their full claims. **Run Option D (deep reads) first**, then Option A becomes safe.

**Use if:** Deep reads from Option D have been completed AND human approves coverage matrix.

**Tasks:**
1. Human reviews Pass 4.1 corrected coverage map and claim-source matrix.
2. Human approves which claims may move from `needs_primary_source` to `primary_source_found`:
   - CLM-017 (Raiden Ei/puppet) — recommend: approve now (fully inspected)
   - CLM-014 (Fontaine) — recommend: hold until Focalors sacrifice file deep-read
   - CLM-016 (Nahida/Rukkhadevata) — recommend: approve identity only; hold memory erasure
   - CLM-018 (Traveler/Abyss) — recommend: hold until file-level confirmation
   - CLM-015 (Wanderer) — recommend: hold until deep read
3. Prepare page update plan (which character/synthesis pages can have source_status upgraded).
4. Execute page source_status upgrades in a single controlled pass.
5. Still do NOT write story/premise/outline.

**Risk:** Low if run after Option D. **Premature if run without deep reads.**

### Option B — One Controlled Character Story Ingestion Test

**Use if:** User wants to test genshin-db before page updates.

**Tasks:**
1. Install genshin-db in `wiki/research/_tmp/pass5/genshin-db-test/` only.
2. Query one low-risk character (Kaeya, Diluc, Lisa, Jean, or Furina).
3. Check if character stories and voice lines are accessible.
4. Check Vietnamese language support.
5. Create one local `sources/character_stories/[character].md` using SOURCE_TEMPLATE.
6. Claim-map only — no page upgrades.
7. No mass ingestion.

**Risk:** Low — controlled single-file test.

### Option C — Official Manga Alignment

**Tasks:**
1. Map local `sources/manga_transcripts/` (21 files) to official chapter list.
2. Add file-level MG IDs (MG-0001 through MG-0016+).
3. Verify chapter correspondence.
4. Note missing chapters or variants.
5. No long copyrighted excerpts.

**Risk:** Very low — local files only.

### Option D — Deep VLAQ Inspection for Partial Claims

**Use if:** User wants to close gaps SG-012/SG-014 before page updates.

**Tasks:**
1. Full read of `Akasha Rung Động, Kiếp Hỏa Dâng Trào/Ngày Jnagarbha.md` — confirm Irminsul rewrite mechanics and memory erasure.
2. Full read of `Akasha Rung Động, Kiếp Hỏa Dâng Trào/Mời Uống Ly Rượu Mừng Chiến Thắng.md` — confirm Wanderer/Scaramouche post-rewrite and Traveler memory exception.
3. Full read of `Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` — confirm Third Descender explanation.
4. Update claim-source matrix with findings.
5. Potentially upgrade CLM-015 and CLM-011 coverage.

**Risk:** Very low — local reads only.

---

## Recommended Default

**Option D first** — Deep VLAQ Inspection for Partial Claims.

> **Pass 4.1 Correction:** Option A (Human Review + Page Update) was previously recommended as default. After strictness review, only CLM-017 has full direct inspected evidence. CLM-014, CLM-016, and CLM-018 have partial evidence requiring deep reads before page updates can be safely recommended.

Reasoning:
1. Only CLM-017 (Raiden Ei/puppet) has both supporting files fully inspected with direct evidence.
2. CLM-014 (Fontaine), CLM-016 (Nahida), and CLM-018 (Traveler) each have uninspected files critical to their full claims.
3. Deep reads are local-only and low-risk — they close the evidence gap without external ingestion.
4. After deep reads, Option A becomes safe for the newly confirmed claims.
5. Human approval remains the final gate before any page source_status upgrade.

**Pass 5 should be:** Deep Read for Partial VLAQ Claims, followed by Human Review if deep reads succeed.

**Secondary recommendation:** If user approves CLM-017 immediately (fully inspected), a single page source_status update for Raiden Ei/puppet can proceed while deep reads handle the rest.

---

## What Not To Do Yet

- Do not mass ingest character stories (100+ characters).
- Do not mass ingest quest transcripts from external APIs.
- Do not rewrite character pages without explicit human review of coverage map.
- Do not upgrade Dottore/Sandrone claims (still blocked_by_missing_source).
- Do not resolve Columbina = Kuutar theory (still indirect_source_only).
- Do not ingest Nod-Krai Acts II–VII without verified source.
- Do not fill 56 quest skeletons.
- Do not fill 481 entity shells.
- Do not write premise/outline/chapter.
- Do not scrape external sites.
- Do not install packages into repo root.
