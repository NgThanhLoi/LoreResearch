# Pass 25.2 — Empty Dialogue and Non-Evidence Register

## Date

2026-06-25

---

## Purpose

Identifies source files that contain only header/end markers or minimal quest descriptions without actual dialogue content. These files must NOT be used as evidence for any claims.

---

## Confirmed Empty Dialogue Files (header + end marker only)

| # | Path | Lines | Content | Classification |
|---|---|---|---|---|
| 1 | `sources/voice_lines/archon_quests/Bình Minh Của Ngàn Đóa Hồng/Lễ Hội Sabzeruz Sắp Kết Thúc.md` | 3 | Header + "--- KẾT THÚC HỘI THOẠI ---" only | **empty_dialogue / not_evidence** |

---

## Near-Empty Files (header + quest description template only, no actual dialogue)

These files contain a header line and a `{{Quest Description|...}}` template but zero dialogue lines. They are structurally present but evidentially empty.

### Archon Quests (3 lines each)

| # | Path | Lines | Classification |
|---|---|---|---|
| 2 | `sources/voice_lines/archon_quests/Lời Tạm Biệt Thể Xác Vĩnh Hằng/Chiếc Ấm Thần Kỳ.md` | 3 | **quest_description_only / not_evidence** |
| 3 | `sources/voice_lines/archon_quests/Lời Tạm Biệt Thể Xác Vĩnh Hằng/Khu Chợ.md` | 3 | **quest_description_only / not_evidence** |
| 4 | `sources/voice_lines/archon_quests/Ngôi Sao Đang Đến/Li Tâm.md` | 3 | **quest_description_only / not_evidence** |
| 5 | `sources/voice_lines/archon_quests/Ngôi Sao Đang Đến/Tiễn Tiên.md` | 3 | **quest_description_only / not_evidence** |
| 6 | `sources/voice_lines/archon_quests/Vì Một Ngày Mai Không Rơi Lệ/Giọt Nước Mắt Bị Đánh Cắp.md` | 3 | **quest_description_only / not_evidence** |

### Archon Quests (4 lines each — likely header + quest description + minor extra)

| # | Path | Lines | Classification |
|---|---|---|---|
| 7 | `sources/voice_lines/archon_quests/Lôi Thần Uy Nghiêm, Địa Đàng Vĩnh Hằng/Con Đường Kiếm Đạo Lát Bằng Ước Mơ.md` | 4 | **quest_description_only / not_evidence** |
| 8 | `sources/voice_lines/archon_quests/Lôi Thần Uy Nghiêm, Địa Đàng Vĩnh Hằng/Lời Ăn Năn Của Kẻ Tha Hương.md` | 4 | **quest_description_only / not_evidence** |
| 9 | `sources/voice_lines/archon_quests/Ngôi Sao Đang Đến/Cô Phương.md` | 4 | **quest_description_only / not_evidence** |

### World Quests

| # | Path | Lines | Classification |
|---|---|---|---|
| 10 | `sources/voice_lines/world_quests/Sớm Chiều Nơi Vương Quốc Đêm Trắng/Nhật Ký Thí Luyện Động Long Xà.md` | 3 | **quest_description_only / not_evidence** |

---

## Heuristic Used

Conservative heuristic: files with ≤4 lines are flagged as candidates. Manual inspection confirmed all candidates above contain either:
- Header + "KẾT THÚC HỘI THOẠI" end marker only, OR
- Header + `{{Quest Description|...}}` template only

No actual character dialogue or narrative content present.

---

## Policy

- These files MUST NOT be cited as evidence for any claim.
- These files MUST NOT be used to upgrade any source status.
- They remain in the workspace as structural placeholders only.
- The source files themselves were NOT edited in this pass.

---

## Total Counts

| Category | Count |
|---|---|
| Confirmed empty (header + end marker) | 1 |
| Quest description template only (no dialogue) | 9 |
| **Total non-evidence files identified** | **10** |
