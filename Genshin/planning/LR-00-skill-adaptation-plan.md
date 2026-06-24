# Skill Adaptation Plan (LR-00)

Bảng mapping dưới đây đánh giá tính khả thi và cách thức tận dụng các Agent Skills của Hermes (Genshin LLM Wiki pattern) cho dự án LoreResearch.

| Hermes Skill | Use in LoreResearch? | As-is / Adapt / Avoid | Reason | Suggested LoreResearch Name |
| :--- | :--- | :--- | :--- | :--- |
| `llm-wiki` | Yes | Adapt | LoreResearch là một dạng Wiki nhưng cấu trúc folder (`entities/`, `sources/`, `topics/`) đã cố định. Cần bỏ qua schema sinh tự động của skill gốc. | `lore-wiki-agent` |
| `fandom-canon-governance` | Yes | Adapt | Các bộ rules trong LoreResearch (`01-canon-governance.md`) đã có sẵn. Skill cần đọc rule từ `foundation/` thay vì dùng rules tĩnh của Hermes. | `lore-canon-governance` |
| `fandom-source-ingest` | Yes | Adapt | Cơ chế ingest nguồn của Hermes rất chặt chẽ (giữ nguyên gốc, update index). Phù hợp để áp dụng cho thư mục `sources/`. | `lore-source-ingest` |
| `character-foundation-page` | Yes | Adapt | LoreResearch đã có template (`05-character-foundation-template.md`). Cần điều chỉnh prompt của skill để dùng template này, tránh sinh sai định dạng. | `lore-character-foundation` |
| `fandom-theory-quarantine` | Yes | As-is / Adapt | Rất cần thiết để bắt các nội dung từ `character_intelligence` hoặc `topics/` đi lạc vào canon section. | `lore-theory-quarantine` |
| `wiki-review-bundle` | Yes | As-is | Báo cáo gói review cuối mỗi Pass là chuẩn mực xuất sắc. Dùng nguyên bản, chỉ đổi path từ `research/` sang `wiki/research/`. | Dùng trực tiếp / As-is |
| `fandom-duplicate-scope-audit` | Yes | Adapt | Quét entity trùng lặp (vd: nhân vật vừa nằm ở `characters/` vừa nằm ở `nations/`). LoreResearch có folder phân mảnh cao nên rất cần thiết. | `lore-duplicate-audit` |
| `source-layer-quality-gate` | Yes | Adapt | Phải chuyển đổi một số gate cứng của SQLite sang kiểm tra Json/Markdown local. | `lore-quality-gate` |
| `fandom-writer-context-export` | Cẩn thận | Use carefully | Hỗ trợ trích xuất Lore cho fanfic. Tuy nhiên không được đánh đồng bản export này là Canon gốc. | `lore-writer-context-export` |
| `llm-wiki-crawl4ai-source-ingest` | No | Avoid | LoreResearch yêu cầu no crawl internet ở giai đoạn này. | N/A |
