# Source Tier Mapping Draft

Đây là bản nháp ánh xạ (mapping) giữa hệ thống phân loại nguồn của quy trình Hermes (Genshin LLM Wiki) và cấu trúc Governance hiện tại của LoreResearch (`01-canon-governance.md`).

## 1. Bản Đồ Ánh Xạ Cấp Độ Nguồn (Source Tier Mapping)

| Nguồn Cụ Thể (Hermes Workflow) | Ánh xạ vào LoreResearch (Source Hierarchy) | Phân Loại Của Hermes | Đề Xuất Áp Dụng (Label) |
| :--- | :--- | :--- | :--- |
| **TextMapVI / Dimbreath** | Nhóm 1 (Primary In-game Sources) - Nhưng cần lưu ý nó là dạng thô, chưa có ngữ cảnh in-game | `official_in_game_mirror` | CANON (Nếu có ngữ cảnh/chứng minh khớp in-game) |
| **HoYoverse official site/news** | Nhóm 2 (Official Media Sources) | `official_site` | CANON if released official material and not contradicted by in-game source |
| **HoYoWiki public database** | Public database/reference support (Không phải Nhóm 2 độc lập) | `hoyowiki_public_database` | SUPPORT / REFERENCE / NEEDS PRIMARY BACKING — Không dùng làm nguồn canon độc lập cho lore, relationship, personality, hoặc disputed claims. Có thể dùng làm metadata/candidate/cross-check. Nếu claim quan trọng, phải được backed by Nhóm 1 hoặc official_site. |
| **genshin-db / Project Amber / Yatta**| Không có trong Nhóm 1-2 hiện hành. Có thể dùng thay thế tạm. | `structured_reference` | UNVERIFIED hoặc Cần đối chiếu chéo |
| **Fandom EN/VI** | Không thuộc Nhóm 1-2. | `wiki_reference` | UNVERIFIED (Tuyệt đối không dùng làm source duy nhất cho CANON) |
| **character_intelligence / psychological profile / inference notes** | Nhóm 5 (Headcanon / AU) | `inference_or_writer_context` | HEADCANON / THEORY (Không phải CANON) |
| **theory/headcanon files** | Nhóm 4 (Analysis & Theories) / Nhóm 5 | `theory_or_fanon` | THEORY / HEADCANON (Không phải CANON) |

## 2. Điểm Xung Đột & Đề Xuất Giải Quyết
* **Xung Đột 1:** LoreResearch coi `character_intelligence` là nguồn tài liệu hữu ích cho việc xây dựng tâm lý nhân vật, nhưng đôi lúc trộn lẫn giả thuyết (HEADCANON) với sự kiện thật (CANON).
  * *Đề Xuất:* Giữ nguyên chính sách của LoreResearch: `character_intelligence` không bao giờ được đứng một mình như một minh chứng cho trạng thái CANON. Bất cứ phân tích tâm lý nào muốn thành CANON đều phải trích dẫn lại (citation) nguồn Nhóm 1 hoặc `official_site`.
* **Xung Đột 3:** HoYoWiki public database từng bị map quá mạnh vào nhóm official/canon-equivalent ở draft đầu, nhưng thực tế nó là public database do mod duy trì, không phải nguồn chính thức không qua kiểm duyệt miHoYo.
  * *Đề Xuất:* Hạ cấp HoYoWiki xuống SUPPORT / REFERENCE. Không dùng làm nguồn canon độc lập. Nội dung HoYoWiki quan trọng phải được đối chiếu với Nhóm 1 (in-game mirror) hoặc official_site.
* **Xung Đột 2:** TextMapVI / Dimbreath (Datamined content). LoreResearch hiện không có chính sách rõ ràng cho dữ liệu datamine chưa release.
  * *Đề Xuất:* Áp dụng tier `official_in_game_mirror` của Hermes. Chỉ dùng dữ liệu đã live. Nếu là leak, phân loại là UNVERIFIED / THEORY.

## 3. Quy Tắc Áp Dụng
* Tài liệu này không overwrite `01-canon-governance.md`. Nó đóng vai trò bổ trợ để chuẩn hóa cách gọi tên nguồn trong các Pass validator.
