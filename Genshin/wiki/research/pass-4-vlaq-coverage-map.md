# Pass 4 VLAQ Coverage Map

Generated: 2026-06-20 — Claude Code Pass 4 Local VLAQ Coverage Mapping
Updated: 2026-06-20 — Pass 4.1 Strictness Fix

> **⚠️ SUPERSEDED BY PASS 5:** This file's coverage assessments have been superseded by Pass 5 Deep Read. Use `wiki/research/pass-5-deep-read-report.md` and `wiki/research/pass-5-claim-source-matrix.md` for current coverage status. This file is retained for historical reference.

## Purpose

Map major claim groups to existing local VLAQ source files.

> **Pass 4.1 Strictness Note:** Coverage labels corrected. Only files with `direct_inspected` evidence basis may be `coverage_found`. Uninspected files downgraded to `local_source_candidate` or `partial_coverage` depending on corroboration.

## Coverage Summary

| Claim group | Coverage status | Supporting local files (inspected only) | Confidence | Notes |
| ----------- | --------------- | --------------------------------------- | ---------- | ----- |
| A — Fontaine Final AQ | partial_coverage (direct for Furina/Neuvillette; candidate for Focalors sacrifice) | 2 files inspected; 7 candidates uninspected | medium-high | Furina breakdown + trial directly confirmed; Focalors sacrifice needs deep read |
| B — Wanderer / Irminsul Rewrite | partial_coverage | 1 file inspected (opening only); 2 candidates uninspected | low-medium | Wanderer backstory setup confirmed; Irminsul rewrite mechanics NOT directly inspected |
| C — Sumeru / Nahida / Rukkhadevata | partial_coverage (direct for identity; candidate for memory erasure) | 1 file inspected; 4 candidates uninspected | medium | Nahida=Kusanali identity direct; memory erasure mechanics need deep read |
| D — Inazuma / Raiden Ei / Shogun Puppet | coverage_found | 2 files inspected with direct evidence | high | Ei/puppet distinction, Gnosis handoff, Plane of Euthymia all directly confirmed |
| E — Traveler / Abyss Sibling / Dainsleif | partial_coverage (direct for Dainsleif partnership; candidates for sibling reveal/Khaenri'ah lore) | 2 files inspected; 10 candidates uninspected | medium | Dainsleif presence confirmed; sibling encounter and Caribert deep lore need deep read |
| F — Skirk / Gnosis / Third Descender | partial_coverage (Gnosis direct; Skirk missing; Descender partial) | Gnosis in 1 inspected file; Descender partial in 1 inspected file; Skirk in 0 | low-medium | Skirk coverage_not_found; Gnosis mechanics confirmed; Third Descender needs deep read |

---

## Group A — Fontaine Final AQ

| Claim/topic | Local VLAQ file | Evidence type | Coverage status | Confidence | Safe next action |
| ----------- | --------------- | ------------- | --------------- | ---------- | ---------------- |
| Furina's role as false Hydro Archon | Vũ Điệu Của Tội Lỗi/Ngày Phán Quyết.md | Direct dialogue — Furina emotional breakdown, self-doubt, prophecy reference | coverage_found | high | needs_file_level_source_id |
| Focalors' sacrifice | Vũ Điệu Của Tội Lỗi/Vở Kịch Của Sóng Đen Và Sương Trắng.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |
| Neuvillette's authority / judgment | Như Làn Mưa Nhẹ Không Rõ Nguyên Nhân/Khi Mọi Thứ Quay Về Với Nước.md | Direct dialogue — Neuvillette as judge, trial proceedings | coverage_found | high | needs_file_level_source_id |
| Fontaine prophecy ("all will dissolve") | Vũ Điệu Của Tội Lỗi/Ngày Phán Quyết.md | Direct reference — "lời tiên tri", disaster scene, Furina's despair | coverage_found | high | needs_file_level_source_id |
| Neuvillette dragon sovereign implication | Khúc Dạo Đầu Của Sương Trắng Và Sóng Đen/Bóng Hình Lừa Dối Dưới Ánh Đèn.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |
| Primordial Sea / people of Fontaine | Như Làn Mưa Nhẹ Không Rõ Nguyên Nhân/Sự Thật Trôi Theo Màn Mưa.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |

---

## Group B — Wanderer / Irminsul Rewrite

| Claim/topic | Local VLAQ file | Evidence type | Coverage status | Confidence | Safe next action |
| ----------- | --------------- | ------------- | --------------- | ---------- | ---------------- |
| Wanderer / Scaramouche identity | Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md | Direct inspected (opening 40 lines) — Kabukimono discussed | partial_coverage | medium | needs_deep_read |
| Irminsul rewrite mechanics | Akasha Rung Động, Kiếp Hỏa Dâng Trào/Mời Uống Ly Rượu Mừng Chiến Thắng.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |
| Memory changes — who remembers | Akasha Rung Động, Kiếp Hỏa Dâng Trào/Đích Đến Của Con Thuyền Ý Thức.md | Partially inspected (first 40 lines); no direct memory-rewrite content seen in inspected portion | local_source_candidate | low | needs_deep_read |
| Traveler memory exception | Not confirmed in any inspected file | N/A | coverage_not_found | none | needs_deep_read |
| Nahida's role in rewrite | Akasha Rung Động, Kiếp Hỏa Dâng Trào/Ngày Jnagarbha.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |

---

## Group C — Sumeru / Nahida / Rukkhadevata

| Claim/topic | Local VLAQ file | Evidence type | Coverage status | Confidence | Safe next action |
| ----------- | --------------- | ------------- | --------------- | ---------- | ---------------- |
| Greater Lord Rukkhadevata identity | Akasha Rung Động, Kiếp Hỏa Dâng Trào/Đích Đến Của Con Thuyền Ý Thức.md | Direct inspected — "Đại Vương Rukkhadevata" named, Akasha design attributed to her | coverage_found | high | needs_file_level_source_id |
| Lesser Lord Kusanali = Nahida | Akasha Rung Động, Kiếp Hỏa Dâng Trào/Đích Đến Của Con Thuyền Ý Thức.md | Direct inspected — "Tiểu Vương Kusanali Nahida" in quest description | coverage_found | high | needs_file_level_source_id |
| Irminsul corruption / forbidden knowledge | Xuyên Qua Màn Sương Và Rừng Rậm/* (multiple files) | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |
| Memory erasure (Rukkhadevata erased from history) | Akasha Rung Động, Kiếp Hỏa Dâng Trào/Ngày Jnagarbha.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |
| Sumeru AQ final resolution | Akasha Rung Động, Kiếp Hỏa Dâng Trào/* (5 files) | Only 1 of 5 inspected (Đích Đến); other 4 are keyword match only | partial_coverage | medium | needs_deep_read |

---

## Group D — Inazuma / Raiden Ei / Shogun Puppet

| Claim/topic | Local VLAQ file | Evidence type | Coverage status | Confidence | Safe next action |
| ----------- | --------------- | ------------- | --------------- | ---------- | ---------------- |
| Ei vs Shogun puppet distinction | Thiên Thủ Bách Nhãn, Thiên Hạ Nhân Gian/Nguyện Vọng.md | Direct inspected — Yae Miko: "Ei từ khi tạo ra bản thể con rối" (puppet body) | coverage_found | high | ready_for_human_review |
| Gnosis mechanics / Ei gave Gnosis to Yae | Thiên Thủ Bách Nhãn, Thiên Hạ Nhân Gian/Nguyện Vọng.md | Direct inspected — Yae explains handoff, severed Celestia ties | coverage_found | high | ready_for_human_review |
| Plane of Euthymia | Thiên Thủ Bách Nhãn, Thiên Hạ Nhân Gian/Trăm Mắt Nghìn Tay.md | Direct inspected — "Nhất Tâm Tịnh Thổ" referenced, entry narrated | coverage_found | high | ready_for_human_review |
| Vision Hunt Decree | Lôi Thần Uy Nghiêm, Địa Đàng Vĩnh Hằng/* (8 files) | NOT inspected — folder/arc match only | local_source_candidate | medium | needs_deep_read |
| Eternity ideology | Lôi Thần Uy Nghiêm/* + Thiên Thủ Bách Nhãn/* | Partially inspected (vĩnh hằng context in Nguyện Vọng) | partial_coverage | medium | needs_file_level_source_id |
| Makoto (Raiden's twin) | Not confirmed in inspected files | N/A | coverage_not_found | low | needs_deep_read |

---

## Group E — Traveler / Abyss Sibling / Dainsleif

| Claim/topic | Local VLAQ file | Evidence type | Coverage status | Confidence | Safe next action |
| ----------- | --------------- | ------------- | --------------- | ---------- | ---------------- |
| Dainsleif partnership / statements | Chúng Ta Ắt Sẽ Trùng Phùng/Linh Hồn Ngăn Cách.md | Direct inspected — Dainsleif as quest partner confirmed | coverage_found | high | ready_for_human_review |
| Abyss Order connection | Chúng Ta Ắt Sẽ Trùng Phùng/Sứ Đồ Của Kẻ Bất Tín.md | NOT inspected — keyword match only | local_source_candidate | medium | needs_deep_read |
| Sibling encounter / reveal | Chúng Ta Ắt Sẽ Trùng Phùng/Hiến Tế Không Tự Nguyện.md | NOT inspected — keyword match only | local_source_candidate | medium | needs_deep_read |
| Caribert / Khaenri'ah history | Caribert/Tư Cách Giễu Cợt Vận Mệnh.md + Kẻ Rơi Lệ.md + Vận Mệnh.md | NOT inspected — keyword match only | local_source_candidate | medium | needs_deep_read |
| Loom of Fate | Caribert/Vận Mệnh Đã Được Ghi Lại.md | NOT inspected — keyword match only | local_source_candidate | low | needs_deep_read |
| Bedtime Story | Câu Chuyện Trước Khi Ngủ/ (folder exists) | NOT inspected — folder name match only | local_source_candidate | low | needs_deep_read |
| Khúc An Hồn Nơi Đáy Vực (Requiem of the Abyss) | Khúc An Hồn Nơi Đáy Vực/* (4 files) | NOT inspected — keyword match only | local_source_candidate | medium | needs_deep_read |

---

## Group F — Skirk / Gnosis / Third Descender Check

| Claim/topic | Local VLAQ file | Evidence type | Coverage status | Confidence | Safe next action |
| ----------- | --------------- | ------------- | --------------- | ---------- | ---------------- |
| Skirk identity/appearances | No VLAQ file found with "Skirk" keyword | N/A | coverage_not_found | none | still_blocked |
| Gnosis origin / mechanics | Thiên Thủ Bách Nhãn/Nguyện Vọng.md | Direct inspected — Gnosis as chess piece, Celestia link, Ei severed connection | coverage_found | high | ready_for_human_review |
| Gnosis collection by Fatui | Multiple arcs (keyword match) | Only Inazuma scene directly inspected | partial_coverage | medium | needs_deep_read |
| Third Descender identity | Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md | Direct inspected opening only — "Kẻ Đổ Bộ" mentioned by Paimon | partial_coverage | low | needs_deep_read |
| Descender concept explanation | Same file — later portion not read | NOT fully inspected | local_source_candidate | low | needs_deep_read |
| Gnosis as control mechanism / shackles | Thiên Thủ Bách Nhãn/Nguyện Vọng.md | Inspected — Yae says "Gnosis became useless" and Ei "severed Celestia ties"; does NOT directly state "shackles" | weak_indirect | low | keep_as_theory |
