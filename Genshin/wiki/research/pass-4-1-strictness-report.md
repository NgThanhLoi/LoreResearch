# Pass 4.1 Strictness Report

Generated: 2026-06-20 — Claude Code Pass 4.1 VLAQ Strictness Fix

## Purpose

This pass corrected overconfident VLAQ coverage labels from Pass 4. No new searches, no external ingestion, no page updates — only label corrections to ensure coverage claims are backed by physically inspected evidence.

## Corrections Summary

| Area | Issue found | Correction made | Files affected |
| ---- | ----------- | --------------- | -------------- |
| pass-4-vlaq-inventory.md | 15 files marked `coverage_found` with `Inspected? No` | Downgraded to `local_source_candidate` with `keyword_match_only` or `folder_or_arc_match_only` evidence basis | pass-4-vlaq-inventory.md |
| pass-4-vlaq-coverage-map.md | Coverage summary overstated confidence for Groups A, B, C, E | Downgraded to `partial_coverage` or `local_source_candidate`; only Group D retains full `coverage_found` | pass-4-vlaq-coverage-map.md |
| pass-4-claim-source-matrix.md | CLM-014/016/018 recommended `primary_source_found` broadly despite uninspected sub-claim files | Split recommendations: direct-inspected sub-claims separated from uninspected ones | pass-4-claim-source-matrix.md |
| priority-source-map.md | Pass 4 section said `ready_for_human_review` for 4 claims | Corrected: only CLM-017 remains fully ready; others need deep reads first | priority-source-map.md |
| pass-4-next-actions.md | Recommended Option A (page update prep) as default | Changed to Option D (deep reads first) as default | pass-4-next-actions.md |
| source-index.md | VLAQ IDs lacked inspection depth notes | Added Pass 4.1 note clarifying partial inspection; qualified reliability for partially-read files | source-index.md |

## Coverage Label Rules Applied

1. A file marked `Inspected? No` must NOT have `Coverage status = coverage_found`.
2. Keyword/file-name search matches → `local_source_candidate` / `keyword_match_only`.
3. `coverage_found` requires physical inspection + direct claim support + no hedge language.
4. Keyword-only evidence → `partial_coverage` or `local_source_candidate`, confidence `low` or `medium`.
5. Folder/arc name matches → `local_source_candidate` / `folder_or_arc_match_only`.
6. "Likely in this file" / "not fully inspected" → `needs_deep_read`, NOT `primary_source_found`.
7. `primary_source_found` recommendation allowed only for direct inspected evidence.
8. Direct inspected evidence preserved and marked `direct_inspected` / `ready_for_human_review`.

## Claims Corrected

| Claim ID | Claim/topic | Previous status | Corrected status | Reason |
| -------- | ----------- | --------------- | ---------------- | ------ |
| CLM-014 | Fontaine final AQ / Focalors sacrifice | primary_source_found (broad) | partial_primary_ready | Furina/prophecy/Neuvillette sub-claims have direct evidence; Focalors sacrifice file NOT inspected |
| CLM-015 | Wanderer / Irminsul memory rewrite | partial_coverage (strong_indirect) | needs_deep_read | Only opening 40 lines inspected; Irminsul rewrite mechanics not directly seen |
| CLM-016 | Nahida = Rukkhadevata / memory erasure | primary_source_found (broad) | primary_source_found_for_identity; needs_deep_read_for_memory_erasure | Identity confirmed directly; memory erasure file (Ngày Jnagarbha) NOT inspected |
| CLM-017 | Raiden Ei vs Shogun puppet | primary_source_found | primary_source_found_after_human_review | No change — both files fully inspected with direct evidence |
| CLM-018 | Traveler vs Abyss sibling roles | primary_source_found (broad) | needs_file_level_confirmation | Only 2 of 12 files inspected; Dainsleif confirmed but sibling encounter/Khaenri'ah lore uninspected |
| CLM-009 | Skirk identity | source_missing | source_missing | No change |
| CLM-010 | Gnosis as shackles | keep_theory | keep_theory | No change |
| CLM-011 | Third Descender identity | partial_coverage | needs_deep_read | Only opening portion inspected; concept referenced but identity unexplained in read portion |

## Files Requiring Deep Read

| File | Related claim | Why deep read is needed | Priority |
| ---- | ------------- | ----------------------- | -------- |
| `Vũ Điệu Của Tội Lỗi/Vở Kịch Của Sóng Đen Và Sương Trắng.md` | CLM-014 (Focalors sacrifice) | Candidate for climax/sacrifice scene; keyword match only; not inspected | P1 |
| `Akasha Rung Động, Kiếp Hỏa Dâng Trào/Ngày Jnagarbha.md` | CLM-016 (memory erasure), CLM-015 (Irminsul rewrite) | Candidate for Irminsul corruption/memory erasure climax; keyword match only | P1 |
| `Akasha Rung Động, Kiếp Hỏa Dâng Trào/Mời Uống Ly Rượu Mừng Chiến Thắng.md` | CLM-015 (Wanderer post-rewrite), CLM-014 (Traveler exception) | Candidate for Scaramouche→Wanderer transition and Traveler memory; keyword match only | P1 |
| `Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` (full) | CLM-011 (Third Descender), CLM-015 (Wanderer) | Only first 40 lines read; Nahida Descender discussion expected in later portion | P1 |
| `Chúng Ta Ắt Sẽ Trùng Phùng/Hiến Tế Không Tự Nguyện.md` | CLM-018 (sibling encounter) | Candidate for sibling reveal; keyword match only | P1 |
| `Caribert/Tư Cách Giễu Cợt Vận Mệnh.md` | CLM-018 (Khaenri'ah lore) | Candidate for deep Khaenri'ah/Dainsleif content; keyword match only | P1 |
| `Khúc An Hồn Nơi Đáy Vực/* (4 files)` | CLM-018 (Abyss/Khaenri'ah) | Entire folder uninspected; keyword match only | P2 |

## Safety Confirmation

- ✓ No lore backfill.
- ✓ No page rewrite.
- ✓ No theory upgrade.
- ✓ No external ingestion.
- ✓ No new source IDs for missing files.
- ✓ No character/entity/topic/quest pages modified.
- ✓ Raw source files not modified.
- ✓ QD/QD-ALL remains legacy_retired / not_source.
- ✓ Dottore/Sandrone/Columbina/Skirk status unchanged.
