# Pass 4 Claim Source Matrix

Generated: 2026-06-20 — Claude Code Pass 4 Local VLAQ Coverage Mapping
Updated: 2026-06-20 — Pass 4.1 Strictness Fix

> **⚠️ SUPERSEDED BY PASS 5:** This file's recommendations have been superseded by Pass 5 Deep Read. Use `wiki/research/pass-5-claim-source-matrix.md` for current claim-source recommendations. This file is retained for historical reference.

## Purpose

Map priority claims from `wiki/research/priority-source-map.md` to local VLAQ source files with evidence assessment.

> **Pass 4.1 Strictness Note:** Recommendations corrected. `primary_source_found` only allowed for claims with direct inspected evidence. Uninspected files downgraded. Compound claims split where only part has direct evidence.

## Matrix

| Claim ID | Claim/topic | Prior source status | Local source found? | Local source file(s) | Evidence strength | Updated source status recommendation | Page update allowed? | Notes |
| -------- | ----------- | ------------------- | ------------------- | -------------------- | ----------------- | ------------------------------------ | -------------------- | ----- |
| CLM-014 | Fontaine final AQ / Focalors sacrifice | needs_primary_source | Partial | `Vũ Điệu Của Tội Lỗi/Ngày Phán Quyết.md` (inspected), `Như Làn Mưa Nhẹ/Khi Mọi Thứ Quay Về Với Nước.md` (inspected), `Vũ Điệu Của Tội Lỗi/Vở Kịch Của Sóng Đen Và Sương Trắng.md` (NOT inspected) | direct for Furina/prophecy/Neuvillette; not_checked for Focalors sacrifice | partial_primary_ready | future_pass_after_review | Furina breakdown + Neuvillette trial directly confirmed. Focalors sacrifice scene candidate located but NOT inspected — needs deep read before that sub-claim can be primary_source_found. |
| CLM-015 | Wanderer / Irminsul memory rewrite | needs_primary_source | Partial | `Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` (partially inspected — opening 40 lines), `Akasha Rung Động/Mời Uống Ly Rượu Mừng Chiến Thắng.md` (NOT inspected) | weak_indirect (opening only; Irminsul rewrite not directly seen) | needs_deep_read | no | Wanderer backstory setup confirmed (Kabukimono). Irminsul rewrite mechanics NOT directly inspected. Dedicated rewrite scene may be in uninspected Sumeru final files. |
| CLM-016 | Nahida = Rukkhadevata / memory erasure | needs_primary_source | Partial | `Akasha Rung Động/Đích Đến Của Con Thuyền Ý Thức.md` (inspected), `Akasha Rung Động/Ngày Jnagarbha.md` (NOT inspected) | direct for identity; not_checked for memory erasure | primary_source_found_for_identity; needs_deep_read_for_memory_erasure | future_pass_after_review (identity only) | Nahida=Kusanali confirmed in quest description. Rukkhadevata design of Akasha confirmed. Memory erasure mechanics likely in "Ngày Jnagarbha" but NOT inspected — cannot confirm yet. |
| CLM-017 | Raiden Ei vs Shogun puppet consciousness | needs_primary_source | ✓ Yes | `Thiên Thủ Bách Nhãn/Nguyện Vọng.md` (inspected), `Thiên Thủ Bách Nhãn/Trăm Mắt Nghìn Tay.md` (inspected) | direct | primary_source_found_after_human_review | future_pass_after_review | Yae Miko directly states "Ei từ khi tạo ra bản thể con rối". Plane of Euthymia referenced. Gnosis handoff narrated. Both files physically inspected with content verified. |
| CLM-018 | Traveler vs Abyss sibling roles | needs_primary_source | Partial | `Chúng Ta Ắt Sẽ Trùng Phùng/Linh Hồn Ngăn Cách.md` (inspected), `Caribert/Tương Phùng Như Vận Mệnh.md` (inspected — opening only), remaining 10 files (NOT inspected) | direct for Dainsleif presence; not_checked for sibling reveal/encounter | needs_file_level_confirmation | future_pass_after_review (Dainsleif only) | Dainsleif as quest partner confirmed. Caribert intro confirmed. But sibling direct encounter, Khaenri'ah deep lore, and Loom of Fate are in uninspected files. Broad "Traveler vs Abyss sibling" claim requires more file-level reads. |
| CLM-009 | Skirk identity and Abyss connection | source_missing | ✗ No | No VLAQ file contains "Skirk" keyword | none | source_missing | no | Skirk remains without local VLAQ source. |
| CLM-010 | Gnosis as shackles / control mechanism | indirect_source_only | Partial | `Thiên Thủ Bách Nhãn/Nguyện Vọng.md` (inspected) | weak_indirect | keep_theory | no | Inspected text says Ei "severed ties with Celestia" and Gnosis became "useless". Does NOT directly state "shackles" or "control mechanism". Remains THEORY. |
| CLM-011 | Third Descender identity/claims | source_missing | Partial | `Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` (partially inspected — opening 40 lines only) | weak_indirect | needs_deep_read | no | "Kẻ Đổ Bộ" (Descender) concept mentioned by Paimon in opening. Specific Third Descender identity discussion likely later in file (not read). Needs full file deep read. |

## Evidence Assessment Key

| Strength | Definition |
| -------- | ---------- |
| direct | Dialogue/narration explicitly confirms the claim in inspected content |
| strong_indirect | Multiple references in inspected content strongly imply the claim |
| weak_indirect | References exist in inspected content but do not conclusively support the specific claim |
| not_checked | File exists and keywords match but content was NOT inspected |
| none | No relevant content found |

## Recommendation Values

| Value | Definition |
| ----- | ---------- |
| primary_source_found_after_human_review | Direct inspected evidence confirms claim; human review is final gate |
| primary_source_found_for_identity | Only the identity sub-claim has direct evidence; other sub-claims need more |
| partial_primary_ready | Some sub-claims have direct evidence; others need deep read |
| needs_deep_read | Candidate files located but not inspected; cannot recommend primary_source_found |
| needs_file_level_confirmation | Multiple candidate files exist but insufficient are inspected |
| keep_theory | Evidence is indirect only; claim remains THEORY |
| source_missing | No relevant local source found |

## Key Findings (Pass 4.1 Corrected)

1. **CLM-017** (Raiden Ei/puppet) is the only claim with full direct inspected evidence across both supporting files. Recommendation: `primary_source_found_after_human_review`.

2. **CLM-014** (Fontaine) has direct evidence for Furina/prophecy/Neuvillette sub-claims but Focalors sacrifice scene is NOT inspected. Split recommendation.

3. **CLM-016** (Nahida/Rukkhadevata) has direct evidence for identity but NOT for memory erasure mechanics. Split recommendation.

4. **CLM-018** (Traveler/Abyss) has direct evidence for Dainsleif presence but NOT for sibling encounter or Khaenri'ah deep lore. Most supporting files are uninspected.

5. **CLM-015** (Wanderer/Irminsul) has only partial opening-portion evidence. Irminsul rewrite mechanics are NOT confirmed.

6. **CLM-009, CLM-010, CLM-011** remain unchanged from Pass 4: source_missing, keep_theory, needs_deep_read respectively.
