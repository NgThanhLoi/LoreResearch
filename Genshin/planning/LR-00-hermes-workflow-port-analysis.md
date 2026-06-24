# LR-00 — Hermes Workflow Port Analysis

## Purpose
Phân tích, đối chiếu và lập kế hoạch tận dụng các workflow, skills, rules và quality gates hữu ích từ project Hermes (Genshin LLM Wiki) để áp dụng vào hệ thống LoreResearch. File này chỉ là phân tích sơ bộ (analysis-only), không làm thay đổi lore hay schema nội tại của dự án.

## Current LoreResearch Governance Summary
LoreResearch áp dụng một quy trình Governance chặt chẽ phân lớp nguồn từ 1 đến 5:
- **Nhóm 1:** Primary in-game (vũ khí, thánh di vật, hội thoại, sách). (Backbone)
- **Nhóm 2:** Nguồn official media (website, teasers).
- **Nhóm 3:** Summaries có trích dẫn.
- **Nhóm 4:** Theories / Phân tích chủ quan.
- **Nhóm 5:** Headcanon / `character_intelligence`.
Cấu trúc tách biệt thành các modules lớn: `entities/`, `sources/`, `foundation/`, `topics/`, `quests/`. Các policy được ban hành thành từng file độc lập trong thư mục `foundation/`.

## Existing Hermes Workflow Summary
Hermes (Genshin LLM Wiki) tiếp cận dưới góc độ "Source-First Governance" bằng các kỹ năng (skills) agent mạnh mẽ: 
- Lấy raw data không chỉnh sửa.
- Quản trị nguồn thông qua Source Tiers rõ ràng.
- Chặn đà nâng hạng vô tội vạ của Theory/Fanon.
- Đóng gói (Review Bundles) theo Phase để human audit.
- Sử dụng các Validator Checks cứng và FTS5 DB (SQLite).

## Reusable As-Is
- **Review bundle workflow:** Tư duy tổng hợp các actions và files thành một Review Bundle cuối Pass. Gói gọn trách nhiệm công việc rất tốt.
- **Theory/fanon quarantine:** Cơ chế cô lập Theory/Fanon ra khỏi Canon pages. Áp dụng hoàn hảo để chặn `character_intelligence` lây nhiễm sang mục Canon.

## Reusable With Adaptation
- **Source tier mapping:** Cần dịch các tier (`official_in_game_mirror`, `wiki_reference`...) vào hệ thống Nhóm 1-5 của LoreResearch.
- **Character foundation template:** LoreResearch có template `05-character-foundation-template.md`. Agent sẽ dùng logic của Hermes nhưng ráp vào syntax file cũ.
- **Source-layer quality gate:** Bỏ DB SQLite, chuyển sang validate file JSON/MD local và check link chết.
- **Fandom duplicate scope audit:** Chỉnh lại đường dẫn `entities/` thành các folder như `characters/`, `nations/` để đối chiếu đếm file.

## Should Not Be Reused Directly
- **Crawl scripts:** Không được crawl internet/API. LoreResearch lấy data offline repo-based.
- **Auto-create SCHEMA.md:** Có thể xung đột, đè lên các rule hiện có của `01-canon-governance.md`.
- **Fandom-writer context export:** Không đánh đồng bản extract (xuất nội dung cho writer) thành Canon thật sự trong Database.

## Source Tier Mapping
*(Xem chi tiết tại `foundation/SOURCE_TIER_MAPPING_DRAFT.md`)*
- TextMapVI -> Nhóm 1 (`official_in_game_mirror`)
|- HoYoverse official media/site -> Nhóm 2 (`official_site`) — CANON if released official material
|- HoYoWiki public database -> public database / reference support (`hoyowiki_public_database`) — NOT standalone CANON; need primary backing for important claims
- Genshin-db / Yatta -> Database ngoài (`structured_reference`)
- Fandom -> Tham khảo (`wiki_reference`) - Không làm nguồn duy nhất.
- `character_intelligence` -> Nhóm 5 (`inference_or_writer_context`)

## Skill Mapping
*(Xem chi tiết tại `planning/LR-00-skill-adaptation-plan.md`)*
- `fandom-canon-governance` -> `lore-canon-governance`
- `fandom-source-ingest` -> `lore-source-ingest`
- `source-layer-quality-gate` -> `lore-quality-gate`

## Validator Mapping
*(Xem chi tiết tại `planning/LR-00-validator-adaptation-plan.md`)*
- Master script Python cần được phát triển để validate Parse JSON/MD, Link chết, Stale inventory, và semantic checks (No canon claim without source).

## Review Bundle Mapping
Đã triển khai thành thói quen. Báo cáo này chính là minh chứng bằng việc phát hành `review-bundle-LR-00-hermes-workflow-port-analysis.md`.

## Folder/Schema Conflict Risks
*(Xem chi tiết tại `planning/LR-00-migration-risk-register.md`)*
Đặc biệt lưu ý rủi ro: Stale inventory causing duplicate pages, Accidental canon upgrades và Duplicate governance files.

## Recommended Minimal Integration
Áp dụng Quality Gate cứng cho Pass mới: parse JSON/MD, check link, cấm gán Fandom là Canon, cấm upgrade Theory lên Canon mà không trích dẫn source Nhóm 1. Cuối Pass sinh Review Bundle.

## Recommended Next Passes
- **Pass 19.0 — Character Inventory Reconciliation & Status Baseline**

## Do-Not-Touch Rules
- Không đè bẹp hệ thống folder cũ của LoreResearch.
- Không xoá `foundation/`.
- Không thay đổi nội dung `character_intelligence`.
- Giữ nguyên trạng thái chưa verify của Nod-Krai.

## Open Questions
- Datamine thô (chưa release) có được phép ghi nhận Nhóm 1 kèm nhãn UNVERIFIED không, hay chờ release hẳn?
- Validation Script Python nên do AI viết ngay pass tiếp theo, hay để admin manual fix trước?
