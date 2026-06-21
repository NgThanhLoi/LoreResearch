# Wiki Log

## Format

```markdown
## YYYY-MM-DD
- **action:** [Mô tả ngắn hành động]
- **files_changed:**
  - [Đường dẫn file 1]
- **reason:** [Lý do thực hiện thay đổi]
- **source_basis:** [Nguồn sơ cấp/thứ cấp dùng để quyết định thay đổi]
- **unresolved_issues:** [Các vấn đề chưa giải quyết được sau thay đổi]
```

## Entries

## 2026-06-20
- **action:** Thiết lập cấu trúc LLM Wiki và di trú hệ thống dữ liệu nền tảng.
- **files_changed:**
  - wiki/README.md
  - wiki/SCHEMA.md
  - wiki/index.md
  - wiki/log.md
  - wiki/sources/README.md
  - wiki/sources/source-map.md
  - wiki/sources/source-index.md
  - wiki/sources/source-quality-report.md
  - wiki/entities/README.md
  - wiki/entities/* (Tạo thư mục con, READMEs, và templates)
  - wiki/synthesis/README.md
  - wiki/synthesis/* (Di trú và tinh chỉnh các trang quy tắc từ foundation/)
  - wiki/workflows/* (Xây dựng các quy trình hướng dẫn thao tác kiểm duyệt)
  - wiki/projects/_template/* (Tạo các tệp cấu hình dự án mẫu)
- **reason:** Tổ chức lại không gian làm việc thành một cơ sở dữ liệu tri thức Genshin Impact phi SQL dạng Markdown, phục vụ quản trị cốt truyện và lore lâu dài cho các dự án fanfic.
- **source_basis:** Toàn bộ dữ liệu từ thư mục `foundation/` và `planning/` gốc, cùng báo cáo độ tin cậy `RELIABILITY_SUMMARY.md` và `REMAINING_OPEN_ISSUES.md`.
- **unresolved_issues:**
  - Khoảng 40+ hồ sơ nhân vật trong `entities/character_intelligence/` vẫn chứa suy đoán tâm lý học sâu chưa được audit gắn nhãn.
  - Các mảng dữ liệu trống trong `quests/` và các shell trống trong `entities/`.
  - Cốt truyện Nod-Krai Acts II-VII hoàn toàn thiếu hội thoại gốc.
- **Premise / Outline status:** 
  - **Không chọn premise** (premise-free).
  - **Không lập outline**.
  - **Không viết thử chương truyện**.
  - **Không tạo OC**.

## 2026-06-20 — Wiki Pass 2

- **action:** Rà soát và nâng cấp tính di động, hoàn thiện chỉ mục nguồn và audit tuyên bố (Pass 2):
  - Chuyển đổi toàn bộ liên kết tuyệt đối `file:///d:/` thành liên kết tương đối hoặc tương đối workspace.
  - Phục hồi các liên kết rác `]()` do lỗi mã hóa trước đó trong toàn bộ các tệp quy trình và quy tắc.
  - Mở rộng bảng chỉ mục `source-index.md` lên cấp độ tệp tin cho các tài liệu nguồn thô quan trọng nhất.
  - Đánh giá trạng thái nguồn sơ cấp cho 15 điểm lore trong `unverified-lore-register.md` và bổ sung cột `Source status`.
  - Bổ sung 13 tuyên bố chi tiết cấp claim-level (`PWR-xxxx`) cho các hệ sức mạnh trong `power-system-governance.md`.
  - Đăng ký các mâu thuẫn mới phát hiện (thư mục nguồn ảo, cơ chế xiềng xích Gnosis) vào `contradiction-register.md`.
  - Cập nhật lộ trình làm sạch dữ liệu hậu Pass 2.
- **files_changed:**
  - [wiki/README.md](./README.md)
  - [wiki/index.md](./index.md)
  - [wiki/sources/source-index.md](./sources/source-index.md)
  - [wiki/sources/source-map.md](./sources/source-map.md)
  - [wiki/sources/source-quality-report.md](./sources/source-quality-report.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/power-system-governance.md](./synthesis/power-system-governance.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/synthesis/data-cleaning-roadmap.md](./synthesis/data-cleaning-roadmap.md)
  - [wiki/synthesis/canon-governance.md](./synthesis/canon-governance.md)
  - [wiki/synthesis/chapter-quality-gates.md](./synthesis/chapter-quality-gates.md)
  - [wiki/synthesis/genre-adapters.md](./synthesis/genre-adapters.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/README.md](./synthesis/README.md)
  - [wiki/workflows/README.md](./workflows/README.md)
  - [wiki/workflows/add-new-source.md](./workflows/add-new-source.md)
  - [wiki/workflows/audit-claim.md](./workflows/audit-claim.md)
  - [wiki/workflows/check-ooc-risk.md](./workflows/check-ooc-risk.md)
  - [wiki/workflows/check-power-scaling.md](./workflows/check-power-scaling.md)
  - [wiki/workflows/check-timeline-continuity.md](./workflows/check-timeline-continuity.md)
  - [wiki/workflows/prepare-new-fanfic-project.md](./workflows/prepare-new-fanfic-project.md)
  - [wiki/workflows/update-entity-page.md](./workflows/update-entity-page.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Tài liệu sơ cấp trong `sources/weapon_stories/`, `sources/artifact_descriptions/`, `sources/book_texts/`.
- **unresolved_issues:**
  - Thiếu thư mục nguồn thô đối thoại và nguồn chính thức (`sources/quest_dialogue/` và `sources/official/`).
  - Hơn 40+ hồ sơ nhân vật `entities/character_intelligence/` vẫn chứa suy đoán tâm lý chưa được audit.
- **next_recommended_steps:**
  - Thực hiện audit OOC/Headcanon chuyên sâu cho hồ sơ nhân vật trong `entities/character_intelligence/`.
  - Khởi tạo trang nhân vật và sức mạnh chính thức đầu tiên chỉ sau khi hồ sơ phân tích tương ứng đã được audit và làm sạch hoàn toàn.

## 2026-06-20 — Wiki Pass 2.1

- **action:** Thắt chặt kỷ luật nguồn và sửa lỗi kiểm duyệt sơ cấp (Pass 2.1):
  - Loại bỏ các mã nguồn giả định và đánh dấu TODO cho các file thoại chưa xác minh (như Skirk).
  - Hạ cấp độ tin cậy và gán nhãn `needs_file_level_source` cho các tuyên bố chỉ dùng đường dẫn thư mục làm nguồn sơ cấp.
  - Thiết lập thuộc tính `needs_primary_source: true` và chuyển đổi `narrator_safe` sang `conditional` cho toàn bộ các tuyên bố chỉ có nguồn gián tiếp (overview, timeline).
  - Tinh chỉnh phán quyết sử dụng đối với `Sampo Mill` và `Hyperborea` trong `unverified-lore-register.md` để phân biệt rõ ranh giới văn học dân gian (folklore) và địa chính trị thực tế.
  - Thêm cảnh báo mâu thuẫn chính sách `CON-0010` cấm coi thư mục nguồn là bằng chứng xác minh tuyệt đối.
- **files_changed:**
  - [wiki/sources/source-index.md](./sources/source-index.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/power-system-governance.md](./synthesis/power-system-governance.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **claims_changed:**
  - `PWR-VISION-001` & `PWR-ELEMENT-001`: `source_status` chuyển thành `needs_file_level_source`, `narrator_safe` chuyển thành `conditional`.
  - `PWR-GNOSIS-001`, `PWR-ARCHON-001`, `PWR-DRAGON-001`, `PWR-IRMINSUL-001`, `PWR-FORBIDDEN-001`, `PWR-CELESTIA-001`: Thêm `needs_primary_source: true`, `narrator_safe` chuyển thành `conditional`.
  - `Sampo Mill`: Cho phép sử dụng trong bối cảnh folklore, cấm đồng nhất với Rotwang.
  - `Hyperborea`: Chỉ coi sự tồn tại của tên trong cổ thư là canon; diễn giải địa chính trị hạ xuống nhãn `THEORY`.
- **source_todo_list:**
  - Di chuyển tệp thoại của Skirk (`VL-0002`) sang TODO do chưa tồn tại trong workspace.
- **unresolved_issues:**
  - Thiếu tệp thoại sơ cấp của Skirk dẫn đến các tuyên bố về Gnosis/Descender vẫn ở trạng thái `indirect_source_only`.
  - Kho vũ khí (222 files) và thánh di vật (57 files) chưa được lập chỉ mục chi tiết cấp tệp tin.
  - Thiếu thư mục hội thoại quest và tin tức chính thức.

## 2026-06-20 — Wiki Pass 3.0/3.1

- **action:**
  - Tạo danh mục kiểm kê nhân vật (character-inventory.md) phân loại rủi ro và độ ưu tiên kiểm định cho toàn bộ 109 nhân vật.
  - Xây dựng backlog kiểm định nhân vật (character-audit-backlog.md) phân chia lộ trình thực hiện theo các giai đoạn rõ ràng.
  - Thực hiện kiểm định chuyên sâu cấp độ Level 2 OOC Risk Audit cho lô đầu tiên gồm 5 nhân vật nguy cơ cao: Kaeya, Diluc, Zhongli, Lisa, Jean.
  - Tạo mới các trang wiki nhân vật đã kiểm định: Kaeya.md, Diluc.md, Zhongli.md, Lisa.md, Jean.md với nhãn độ tin cậy và Voice Guide chuẩn xác.
  - Cập nhật chỉ mục rủi ro OOC (ooc-risk-index.md) với định dạng bảng mới chuẩn hóa, bổ sung các bẫy OOC của 5 nhân vật đã audit.
  - Cập nhật chính sách Headcanon/Fanon (headcanon-fanon-policy.md) ghi nhận các phán quyết, headcanon an toàn và headcanon bị cấm của Pass 3.
  - Đăng ký mâu thuẫn mới CON-0011 (Lỗi học phái của Lisa) vào sổ đăng ký mâu thuẫn (contradiction-register.md) và cập nhật trạng thái CON-0007.
  - Nâng cấp Characters README (README.md) phản ánh các cấp độ kiểm định mới và liên kết danh mục/backlog.
- **files_changed:**
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/entities/characters/Kaeya.md](./entities/characters/Kaeya.md)
  - [wiki/entities/characters/Diluc.md](./entities/characters/Diluc.md)
  - [wiki/entities/characters/Zhongli.md](./entities/characters/Zhongli.md)
  - [wiki/entities/characters/Lisa.md](./entities/characters/Lisa.md)
  - [wiki/entities/characters/Jean.md](./entities/characters/Jean.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/entities/characters/README.md](./entities/characters/README.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Các hồ sơ phân tích tâm lý nhân vật thô trong `entities/character_intelligence/`.
  - Các tệp thoại sơ cấp trong `sources/voice_lines/characters/` của 5 nhân vật chính.
  - Quy tắc phân tích tâm lý, quy tắc Headcanon và Contradiction Register hiện hành.
- **unresolved_issues:**
  - Thiếu tệp tin câu chuyện nhân vật thô (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử chi tiết phải ghi nhận dưới dạng `indirect_source_only`.
  - 104 nhân vật còn lại vẫn ở trạng thái Level 1 (Inventory Only) và chưa được audit chuyên sâu.
- **next_recommended_steps:**
  - Tiếp tục giai đoạn kiểm định Phase 3.2 (Lore-Impact Batch) gồm Albedo, Klee, Neuvillette, Furina, Dottore, Columbina, Sandrone.
  - Tích hợp thêm các nguồn hội thoại thô và câu chuyện nhân vật nếu được bổ sung vào workspace.
  - Không xây dựng tiền đề cốt truyện (premise) hay phác thảo (outline) dự án truyện tại thời điểm này.

## 2026-06-20 — Wiki Pass 3.1.1

- **action:**
  - Đã chuẩn hóa định dạng liên kết trong tệp danh mục nhân vật `character-inventory.md`, thay thế các liên kết markdown hỏng đến file cục bộ bằng mã định danh đường dẫn (code paths).
  - Tinh chỉnh các nhãn rủi ro trong chỉ mục rủi ro OOC `ooc-risk-index.md`: Chỉ dùng nhãn `ERROR / CONTRADICTION` cho các mâu thuẫn trực tiếp có conflict ID tương ứng; sử dụng `OOC_RISK` cho các nguy cơ viết lệch tính cách và `UNVERIFIED` cho khoảng trống thông tin.
  - Bổ sung cột `Risk type` (loại rủi ro) vào chỉ mục OOC với các giá trị: `contradiction`, `fanon_risk`, `exaggeration_risk`, `unsupported_portrayal`, `source_gap`.
  - Rà soát các trang thực thể nhân vật của Kaeya và Diluc, gắn nhãn `needs_primary_source: true`, đặt độ tin cậy `confidence: medium` và cập nhật nguồn gián tiếp `source_status: indirect_source_only` cho toàn bộ các tuyên bố `CANON` nào chỉ có nguồn tham chiếu từ `entities/character_intelligence/`.
  - Cập nhật mối quan hệ của Diluc với cha Crepus sang `indirect_source_only (needs_primary_source)`.
- **files_changed:**
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/entities/characters/Kaeya.md](./entities/characters/Kaeya.md)
  - [wiki/entities/characters/Diluc.md](./entities/characters/Diluc.md)
  - [wiki/log.md](./log.md)
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp tệp tin câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các sự kiện lịch sử/quá khứ chưa được kiểm chứng đầy đủ ở cấp độ sơ cấp.
- **next_recommended_steps:**
  - Tiếp tục giai đoạn kiểm định Phase 3.2 (Lore-Impact Batch) khi được yêu cầu.

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2A

- **action:**
  - Thực hiện kiểm định chuyên sâu cấp độ Level 2 OOC Risk Audit cho nhóm nhân vật Lore-Impact đợt đầu tiên: Albedo, Klee, Neuvillette.
  - Tạo mới các trang thực thể nhân vật đã kiểm định: `Albedo.md`, `Klee.md`, `Neuvillette.md` với đầy đủ Frontmatter, Canon Personality, Headcanon, OOC Risks, và Power/Lore Constraints.
  - Cập nhật chỉ mục rủi ro OOC `ooc-risk-index.md`: Sửa đổi trạng thái nguồn cho Zhongli (CON-0000 không có, sửa thành `source_missing`), bổ sung thêm các dòng rủi ro OOC chi tiết mới cho Albedo, Klee, và Neuvillette.
  - Cập nhật chính sách Headcanon/Fanon `headcanon-fanon-policy.md`: Thêm mục `Character Audit Pass 3.2 Notes` ghi nhận phán quyết cho đợt 3.2A.
  - Cập nhật danh mục nhân vật `character-inventory.md` và backlog kiểm định `character-audit-backlog.md` ghi nhận Albedo, Klee, Neuvillette đã hoàn thành audit (Level 2).
- **files_changed:**
  - [wiki/entities/characters/Albedo.md](./entities/characters/Albedo.md)
  - [wiki/entities/characters/Klee.md](./entities/characters/Klee.md)
  - [wiki/entities/characters/Neuvillette.md](./entities/characters/Neuvillette.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Albedo, Klee, Neuvillette.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến một số tuyên bố lịch sử/giả kim thuật chi tiết vẫn ở dạng `indirect_source_only`.
- **next_loop:**
  - Loop 3.2B: Furina, Dottore, Columbina

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2B

- **action:**
  - Audited characters: Furina, Dottore, Columbina
  - Created/updated character pages: `Furina.md`, `Dottore.md`, `Columbina.md`
  - Updated OOC index: (no change, verified that they are present)
  - Updated headcanon/fanon policy: updated with Furina, Dottore, Columbina rules
  - Updated contradiction register: (no change)
  - Updated inventory/backlog: marked Furina, Columbina audited; Dottore added as blocked
- **files_changed:**
  - [wiki/entities/characters/Furina.md](./entities/characters/Furina.md)
  - [wiki/entities/characters/Dottore.md](./entities/characters/Dottore.md)
  - [wiki/entities/characters/Columbina.md](./entities/characters/Columbina.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Furina, Columbina.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` của Furina.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử vẫn ở dạng `indirect_source_only`.
  - Thiếu tệp thoại sơ cấp của Columbina dẫn đến việc không có Voice Guide chính thức.
  - Thiếu hoàn toàn tài liệu nguồn của Dottore dẫn đến nhân vật ở trạng thái `blocked_by_missing_source`.
- **next_loop:**
  - Loop 3.2C: Sandrone, Kẻ Lang Thang / Wanderer / Scaramouche, Aether

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2C

- **action:**
  - Audited characters: Sandrone, Kẻ Lang Thang, Aether
  - Created/updated character pages: `Sandrone.md`, `Kẻ Lang Thang.md`, `Aether.md`
  - Updated OOC index: (no change, verified that they are present)
  - Updated headcanon/fanon policy: updated with Kẻ Lang Thang and Aether rules
  - Updated contradiction register: registered CON-0012 for Wanderer Irminsul memory rule
  - Updated inventory/backlog: marked Kẻ Lang Thang and Aether audited; Sandrone added as blocked
- **files_changed:**
  - [wiki/entities/characters/Sandrone.md](./entities/characters/Sandrone.md)
  - [wiki/entities/characters/Kẻ Lang Thang.md](./entities/characters/Kẻ Lang Thang.md)
  - [wiki/entities/characters/Aether.md](./entities/characters/Aether.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Kẻ Lang Thang, Aether.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử vẫn ở dạng `indirect_source_only`.
  - Thiếu hoàn toàn tài liệu nguồn của Sandrone dẫn đến nhân vật ở trạng thái `blocked_by_missing_source`.
- **next_loop:**
  - Loop 3.2D: Lumine, Nahida, Raiden Shogun

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2D

- **action:**
  - Audited characters: Lumine, Nahida, Raiden Shogun
  - Created/updated character pages: `Lumine.md`, `Nahida.md`, `Raiden Shogun.md`
  - Updated OOC index: (no change, verified that they are present)
  - Updated headcanon/fanon policy: updated with Lumine, Nahida, and Raiden Shogun rules
  - Updated contradiction register: registered CON-0013 (Nahida's Rukkhadevata memory) and CON-0014 (Ei vs Shogun puppet)
  - Updated inventory/backlog: marked Lumine, Nahida, Raiden Shogun audited
- **files_changed:**
  - [wiki/entities/characters/Lumine.md](./entities/characters/Lumine.md)
  - [wiki/entities/characters/Nahida.md](./entities/characters/Nahida.md)
  - [wiki/entities/characters/Raiden Shogun.md](./entities/characters/Raiden Shogun.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Lumine, Nahida, Raiden Shogun.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử vẫn ở dạng `indirect_source_only`.
- **next_loop:**
  - Loop 3.2E: Arlecchino, Tartaglia, Venti

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2E

- **action:**
  - Audited characters: Arlecchino, Tartaglia, Venti
  - Created/updated character pages: `Arlecchino.md`, `Tartaglia.md`, `Venti.md`
  - Updated OOC index: Added OOC risks and contradictions for Arlecchino, Tartaglia, Venti, Nahida, Raiden Shogun, Wanderer, Traveler
  - Updated headcanon/fanon policy: Updated with Arlecchino, Tartaglia, and Venti guidelines
  - Updated contradiction register: Registered CON-0015 for Traveler vs Abyss Sibling role confusion
  - Updated inventory/backlog: Marked Arlecchino, Tartaglia, and Venti as audited
- **files_changed:**
  - [wiki/entities/characters/Venti.md](./entities/characters/Venti.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Arlecchino, Tartaglia, Venti.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố quá khứ vẫn ở dạng `indirect_source_only`.
- **next_loop:**
  - None. All Phase 3.2 required characters completed or blocked.

## 2026-06-20 — Wiki Phase 3.2 Final Summary

- **characters_completed:**
  - Albedo, Klee, Neuvillette, Furina, Columbina, Kẻ Lang Thang / Wanderer, Aether, Lumine, Nahida, Raiden Shogun, Arlecchino, Tartaglia, Venti (13 characters audited)
- **characters_blocked:**
  - Dottore, Sandrone (Blocked by missing raw sources; created with status `blocked_by_missing_source`)
- **new_contradictions:**
  - CON-0012 (Wanderer Irminsul memory), CON-0013 (Nahida's Rukkhadevata memory), CON-0014 (Ei vs Shogun puppet), CON-0015 (Traveler vs Abyss Sibling role confusion)
- **high-risk unverified lore:**
  - Columbina = Kuutar (Theory / Unverified)
  - Dottore false moon god (Unverified)
  - Sandrone machine/Rotwang links (Unverified)
- **source gaps:**
  - Thiếu hoàn toàn thư mục `sources/character_stories/` trong toàn bộ workspace.
  - Thiếu các tệp nguồn sơ cấp cho Dottore và Sandrone.
  - Thiếu tệp thoại sơ cấp cho Columbina.
- **next_recommended_steps:**
  - Phase 3.3 Region/Faction Batches.
  - Continue source indexing.
  - Do not choose premise yet.
  - Do not write outline yet.
  - Do not write chapters yet.

## 2026-06-20 — Wiki Phase 3.2.1

- **action:**
  - Tightened Dottore blocked-source page (corrected Summary, UNVERIFIED identity table, removed external claims).
  - Cleaned up Dottore usage notes and safe/unsafe uses to align with his blocked source-gap status, framing all portrayals as hypothetical/AU.
  - Downgraded or softened overconfident Columbina identity/moon claims (marked all Columbina-specific traits as indirect_source_only and Kuutar as THEORY/UNVERIFIED).
  - Normalized backlog and inventory status for blocked/source-light characters (Dottore, Columbina, Sandrone).
  - Confirmed Dottore Moon God and Columbina = Kuutar remain non-canon.
  - Fixed headcanon/fanon policy links to code paths instead of live links, and updated warnings.
- **files_changed:**
  - [wiki/entities/characters/Dottore.md](./entities/characters/Dottore.md)
  - [wiki/entities/characters/Columbina.md](./entities/characters/Columbina.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Current workspace file availability.
  - Unverified lore register.
  - Phase 3.2 character pages.
  - OOC risk index.
- **unresolved_issues:**
  - Missing Dottore source files.
  - Missing Columbina primary voice/source files.
  - Missing Sandrone primary source files.
- **next_recommended_steps:**
  - Continue Phase 3.3 only after this strictness fix.
  - Ingest missing sources before upgrading blocked characters.
  - Do not choose premise.
  - Do not write outline.
  - Do not write chapters.

## 2026-06-20 — Claude Code Pass 1 Workspace Audit

- **action:**
  - Mapped repository structure (1,820 files across 10 top-level folders).
  - Audited source layer (612 source-rich files; 3 missing critical folders).
  - Audited quest skeletons (56 files, 100% empty/outline-only, zero usable).
  - Audited entity shells (649 files, 74% template-only).
  - Audited topic summaries (9 files, theory risk flagged).
  - Audited historical planning/foundation layer (27 files, historical only).
  - Created 12 research reports under wiki/research/.
- **files_changed:**
  - wiki/research/README.md
  - wiki/research/workspace-map.md
  - wiki/research/repo-health-check.md
  - wiki/research/source-layer-audit.md
  - wiki/research/quest-layer-audit.md
  - wiki/research/entity-shell-audit.md
  - wiki/research/topic-layer-audit.md
  - wiki/research/wiki-state-audit.md
  - wiki/research/historical-layer-audit.md
  - wiki/research/empty-file-report.md
  - wiki/research/source-gap-report.md
  - wiki/research/pass-1-next-actions.md
  - wiki/log.md (this entry)
- **source_basis:**
  - Full workspace structure scan.
  - File sampling across all layers.
  - Existing wiki governance files.
  - Root reliability reports (CHANGE_LOG, PATCH_VALIDATION_REPORT, RELIABILITY_SUMMARY, REMAINING_OPEN_ISSUES).
- **unresolved_issues:**
  - SG-0001: Dottore missing sources (Critical).
  - SG-0002: Sandrone missing sources (Critical).
  - SG-0005: Quest layer entirely empty (Critical).
  - SG-0007: character_stories/ folder missing (Critical).
  - SG-0008: Nod-Krai Acts II–VII no source (Critical).
  - SG-0011: 56 quest skeletons not usable as source (Critical).
  - 14 total source gaps documented in source-gap-report.md.
- **next_recommended_steps:**
  - Pass 2: Source Ingestion Framework + Priority Queue.
  - Do not backfill lore yet.
  - Do not fill quest skeletons from memory.
  - Do not upgrade source-light claims.
  - Human review needed: source archive trust, external ingestion policy, region priority.

## 2026-06-20 — Claude Code Pass 1.1 Source Gap Wording Fix

- **action:**
  - Corrected misleading source-gap wording for Dottore and Columbina.
  - Confirmed Dottore remains `blocked_by_missing_source`.
  - Confirmed Columbina remains `audited_source_light` / `indirect_source_only`.
  - Preserved Kuutar/Moon/Seelie claims as THEORY / UNVERIFIED.
- **files_changed:**
  - wiki/research/source-gap-report.md
  - wiki/log.md
- **source_basis:**
  - wiki/entities/characters/Dottore.md
  - wiki/entities/characters/Columbina.md
  - wiki/entities/characters/character-inventory.md
  - wiki/synthesis/character-audit-backlog.md
- **unresolved_issues:**
  - Dottore source package still missing.
  - Columbina primary voice/source still missing.
  - Character stories folder still missing.
- **next_recommended_steps:**
  - Pass 2: Source Ingestion Framework + Source Index Alignment.
  - Do not backfill lore yet.

## 2026-06-20 — Claude Code Pass 2 Source Ingestion Framework

- **action:**
  - Created source ingestion template and source ID rules.
  - Created external source policy and classified user-provided external sources with exact URLs.
  - Created source index alignment report comparing `wiki/sources/source-index.md` with real `sources/` folders.
  - Created source ingestion queue and priority source map.
  - Created API ingestion feasibility report.
  - Created leak quarantine policy.
- **files_changed:**
  - wiki/sources/SOURCE_TEMPLATE.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
  - wiki/research/source-index-alignment.md
  - wiki/research/external-source-candidates.md
  - wiki/research/source-ingestion-queue.md
  - wiki/research/priority-source-map.md
  - wiki/research/api-ingestion-feasibility.md
  - wiki/research/leak-quarantine.md
  - wiki/research/pass-2-next-actions.md
  - wiki/research/README.md
  - wiki/log.md
- **source_basis:**
  - Pass 1 workspace audit reports.
  - Existing `sources/` folder structure.
  - Existing `wiki/sources/source-index.md`.
  - User-provided external source candidate list with exact URLs.
- **unresolved_issues:**
  - No lore backfill performed.
  - Dottore, Sandrone, Columbina, Skirk, Nod-Krai still require source packages.
  - character_stories/ and official/ folders still missing unless created later.
- **next_recommended_steps:**
  - Pass 3: Source Tool Tests + P0 Source Package Ingestion.
  - Do not backfill lore until source files are locally ingested and claim-mapped.

## 2026-06-20 — Claude Code Pass 2.1 Source Framework Consistency Fix

- **action:**
  - Retired legacy `QD/QD-ALL` wording and aligned quest source prefixes with `AQ/WQ/SQ/IQ` and `VLAQ/VLWQ`.
  - Clarified that `sources/quest_dialogue/` does not exist and must not be used as proof.
  - Corrected Dottore and Sandrone source package wording to avoid assuming character stories or direct voice-line files exist.
  - Reclassified source-index alignment as `P0-Internal Cleanup` rather than a lore blocker.
  - Verified or created required Pass 2 framework files.
  - Verified exact URL preservation for external source candidates.
- **files_changed:**
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/source-index.md
  - wiki/research/source-index-alignment.md
  - wiki/research/source-ingestion-queue.md
  - wiki/research/priority-source-map.md
  - wiki/research/pass-2-next-actions.md
  - wiki/log.md
- **source_basis:**
  - Pass 2 source framework files.
  - Pass 1 structural audit findings.
  - Current workspace source folder availability.
- **unresolved_issues:**
  - No lore backfill performed.
  - Dottore remains `blocked_by_missing_source`.
  - Sandrone remains `blocked_by_missing_source`.
  - Columbina remains `audited_source_light` / `indirect_source_only`.
  - character_stories/ still missing unless later ingested.
  - official/ still missing unless later ingested.
- **next_recommended_steps:**
  - Pass 3: Source Tool Tests + P0 Source Package Ingestion.
  - Start with small smoke tests and one sample source file.
  - Do not mass ingest.
  - Do not backfill lore until local source files are claim-mapped.

## 2026-06-20 — Claude Code Pass 3 Source Tool Tests

- **action:**
  - Performed P0-Internal Cleanup for source-index hygiene.
  - Added folder-level aggregate entries for MG-ALL (manga_transcripts/, 21 files), VLAQ-ALL (voice_lines/archon_quests/, 124+ files), and VLWQ-ALL (voice_lines/world_quests/, 4 files).
  - Retired legacy QD-ALL placeholder as legacy_retired / not_source.
  - Downgraded VL-0002 Skirk TODO to explicitly non-valid source_missing.
  - Confirmed no phantom source IDs for Dottore, Sandrone, Columbina, or Skirk in active use.
  - Ran small API/tool smoke tests for Fandom API (success), genshin-db (available), Ambr.top (403 blocked), Honey Impact (403 blocked), and official manga (accessible).
  - Created one sample source mapping using SOURCE_TEMPLATE for WS-0001 (Kiếm Giáng Lâm).
- **files_changed:**
  - wiki/sources/source-index.md
  - wiki/research/source-index-alignment.md
  - wiki/research/pass-3-source-index-cleanup-report.md
  - wiki/research/pass-3-api-smoke-test-report.md
  - wiki/research/pass-3-sample-source-mapping.md
  - wiki/research/pass-3-next-actions.md
  - wiki/log.md
- **source_basis:**
  - Pass 2 source framework.
  - Pass 2.1 consistency fixes.
  - Existing local source folders.
  - User-approved external source candidate registry.
- **unresolved_issues:**
  - No lore backfill performed.
  - No mass ingestion performed.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - character_stories/ still not ingested.
  - official/ still not ingested.
  - Nod-Krai Acts II–VII still source_missing unless future official/source transcript is found.
- **next_recommended_steps:**
  - Pass 4 should start with controlled local VLAQ coverage mapping or one controlled character story ingestion test.
  - Do not backfill lore until source files are claim-mapped and reviewed.

## 2026-06-20 — Claude Code Pass 4 Local VLAQ Coverage Mapping

- **action:**
  - Inventoried local `sources/voice_lines/archon_quests/` files (124 files, 34 arc subfolders).
  - Mapped VLAQ coverage for Fontaine final AQ, Wanderer/Irminsul, Sumeru/Rukkhadevata/Nahida, Inazuma/Raiden, Traveler/Abyss sibling, and Skirk/Gnosis/Third Descender.
  - Physically inspected 8 key files with content verification.
  - Created claim-source matrix for CLM-014 through CLM-018 and CLM-009 through CLM-011.
  - Added 8 file-level VLAQ source IDs to source-index.md (VLAQ-INAZUMA-001/002, VLAQ-SUMERU-001, VLAQ-FONTAINE-001/002, VLAQ-TRAVELER-001/002, VLAQ-WANDERER-001).
  - Recorded remaining source gaps (14 total; Skirk, Dottore, Sandrone, character_stories/ remain blocked).
  - Did not backfill lore or update character pages.
- **files_changed:**
  - wiki/research/pass-4-vlaq-inventory.md
  - wiki/research/pass-4-vlaq-coverage-map.md
  - wiki/research/pass-4-claim-source-matrix.md
  - wiki/research/pass-4-source-gaps.md
  - wiki/research/pass-4-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/sources/source-index.md
  - wiki/log.md
- **source_basis:**
  - Existing local `sources/voice_lines/archon_quests/` files.
  - Pass 3 source-index cleanup.
  - Pass 2 priority source map.
- **unresolved_issues:**
  - No lore backfill performed.
  - No external ingestion performed.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - character_stories/ still not ingested.
  - official/ still not ingested.
  - Skirk direct source remains source_missing (zero VLAQ files).
  - CLM-010 (Gnosis as shackles) remains THEORY — only weak indirect support found.
  - CLM-011 (Third Descender) remains partial_coverage.
- **next_recommended_steps:**
  - Human review of VLAQ coverage map and claim-source matrix.
  - Approve source_status upgrades for CLM-014, CLM-016, CLM-017, CLM-018.
  - Then choose Pass 5: page update preparation, one controlled character story ingestion, or official manga alignment.

## 2026-06-20 — Claude Code Pass 4.1 VLAQ Strictness Fix

- **action:**
  - Corrected overconfident coverage labels in Pass 4 VLAQ mapping reports.
  - Ensured uninspected files are not marked as `coverage_found`.
  - Distinguished direct inspected evidence from keyword-only and folder/arc-level candidates.
  - Downgraded or qualified partial claims requiring deep read, including Focalors sacrifice, Wanderer/Irminsul rewrite, Traveler memory exception, and Third Descender identity.
  - Preserved direct inspected coverage for claims with physically verified evidence (CLM-017 fully confirmed; CLM-014/016 partially confirmed).
  - Changed recommended Pass 5 from page update to deep reads first.
- **files_changed:**
  - wiki/research/pass-4-vlaq-inventory.md
  - wiki/research/pass-4-vlaq-coverage-map.md
  - wiki/research/pass-4-claim-source-matrix.md
  - wiki/research/pass-4-source-gaps.md
  - wiki/research/pass-4-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/research/pass-4-1-strictness-report.md
  - wiki/sources/source-index.md
  - wiki/log.md
- **source_basis:**
  - Pass 4 VLAQ mapping reports.
  - Local VLAQ inspection status.
  - Source ID rules from Pass 2.1.
- **unresolved_issues:**
  - No lore backfill performed.
  - Some major claims still require deep read before metadata/page updates.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - Skirk remains source_missing.
  - Gnosis shackles remains THEORY / indirect.
  - Third Descender identity remains unconfirmed.
- **next_recommended_steps:**
  - Pass 5 should be Deep Read for Partial VLAQ Claims before page update.
  - Do not upgrade pages until human review approves corrected matrix.

## 2026-06-20 — Claude Code Pass 4.1.1 Documentation Cleanup

- **action:**
  - Cleaned up stale Pass 4 wording after Pass 4.1 strictness fix.
  - Ensured `pass-4-next-actions.md` recommends Deep VLAQ Inspection before page updates.
  - Marked Pass 4 recommendations in `priority-source-map.md` as superseded by Pass 4.1.
- **files_changed:**
  - wiki/research/pass-4-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/log.md
- **unresolved_issues:**
  - No lore backfill performed.
  - CLM-014, CLM-015, CLM-016, CLM-018, CLM-011 still require deep read or file-level confirmation.
  - CLM-017 remains ready for human review.
  - CLM-009 remains source_missing.
  - CLM-010 remains keep_theory.
- **next_recommended_steps:**
  - Pass 5: Deep Read for Partial VLAQ Claims.

## 2026-06-20 — Claude Code Pass 5 Deep Read for Partial VLAQ Claims

- **action:**
  - Deep-read selected local VLAQ files for partial claims from Pass 4.1.
  - Evaluated CLM-014, CLM-015, CLM-016, CLM-018, and CLM-011 using local source content.
  - Read 16 files fully across 4 quest arc groups (Fontaine, Sumeru, Wanderer/Descender, Traveler/Abyss).
  - Confirmed CLM-014 (all sub-claims direct), CLM-015 (core rewrite direct), CLM-016 (all sub-claims direct), CLM-018 (all major sub-claims direct across 12 files).
  - Preserved CLM-017 as ready for human review (unchanged from Pass 4).
  - Preserved CLM-009 as source_missing (only brief Skirk introduction found).
  - Preserved CLM-010 as keep_theory (no "shackles" framing in any file).
  - CLM-011 upgraded to strong_indirect (Descender concept confirmed; Third Descender ordinal identity NOT found).
  - Created Pass 5 evidence and claim-source reports.
  - Updated source-index.md: upgraded 3 existing IDs to deep_read_confirmed; added 2 new IDs (VLAQ-SUMERU-002, VLAQ-FONTAINE-003).
  - Did not update character/entity/topic pages.
- **files_changed:**
  - wiki/research/pass-5-deep-read-report.md (new)
  - wiki/research/pass-5-claim-source-matrix.md (new)
  - wiki/research/pass-5-evidence-index.md (new)
  - wiki/research/pass-5-source-gaps.md (new)
  - wiki/research/pass-5-next-actions.md (new)
  - wiki/research/priority-source-map.md (updated — Pass 5 section added)
  - wiki/research/pass-4-vlaq-coverage-map.md (updated — supersession note added)
  - wiki/research/pass-4-claim-source-matrix.md (updated — supersession note added)
  - wiki/sources/source-index.md (updated — 3 IDs upgraded, 2 new IDs added)
  - wiki/log.md (this entry)
- **source_basis:**
  - Existing local files in `sources/voice_lines/archon_quests/`.
  - Pass 4.1 strictness rules.
  - Source ID rules.
- **unresolved_issues:**
  - No lore backfill performed.
  - No external ingestion performed.
  - No page update performed.
  - Any claim without direct evidence remains partial/source_missing/theory.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - Skirk remains source_missing (brief intro only, no identity lore).
  - CLM-010 (Gnosis as shackles) remains keep_theory.
  - CLM-011 (Third Descender identity) remains needs_external_source_or_later_quest.
  - CLM-015 sub-claim ("Wanderer" name adoption) not found in this batch.
- **next_recommended_steps:**
  - Human review Pass 5 matrix.
  - Then choose Pass 6: source_status update preparation, further local search, or controlled source ingestion.

## 2026-06-20 — Claude Code Pass 6 Human Review + Source Status Update Preparation

- **action:**
  - Reviewed Pass 5 direct evidence for CLM-014, CLM-015, CLM-016, CLM-017, and CLM-018.
  - Prepared and applied minimal source_status/source_id updates where claims already existed on relevant wiki pages.
  - Preserved limitations for CLM-015 Wanderer name adoption.
  - Preserved CLM-009 as source_missing, CLM-010 as keep_theory, and CLM-011 as unresolved.
  - Did not perform lore backfill or external ingestion.
- **files_changed:**
  - wiki/research/pass-6-human-review-report.md (new)
  - wiki/research/pass-6-page-update-plan.md (new)
  - wiki/research/pass-6-source-status-changelog.md (new)
  - wiki/research/pass-6-next-actions.md (new)
  - wiki/research/priority-source-map.md (updated — Pass 6 section added)
  - wiki/research/pass-5-next-actions.md (updated — supersession note added)
  - wiki/entities/characters/Furina.md (source_status upgrade on TRAIT-005)
  - wiki/entities/characters/Kẻ Lang Thang.md (source_status upgrade on TRAIT-001, TRAIT-002)
  - wiki/entities/characters/Nahida.md (source_status upgrade on TRAIT-002, TRAIT-005)
  - wiki/entities/characters/Raiden Shogun.md (source_status upgrade on TRAIT-001)
  - wiki/entities/characters/Aether.md (source_status upgrade on TRAIT-003)
  - wiki/entities/characters/Lumine.md (source_status upgrade on TRAIT-003)
  - wiki/synthesis/contradiction-register.md (added VLAQ source refs to CON-0012, CON-0013, CON-0014)
  - wiki/synthesis/power-system-governance.md (source_status upgrade on PWR-IRMINSUL-001)
  - wiki/log.md (this entry)
- **source_basis:**
  - Pass 5 deep-read reports.
  - Local VLAQ source IDs in source-index.
  - Existing wiki page claims.
- **unresolved_issues:**
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains indirect_source_only / theory for Kuutar claims.
  - Skirk remains source_missing.
  - Gnosis shackles remains keep_theory.
  - Third Descender identity remains unresolved.
  - Character stories and Nod-Krai Acts II–VII still require controlled ingestion.
- **next_recommended_steps:**
  - Pass 7 — Controlled Source Ingestion Test.

## 2026-06-20 - Codex Pass 7 Controlled Source Ingestion Test

- **action:**
  - Tested controlled ingestion of character story sources using an isolated temp workspace.
  - Attempted character story retrieval for Kaeya, Furina, and Nahida only.
  - Confirmed `genshin-db` install and query success in `wiki/research/_tmp/pass7-genshin-db-test/`.
  - Found profile metadata and separate voiceover data, including Vietnamese output, but did not find character-story text fields.
  - Created no local `sources/character_stories/` files because retrieval and provenance validation did not produce character-story content.
  - Did not update source-index because no validated local source files were created.
  - Created Pass 7 ingestion reports.
  - Did not perform mass ingestion or page backfill.
- **files_changed:**
  - wiki/research/pass-7-ingestion-test-report.md
  - wiki/research/pass-7-created-sources-report.md
  - wiki/research/pass-7-claim-candidate-map.md
  - wiki/research/pass-7-source-index-update-report.md
  - wiki/research/pass-7-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/log.md
- **source_basis:**
  - Pass 6 next actions.
  - SOURCE_ID_RULES.
  - EXTERNAL_SOURCE_POLICY.
  - Controlled genshin-db test output.
- **unresolved_issues:**
  - No mass character story ingestion performed.
  - No `CS-*` source IDs added.
  - Dottore remains blocked unless directly ingested later.
  - Sandrone remains blocked unless directly ingested later.
  - Columbina remains source-light/theory.
  - Skirk remains source_missing.
  - Nod-Krai Acts II-VII remain source_missing.
- **next_recommended_steps:**
  - Pass 8 - Alternative Source Ingestion Route.

## 2026-06-20 - Codex Pass 8 Fandom API Character Story Ingestion Test

- **action:**
  - Tested Fandom MediaWiki API as an alternative character story ingestion route.
  - Targeted Kaeya only.
  - Created `sources/character_stories/Kaeya.md` after character-story/profile-story text was found through `Kaeya/Profile` and provenance was validated.
  - Updated `source-index.md` only after the validated local source file was created.
  - Created Pass 8 API, extraction, source, and claim-candidate reports.
  - Did not perform mass ingestion or page backfill.
- **files_changed:**
  - wiki/research/pass-8-fandom-api-test-report.md
  - wiki/research/pass-8-created-source-report.md
  - wiki/research/pass-8-kaeya-extraction-notes.md
  - wiki/research/pass-8-claim-candidate-map.md
  - wiki/research/pass-8-source-index-update-report.md
  - wiki/research/pass-8-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/sources/source-index.md
  - wiki/log.md
  - sources/character_stories/Kaeya.md
- **source_basis:**
  - Pass 7 failure to retrieve character-story text via genshin-db.
  - Fandom MediaWiki API controlled test output.
  - SOURCE_ID_RULES.
  - EXTERNAL_SOURCE_POLICY.
- **unresolved_issues:**
  - No mass character story ingestion performed.
  - Kaeya source file remains not yet claim-mapped.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains indirect_source_only / theory.
  - Skirk remains source_missing.
  - Nod-Krai Acts II-VII remain source_missing.
- **next_recommended_steps:**
  - Pass 9 - Kaeya Character Story Claim Mapping.

## 2026-06-21 - Codex Pass 8.1 Kaeya Source File Hardening

- **action:**
  - Re-opened Fandom MediaWiki API revision/oldid `2108515` for `Kaeya/Profile`.
  - Confirmed exact `{{Character Story}}` fields for Character Details, Character Story 1-5, and Vision are extractable from the pinned revision.
  - Hardened `sources/character_stories/Kaeya.md` into an API provenance/extraction index because exact long story text should not be stored locally under the external source policy.
  - Downgraded local source wording from transcript candidate to provenance record / extraction index candidate.
  - Did not update any character page or claim.
- **files_changed:**
  - sources/character_stories/Kaeya.md
  - wiki/research/pass-8-1-kaeya-source-hardening-report.md
  - wiki/research/pass-8-next-actions.md
  - wiki/sources/source-index.md
  - wiki/log.md
- **source_basis:**
  - Fandom MediaWiki API `Kaeya/Profile` revision/oldid `2108515`.
  - Pass 8 Fandom API reports.
  - EXTERNAL_SOURCE_POLICY copyright/excerpt rules.
- **unresolved_issues:**
  - Exact character-story text is not stored locally.
  - Pass 9 claim mapping must re-open API revision `2108515`.
  - `CS-KAEYA-001` remains valid as a local provenance record, not as a full local transcript.
- **next_recommended_steps:**
  - Pass 9 - Kaeya Character Story Claim Mapping with API reopen and human review before page updates.

## 2026-06-21 — Codex Pass 9 Kaeya Character Story Claim Mapping

- **action:**
  - Re-opened Fandom MediaWiki API revision `2108515` for `Kaeya/Profile`.
  - Verified `CS-KAEYA-001` evidence fields using char counts and SHA-256 hashes.
  - Mapped Kaeya character story candidate claims against existing `wiki/entities/characters/Kaeya.md`.
  - Created page update proposal reports only.
  - Did not update Kaeya page or upgrade claims directly.
- **files_changed:**
  - wiki/research/pass-9-kaeya-evidence-verification-report.md
  - wiki/research/pass-9-kaeya-claim-mapping-report.md
  - wiki/research/pass-9-kaeya-page-update-proposal.md
  - wiki/research/pass-9-next-actions.md
  - wiki/research/pass-8-next-actions.md
  - wiki/log.md
- **source_basis:**
  - sources/character_stories/Kaeya.md
  - Fandom MediaWiki API revision 2108515
  - wiki/entities/characters/Kaeya.md
  - sources/voice_lines/characters/Kaeya.md
- **unresolved_issues:**
  - Human review still required before Kaeya page update.
  - Full character story ingestion not performed.
  - Dottore, Sandrone, Columbina, Skirk, and Nod-Krai remain blocked/source-light.
- **next_recommended_steps:**
  - If mapping is clean: Pass 10 — Human Review and Controlled Kaeya Page Source Status Update.
  - If verification mismatch exists: Pass 10 — Kaeya Source Verification Fix.

## 2026-06-21 — Codex Pass 10 Controlled Kaeya Page Source Status Update

* **action:**

  * Applied approved Pass 9 Kaeya source-status updates to `wiki/entities/characters/Kaeya.md`.
  * Added `CS-KAEYA-001` and relevant evidence IDs to selected existing Kaeya claims.
  * Preserved cautious handling for Khaenri'ah-related burden and relationship-history claims.
  * Did not perform lore rewrite, mass ingestion, or unrelated page updates.
* **files_changed:**

  * wiki/entities/characters/Kaeya.md
  * wiki/research/pass-10-kaeya-update-report.md
  * wiki/research/pass-10-source-status-changelog.md
  * wiki/research/pass-10-next-actions.md
  * wiki/log.md
* **source_basis:**

  * sources/character_stories/Kaeya.md
  * wiki/research/pass-9-kaeya-evidence-verification-report.md
  * wiki/research/pass-9-kaeya-claim-mapping-report.md
  * wiki/research/pass-9-kaeya-page-update-proposal.md
  * sources/voice_lines/characters/Kaeya.md
* **unresolved_issues:**

  * Full character story ingestion not performed.
  * Dottore remains blocked_by_missing_source.
  * Sandrone remains blocked_by_missing_source.
  * Columbina remains source-light / theory.
  * Skirk remains source_missing.
  * Nod-Krai Acts II-VII remain source_missing.
* **next_recommended_steps:**

  * Stop the Kaeya pipeline here.
  * Begin premise/outline planning, or ingest only story-relevant characters later.

## 2026-06-21 — Codex Pass 11 Full Character Coverage Plan

- **action:**
  - Audited the current character layer for coverage, source status, and future batch planning.
  - Created a full character coverage plan, character tier map, source gap map, and batch roadmap.
  - Did not update character pages or perform source ingestion.
  - Kept the global LLM Wiki focused on canon/source/character foundation rather than project-specific fanfic plotting.
- **files_changed:**
  - wiki/research/pass-11-full-character-coverage-plan.md
  - wiki/research/pass-11-character-tier-map.md
  - wiki/research/pass-11-character-source-gap-map.md
  - wiki/research/pass-11-batch-roadmap.md
  - wiki/research/pass-11-next-actions.md
  - wiki/log.md
- **source_basis:**
  - wiki/entities/characters/
  - wiki/entities/characters/character-inventory.md
  - wiki/synthesis/character-audit-backlog.md
  - wiki/synthesis/ooc-risk-index.md
  - wiki/synthesis/headcanon-fanon-policy.md
  - wiki/sources/source-index.md
  - sources/voice_lines/characters/
  - sources/character_stories/
  - Pass 8–10 Kaeya pipeline reports
- **unresolved_issues:**
  - Character pages still need future batch normalization.
  - Character-story provenance is not complete for all playable characters.
  - Blocked/source-light characters must remain guarded until source packages exist.
- **next_recommended_steps:**
  - Pass 12 — Character Template v2.

## 2026-06-21 - Codex Pass 12 Character Template v2

- **action:**
  - Created the Character Foundation Page template v2 for the Genshin LLM Wiki.
  - Added standard, source-light, blocked, and Level 4 claim-mapped template variants.
  - Created a template usage guide for future character foundation batches.
  - Did not update existing character pages or perform source ingestion.
- **files_changed:**
  - wiki/entities/characters/_character-template-v2.md
  - wiki/research/pass-12-character-template-report.md
  - wiki/research/pass-12-template-usage-guide.md
  - wiki/research/pass-12-next-actions.md
  - wiki/log.md
- **source_basis:**
  - wiki/entities/characters/Kaeya.md
  - wiki/entities/characters/Dottore.md
  - wiki/entities/characters/Sandrone.md
  - wiki/entities/characters/Columbina.md
  - wiki/research/pass-11-full-character-coverage-plan.md
  - wiki/research/pass-11-character-tier-map.md
  - wiki/research/pass-11-character-source-gap-map.md
  - wiki/research/pass-11-batch-roadmap.md
  - wiki/research/pass-11-next-actions.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
- **unresolved_issues:**
  - Character pages still need future batch updates using the new template.
  - Character-story provenance remains incomplete outside Kaeya.
  - Blocked/source-light characters must remain guarded until direct source packages exist.
- **next_recommended_steps:**
  - Pass 13 - Mondstadt Character Foundation Batch.

## 2026-06-21 — Codex Pass NK-01 Nod-Krai Source Recon

- **action:**
  - Conducted a source-governance and structure audit of Nod-Krai and Snezhnayan pre-history.
  - Audited local book candidate files in `sources/book_texts/nod-krai/` and synthesis files in `topics/nod-krai/`.
  - Identified and indexed 8 valid local book/quest summary files as source candidates and highlighted the misplaced Natlan Act V file.
  - Mapped source gaps for regions, playable characters, Harbingers (Dottore, Columbina, Sandrone), and mythology, keeping Acts II-VII as guarded.
  - Did not update any existing character pages, rewrite lore, or upgrade claims.
- **files_changed:**
  - wiki/research/pass-nk-01-nod-krai-structure-audit.md
  - wiki/research/pass-nk-01-nod-krai-source-recon-report.md
  - wiki/research/pass-nk-01-nod-krai-source-candidate-index.md
  - wiki/research/pass-nk-01-nod-krai-source-gap-map.md
  - wiki/research/pass-nk-01-next-actions.md
  - wiki/log.md
- **source_basis:**
  - sources/book_texts/nod-krai/
  - topics/nod-krai/
  - entities/nations/Nod_Krai.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
- **unresolved_issues:**
  - Nod-Krai source candidates are not yet ingested or assigned source IDs in the main index.
  - Acts II-VII remain guarded/source_missing due to lack of raw dialogue transcripts.
  - Natlan Act V file is misplaced in the Nod-Krai directory.
- **next_recommended_steps:**
  - Pass NK-02 — Nod-Krai Local Source / Provenance Index Build.

## 2026-06-21 — Codex Pass NK-02 Nod-Krai Local Source / Provenance Index Build

- **action:**
  - Formally indexed 7 new local source entries and confirmed 1 pre-existing Nod-Krai book source in the central source index (`wiki/sources/source-index.md`).
  - Audited and verified all local files in `sources/book_texts/nod-krai/` against collision rules and formatting guidelines.
  - Created a source-to-claim-group map detailing safety levels for 21 claim groups, keeping Acts II-VII, Dottore false moon, Columbina true identity, and Sandrone Rotwang links blocked/guarded.
  - Quarantined the misplaced Natlan Archon Quest Act V file without moving it.
  - Documented risks and guardrails, detailing structural, lore, and technical safety parameters.
- **files_changed:**
  - wiki/sources/source-index.md
  - wiki/research/pass-nk-02-local-source-provenance-index.md
  - wiki/research/pass-nk-02-source-index-update-report.md
  - wiki/research/pass-nk-02-source-to-claim-group-map.md
  - wiki/research/pass-nk-02-quarantine-and-misplaced-files-report.md
  - wiki/research/pass-nk-02-risk-and-guardrail-report.md
  - wiki/research/pass-nk-02-next-actions.md
  - wiki/log.md
- **source_basis:**
  - sources/book_texts/nod-krai/
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
  - wiki/research/pass-nk-01-nod-krai-source-candidate-index.md
- **unresolved_issues:**
  - Faction governance profiles and regional power systems are not yet codified in the synthesis layer.
  - Playable characters (Lauma, Flins, Aino) and Harbingers remain blocked or guarded from upgrades until governance notes are built.
  - The misplaced Natlan Archon Quest file remains quarantined in the Nod-Krai directory pending a data-cleaning pass.
- **next_recommended_steps:**
  - Pass NK-03 — Nod-Krai Region / Faction Governance Notes.

## 2026-06-21 - Codex Pass 13 Mondstadt Character Foundation Batch

- **action:**
  - Created Level 2 Character Foundation Pages for the Mondstadt Pass 13 batch using `_character-template-v2.md`.
  - Included Aloy because Pass 11/12 roadmap files place her in the Pass 13 Mondstadt/collaboration scope.
  - Inspected existing Mondstadt pages and left Kaeya, Diluc, Jean, Lisa, Klee, Albedo, and Venti unchanged to preserve existing audit status and limitations.
  - Kept character-story, backstory, relationship, power, and major lore gaps guarded with explicit source status labels.
  - Did not ingest external sources, create source IDs, claim-map the batch, or add fanfic plot material.
- **files_changed:**
  - wiki/entities/characters/Amber.md
  - wiki/entities/characters/Barbara.md
  - wiki/entities/characters/Bennett.md
  - wiki/entities/characters/Diona.md
  - wiki/entities/characters/Eula.md
  - wiki/entities/characters/Fischl.md
  - wiki/entities/characters/Mika.md
  - wiki/entities/characters/Mona.md
  - wiki/entities/characters/Noelle.md
  - wiki/entities/characters/Razor.md
  - wiki/entities/characters/Rosaria.md
  - wiki/entities/characters/Sucrose.md
  - wiki/entities/characters/Aloy.md
  - wiki/research/pass-13-mondstadt-character-foundation-report.md
  - wiki/research/pass-13-character-update-list.md
  - wiki/research/pass-13-source-coverage-notes.md
  - wiki/research/pass-13-risk-and-guardrail-report.md
  - wiki/research/pass-13-next-actions.md
  - wiki/log.md
- **reason:**
  - Execute Pass 13 from the character roadmap and make Mondstadt characters usable as source-status-explicit Level 2 foundation pages.
- **source_basis:**
  - wiki/entities/characters/_character-template-v2.md
  - wiki/entities/characters/character-inventory.md
  - wiki/research/pass-11-full-character-coverage-plan.md
  - wiki/research/pass-11-character-tier-map.md
  - wiki/research/pass-11-character-source-gap-map.md
  - wiki/research/pass-11-batch-roadmap.md
  - wiki/research/pass-12-template-usage-guide.md
  - wiki/sources/source-index.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
  - wiki/synthesis/ooc-risk-index.md
  - wiki/synthesis/headcanon-fanon-policy.md
  - wiki/synthesis/contradiction-register.md
  - wiki/synthesis/power-system-governance.md
  - sources/voice_lines/characters/
  - entities/character_intelligence/ as indirect guidance only
- **unresolved_issues:**
  - Character-story provenance remains missing for all newly created pages.
  - Relationship, backstory, power-limit, and major lore claims remain guarded until later provenance and claim-mapping passes.
  - Aloy remains a collaboration/outlander page with external franchise canon blocked from local canon use.
  - Existing audited Mondstadt pages still predate full template-v2 normalization but were preserved to avoid reliability loss.
- **next_recommended_steps:**
  - Pass 14 - Liyue Character Foundation Batch.
  - Keep character-story provenance ingestion for Pass 20+ unless explicitly approved.

## 2026-06-21 — Codex Pass NK-03 Nod-Krai Region / Faction Governance Notes

- **action:**
  - Created source-status-explicit governance notes for Nod-Krai's region profile, factions, and power system mechanics.
  - Codified safety levels, allowed uses, and banned uses for 14 safe claim groups and 7 guarded/theory groups.
  - Formulated a terminology and source status matrix for 26 core regional terms.
  - Drafted a guarded claims register outlining boundaries for Acts II-VII, Dottore's false moon, Columbina's Kuutar identity, Sandrone's Rotwang link, and the Voynich Guild.
  - Conducted a risk and non-duplication audit confirming no character pages were created, modified, or batch-normalized.
- **files_changed:**
  - wiki/research/pass-nk-03-region-governance-notes.md
  - wiki/research/pass-nk-03-faction-governance-notes.md
  - wiki/research/pass-nk-03-power-mechanics-governance-notes.md
  - wiki/research/pass-nk-03-terminology-and-source-status-matrix.md
  - wiki/research/pass-nk-03-guarded-claims-register.md
  - wiki/research/pass-nk-03-risk-and-non-duplication-report.md
  - wiki/research/pass-nk-03-next-actions.md
  - wiki/log.md (this entry)
- **reason:**
  - Codify regional, factional, and mechanical governance parameters to safely handle Nod-Krai wiki sections without duplicating character work or violating canon guardrails.
- **source_basis:**
  - sources/book_texts/nod-krai/
  - wiki/sources/source-index.md
  - wiki/research/pass-nk-02-local-source-provenance-index.md
  - wiki/research/pass-nk-02-source-to-claim-group-map.md
  - wiki/research/pass-nk-02-risk-and-guardrail-report.md
- **unresolved_issues:**
  - Acts II-VII remain strictly blocked due to zero local dialogue transcripts.
  - Voynich Guild remains blocked and marked as source_missing.
  - Columbina = Kuutar remains guarded as a local legend / community theory only.
  - Dottore's false moon god and Sandrone's Rotwang connection remain blocked.
  - Character foundations for Lauma, Flins, and Aino remain unwritten, pending integration into the global Full Character Foundation Plan.
- **next_recommended_steps:**
  - Pass NK-04 — Nod-Krai Character Inventory / Tier / Source Gap Prep (inventory and gap prep only, no character page generation; character work must merge into the global Full Character Foundation Plan).

## 2026-06-21 — Codex Pass NK-04 Nod-Krai Character Inventory / Tier / Source Gap Prep

- **action:**
  - Conducted an inventory and source-gap preparation pass for characters related to Nod-Krai.
  - Discovered and categorized 19 character entities (local, cross-region, Harbingers, blocked, and background) based on registered local sources and governance records.
  - Created a character tier map assigning priority, criteria, and allowed/forbidden actions to five distinct tiers.
  - Formulated a character source gap map detailing gaps in voice lines, character stories, raw quest dialogues, relationships, and blocked high-risk claims.
  - Drafted merge guidelines proposing integration of findings into the global Full Character Foundation Plan as a later-region batch.
  - Conducted a risk and non-duplication audit confirming no character pages were created, modified, or batch-normalized.
- **files_changed:**
  - wiki/research/pass-nk-04-character-inventory-prep.md
  - wiki/research/pass-nk-04-character-tier-map.md
  - wiki/research/pass-nk-04-character-source-gap-map.md
  - wiki/research/pass-nk-04-full-character-plan-merge-notes.md
  - wiki/research/pass-nk-04-risk-and-non-duplication-report.md
  - wiki/research/pass-nk-04-next-actions.md
  - wiki/log.md (this entry)
- **reason:**
  - Map Nod-Krai character inventory, tier priorities, and source gaps for future integration into the global character plan without performing premature character page upgrades or violating workspace boundaries.
- **source_basis:**
  - sources/book_texts/nod-krai/
  - wiki/research/pass-nk-02-local-source-provenance-index.md
  - wiki/research/pass-nk-03-region-governance-notes.md
  - wiki/research/pass-nk-03-faction-governance-notes.md
  - wiki/research/pass-nk-03-terminology-and-source-status-matrix.md
  - wiki/research/pass-nk-03-guarded-claims-register.md
  - wiki/research/pass-11-character-tier-map.md
  - wiki/research/pass-11-character-source-gap-map.md
- **unresolved_issues:**
  - Physical voice lines, character stories, and raw quest dialogues remain missing for all local characters.
  - Snezhnaya AQ Acts II-VII remain strictly blocked.
  - High-risk claims (Columbina deity link, Dottore false moon, Sandrone Rotwang link, Skirk Descender link) remain blocked.
- **next_recommended_steps:**
  - Return to the global Full Character Foundation Plan.

## 2026-06-21 — Codex Pass NK-05 Nod-Krai / Snezhnaya Acts II–VII Raw Source Search & Provenance Feasibility

- **action:**
  - Conducted a thorough web search for official and wiki transcripts of "Song of the Welkin Moon" Acts II–VII (and Act VIII).
  - Fetched and parsed the live Genshin Impact Fandom Wiki article for "Song of the Welkin Moon" to extract its structure and details.
  - Documented the act titles, quest lists, and lack of raw transcripts for Acts II-VII, proving that they are community-created fanon content.
  - Compiled a provenance feasibility assessment indicating that local ingestion into the canon layer is unfeasible.
  - Created a claim group coverage map showing that all related claims must remain blocked or strictly guarded.
  - Evaluated the quality of external source families, classifying them under the repository's source policy.
  - Formulated a local ingestion plan for fanon/AU metadata, a risk and quarantine report, and next actions.
- **files_changed:**
  - wiki/research/pass-nk-05-acts-ii-vii-source-search-report.md
  - wiki/research/pass-nk-05-acts-ii-vii-source-candidate-index.md
  - wiki/research/pass-nk-05-acts-ii-vii-provenance-feasibility.md
  - wiki/research/pass-nk-05-acts-ii-vii-claim-group-coverage-map.md
  - wiki/research/pass-nk-05-external-source-quality-report.md
  - wiki/research/pass-nk-05-local-ingestion-plan.md
  - wiki/research/pass-nk-05-risk-and-quarantine-report.md
  - wiki/research/pass-nk-05-next-actions.md
  - wiki/log.md (this entry)
- **reason:**
  - Audit and check the feasibility of unlocking Snezhnaya / Nod-Krai AQ Acts II-VII from blocked status by searching for physical/raw transcripts.
- **source_basis:**
  - Genshin Impact Fandom Wiki (online)
  - Genshin Impact Fanon Wiki (online)
  - topics/nod-krai/story_summary.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
- **unresolved_issues:**
  - Snezhnaya Acts II-VII are confirmed as fanon and remain blocked/unavailable in the primary canon layer.
  - High-risk claims (Columbina deity link, Dottore false moon, Sandrone Rotwang link, Skirk Descender link) remain strictly blocked/guarded.
- **next_recommended_steps:**
  - Return to the global Full Character Foundation Plan (Option B) since no official raw sources exist for Nod-Krai Acts II-VII.

## 2026-06-21 — Codex Pass NK-05.1 Nod-Krai / Snezhnaya Acts II–VII Official/Fandom Reclassification Patch

- **action:**
  - Performed a corrective re-audit of "Song of the Welkin Moon" Acts II–VII (and Act VIII).
  - Cross-confirmed the official existence of the quests and version updates (Luna I–IV) on `genshin.hoyoverse.com` (Tier A).
  - Queried the Fandom MediaWiki API to verify page IDs, revision IDs, and timestamps for the main-wiki official-game pages.
  - Audited the subquest pages, discovering that they contain full, high-quality raw dialogue transcripts (up to 72.8k characters) complete with voice line audio codes.
  - Reclassified all `EX-` candidates to `AQ-NK-ACT*-PROV-CANDIDATE` (Tier B).
  - Reassessed the high-risk claim groups, marking them as eligible for future mapping after local ingestion while keeping them strictly guarded.
  - Formulated a local ingestion readiness plan, risk and correction report, and recommended Option A (Pass NK-06) as the next step.
- **files_changed:**
  - wiki/research/pass-nk-05-1-source-reclassification-report.md
  - wiki/research/pass-nk-05-1-official-source-verification.md
  - wiki/research/pass-nk-05-1-fandom-page-audit.md
  - wiki/research/pass-nk-05-1-acts-ii-vii-provenance-candidate-index.md
  - wiki/research/pass-nk-05-1-claim-group-reassessment.md
  - wiki/research/pass-nk-05-1-local-ingestion-readiness.md
  - wiki/research/pass-nk-05-1-risk-and-correction-report.md
  - wiki/research/pass-nk-05-1-next-actions.md
  - wiki/log.md (this entry)
- **reason:**
  - Correct the misclassification from Pass NK-05 which treated official game main-wiki pages as fanon, and re-audit the source candidates.
- **source_basis:**
  - Genshin Impact Fandom Wiki (online - genshin-impact.fandom.com)
  - HoYoverse Official news & patch notes (online - genshin.hoyoverse.com)
  - MediaWiki API (online query)
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
- **invalidated_previous_conclusions:**
  - Treated `genshin-impact.fandom.com` as the Fanon Wiki.
  - Concluded that "Song of the Welkin Moon Acts II–VII are entirely fan-created content."
  - Concluded that "No official raw dialogue transcripts exist because these acts do not exist in the official live game."
- **unresolved_issues:**
  - Transcripts are not yet locally ingested (local directories are empty / `local_source_missing`).
  - High-risk claims remain guarded and must not be upgraded in the wiki pages until full verification.
- **next_recommended_steps:**
  - Pass NK-06: Acts II–VII Provenance Ingestion & Source Index Candidate Registration (Option A).

## 2026-06-21 — Codex Pass 14 Liyue Character Foundation Batch

- **action:**
  - Created 20 Level 2 Character Foundation Pages for the Liyue batch using `_character-template-v2.md`.
  - Characters created: Baizhu, Beidou, Chongyun, Gaming, Ganyu, Hu Tao, Keqing, Lan Yan, Ningguang, Qiqi, Shenhe, Xiangling, Xianyun, Xiao, Xingqiu, Xinyan, Yanfei, Yaoyao, Yelan, Yun Jin.
  - Preserved Zhongli.md unchanged (existing Level 2 OOC Risk Audit page with voice-line citations).
  - All pages include 18 required template sections with source-status-explicit guardrails.
  - Did not ingest external sources, create source IDs, claim-map the batch, or add fanfic/plot material.
  - Created 5 research/report files for Pass 14.
- **files_changed:**
  - wiki/entities/characters/Baizhu.md
  - wiki/entities/characters/Beidou.md
  - wiki/entities/characters/Chongyun.md
  - wiki/entities/characters/Gaming.md
  - wiki/entities/characters/Ganyu.md
  - wiki/entities/characters/Hu Tao.md
  - wiki/entities/characters/Keqing.md
  - wiki/entities/characters/Lan Yan.md
  - wiki/entities/characters/Ningguang.md
  - wiki/entities/characters/Qiqi.md
  - wiki/entities/characters/Shenhe.md
  - wiki/entities/characters/Xiangling.md
  - wiki/entities/characters/Xianyun.md
  - wiki/entities/characters/Xiao.md
  - wiki/entities/characters/Xingqiu.md
  - wiki/entities/characters/Xinyan.md
  - wiki/entities/characters/Yanfei.md
  - wiki/entities/characters/Yaoyao.md
  - wiki/entities/characters/Yelan.md
  - wiki/entities/characters/Yun Jin.md
  - wiki/research/pass-14-liyue-character-foundation-report.md
  - wiki/research/pass-14-character-update-list.md
  - wiki/research/pass-14-source-coverage-notes.md
  - wiki/research/pass-14-risk-and-guardrail-report.md
  - wiki/research/pass-14-next-actions.md
  - wiki/log.md
- **reason:**
  - Execute Pass 14 from the character roadmap and make Liyue characters usable as source-status-explicit Level 2 foundation pages.
- **source_basis:**
  - wiki/entities/characters/_character-template-v2.md
  - wiki/entities/characters/character-inventory.md
  - wiki/research/pass-11-full-character-coverage-plan.md
  - wiki/research/pass-11-character-tier-map.md
  - wiki/research/pass-11-character-source-gap-map.md
  - wiki/research/pass-11-batch-roadmap.md
  - wiki/research/pass-12-template-usage-guide.md
  - wiki/research/pass-13-mondstadt-character-foundation-report.md
  - wiki/research/pass-13-next-actions.md
  - wiki/sources/source-index.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
  - wiki/synthesis/ooc-risk-index.md
  - wiki/synthesis/headcanon-fanon-policy.md
  - wiki/synthesis/contradiction-register.md
  - wiki/synthesis/power-system-governance.md
  - sources/voice_lines/characters/ (all 21 Liyue characters)
  - entities/character_intelligence/ as indirect guidance only
- **unresolved_issues:**
  - Character-story provenance remains missing for all newly created pages.
  - Relationship, backstory, power-limit, and major lore claims remain guarded until later provenance and claim-mapping passes.
  - Zhongli page preserved unchanged but still predates full template-v2 normalization in some areas.
  - Minor format variation exists across pages (some use table format for Audit Status, others use bullet lists).
- **next_recommended_steps:**
  - Pass 15 — Inazuma Character Foundation Batch.
  - Keep character-story provenance ingestion for Pass 20+ unless explicitly approved.
  - Keep claim mapping for Pass 26+ unless explicitly approved.

## 2026-06-21 — Codex Pass NK-05.1a Nod-Krai / Snezhnaya Acts II–VII Metadata & Wording Strictness Patch

- **action:**
  - Applied corrective patch NK-05.1a to resolve metadata and wording strictness issues.
  - Reaudited and verified all official HoYoverse update URLs for Luna I–IV on `genshin.hoyoverse.com`, correcting them to verified URLs (`159349`, `160521`, `161275`, `162159`, `162081`).
  - Patched and corrected API metadata (Page IDs, revision IDs, and timestamps) for Snezhnaya Archon Quest Acts II–VIII and all 19 individual subquest pages in `pass-nk-05-1-fandom-page-audit.md`.
  - Corrected copy-paste metadata typos (Act V page ID is `420143`; *The Dark Side of Memory* revision ID is `2113334`).
  - Refined wording for all 16 claim groups in `pass-nk-05-1-claim-group-reassessment.md` from "confirmed in transcripts" to "transcript candidate found; eligible for future claim mapping after local ingestion".
  - Enforced four strict safety statuses (`transcript_candidate_found`, `requires_local_ingestion`, `requires_claim_level_extraction`, `requires_human_review`) for all high-risk claim groups, keeping them strictly flagged as `guarded` or `pending` to prevent premature canonization.
  - Updated `pass-nk-05-1-risk-and-correction-report.md` and `pass-nk-05-1-next-actions.md` to reflect patch completion and readiness for Pass NK-06.
- **files_changed:**
  - [wiki/research/pass-nk-05-1-fandom-page-audit.md](./research/pass-nk-05-1-fandom-page-audit.md)
  - [wiki/research/pass-nk-05-1-claim-group-reassessment.md](./research/pass-nk-05-1-claim-group-reassessment.md)
  - [wiki/research/pass-nk-05-1-risk-and-correction-report.md](./research/pass-nk-05-1-risk-and-correction-report.md)
  - [wiki/research/pass-nk-05-1-next-actions.md](./research/pass-nk-05-1-next-actions.md)
  - [wiki/log.md](./log.md) (this entry)
- **reason:**
  - Address three critical metadata and wording issues identified in Pass NK-05.1 before opening Pass NK-06.
- **source_basis:**
  - HoYoverse Official Announcement & Update URLs (online)
  - Fandom MediaWiki API page metadata (from local query cache results)
- **unresolved_issues:**
  - Local dialogue transcripts under `sources/voice_lines/archon_quests/` are empty.
  - High-risk claims remain guarded and blocked until revision-pinned transcripts are locally ingested in Pass NK-06 and claim-mapped in Pass NK-07.
- **next_recommended_steps:**
  - Proceed to Pass NK-06 (Option A) to ingest Snezhnaya / Nod-Krai AQ Acts II-VII transcripts.

## 2026-06-21 — Codex Pass NK-06 Acts II–VII Provenance Ingestion & Source Index Candidate Registration

- **action:**
  - Formally created 7 local provenance index files for Snezhnaya / Nod-Krai Archon Quest Acts II–VII (and Act VIII as an appendix candidate) under `sources/provenance/archon_quests/nod-krai/`.
  - Registered these source IDs (AQ-NK-ACT2 through AQ-NK-ACT8) as provenance candidates in `wiki/sources/source-index.md` with reliability "Medium / provenance candidate" and status "provenance_candidate".
  - Pin-revisioned all 6 acts and 19 subquests to specific MediaWiki oldids and timestamps to secure the index against future community drift.
  - Mapped high-risk claim groups to potential evidence locations using strictly guarded candidate terminology (e.g. `provenance_candidate_found`, `needs_deep_read`).
  - Did not ingest full dialogue transcripts, copy walkthrough texts, or update any character, region, faction, or timeline synthesis pages.
- **files_changed:**
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT2.md
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT3.md
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT4.md
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT5.md
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT6.md
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT7.md
  - sources/provenance/archon_quests/nod-krai/AQ-NK-ACT8.md
  - wiki/sources/source-index.md
  - wiki/research/pass-nk-06-provenance-ingestion-report.md
  - wiki/research/pass-nk-06-created-provenance-files-report.md
  - wiki/research/pass-nk-06-source-index-update-report.md
  - wiki/research/pass-nk-06-act-subquest-revision-map.md
  - wiki/research/pass-nk-06-transcript-coverage-index.md
  - wiki/research/pass-nk-06-claim-mapping-prep.md
  - wiki/research/pass-nk-06-risk-and-guardrail-report.md
  - wiki/research/pass-nk-06-next-actions.md
  - wiki/log.md (this entry)
- **reason:**
  - Move Snezhnaya / Nod-Krai Acts II–VII from source_missing to provenance_candidate_registered, creating a secure revision-pinned bridge to the script metadata without violating copyright policies or prematurely modifying canon pages.
- **source_basis:**
  - wiki/research/pass-nk-05-1-fandom-page-audit.md
  - wiki/research/pass-nk-05-1-official-source-verification.md
  - wiki/research/pass-nk-05-1-acts-ii-vii-provenance-candidate-index.md
  - wiki/research/pass-nk-05-1-claim-group-reassessment.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
- **unresolved_issues:**
  - High-risk claims remain guarded and must not be upgraded in the wiki pages.
  - Dialogue transcripts remain unread and unmapped at the claim level.
- **next_recommended_steps:**
  - Pass NK-07 — Acts II–VII Deep Read / Claim-Level Extraction Map.

## 2026-06-21 — Codex Pass NK-06.1 Nod-Krai / Snezhnaya Acts II–VII Subquest Count / Coverage Consistency Patch

- **action:**
  - Recounted and verified the subquests of Snezhnaya / Nod-Krai Archon Quest Acts II–VII from the audited Fandom act pages.
  - Confirmed all 19 subquests are correctly mapped in the revision maps and transcript coverage indices.
  - Corrected text summary typos counting "18 subquests" to "19 subquests" across the ingestion report, the global log, and the compact review bundle.
  - Ensured no changes were made beyond the provenance_candidate status, and kept all high-risk claim groups guarded.
- **files_changed:**
  - wiki/research/pass-nk-06-provenance-ingestion-report.md
  - wiki/research/review-bundle-nk-06.md
  - wiki/log.md (this entry)
- **reason:**
  - Ensure total consistency and correctness of the subquest count and revision mappings across all Pass NK-06 output files.
- **source_basis:**
  - wiki/research/pass-nk-05-1-fandom-page-audit.md
  - wiki/research/pass-nk-06-act-subquest-revision-map.md
- **unresolved_issues:**
  - None. Subquest counts are fully consistent.
- **next_recommended_steps:**
  - Pass NK-07 — Acts II–VII Deep Read / Claim-Level Extraction Map.

## 2026-06-21 — Codex Pass NK-07 Snezhnaya / Nod-Krai Acts II–VII Deep Read, Claim-Level Extraction, and Controlled Page Source-Status Patch

- **action:**
  - Completed deep-read of revision-pinned wikitext files and compiled the evidence index of 16 high-risk Snezhnaya/Nod-Krai claim groups.
  - Registered 16 evidence ID entries under the `NK07-*` naming convention in `wiki/research/pass-nk-07-evidence-index.md`.
  - Created claim-level extraction map and page patch plan.
  - Applied controlled source-status patches (Source Coverage Notes, Theory updates, and Source registration) to existing character profiles (`Dottore.md`, `Columbina.md`, `Sandrone.md`, `Aether.md`, and `Lumine.md`).
  - Patched synthesis registers (`unverified-lore-register.md`, `contradiction-register.md`, `power-system-governance.md`, `priority-source-map.md`) to reflect the new deep-read statuses.
  - Maintained all claims in strictly guarded status (e.g. `evidence_found_guarded`) instead of declaring them narrator-safe canon.
  - No new character profiles (like Skirk, Paimon, or Traveler) were created, and no Full Character Plan batches were duplicated.
  - No dialogue transcripts were copied into the main wiki.
- **files_changed:**
  - [wiki/entities/characters/Dottore.md](./entities/characters/Dottore.md)
  - [wiki/entities/characters/Columbina.md](./entities/characters/Columbina.md)
  - [wiki/entities/characters/Sandrone.md](./entities/characters/Sandrone.md)
  - [wiki/entities/characters/Aether.md](./entities/characters/Aether.md)
  - [wiki/entities/characters/Lumine.md](./entities/characters/Lumine.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/synthesis/power-system-governance.md](./synthesis/power-system-governance.md)
  - [wiki/research/priority-source-map.md](./research/priority-source-map.md)
  - [wiki/research/pass-nk-07-deep-read-report.md](./research/pass-nk-07-deep-read-report.md)
  - [wiki/research/pass-nk-07-evidence-index.md](./research/pass-nk-07-evidence-index.md)
  - [wiki/research/pass-nk-07-claim-level-extraction-map.md](./research/pass-nk-07-claim-level-extraction-map.md)
  - [wiki/research/pass-nk-07-page-patch-plan.md](./research/pass-nk-07-page-patch-plan.md)
  - [wiki/research/pass-nk-07-page-patch-report.md](./research/pass-nk-07-page-patch-report.md)
  - [wiki/research/pass-nk-07-risk-and-guardrail-report.md](./research/pass-nk-07-risk-and-guardrail-report.md)
  - [wiki/research/pass-nk-07-next-actions.md](./research/pass-nk-07-next-actions.md)
  - [wiki/research/review-bundle-nk-07.md](./research/review-bundle-nk-07.md)
  - [wiki/log.md](./log.md) (this entry)
- **reason:**
  - Map and register evidence for high-risk Snezhnaya / Nod-Krai claims based on revision-pinned provenance records, and apply controlled status patches to character profiles and registers without canonizing unverified lore or colliding with the character plan.
- **source_basis:**
  - Local provenance index files under `sources/provenance/archon_quests/nod-krai/`
  - Fandom MediaWiki API page wikitext records (downloaded and parsed locally)
- **unresolved_issues:**
  - High-risk claims remain guarded and require human-in-the-loop review and cross-source verification.
  - Character profiles remain locked/blocked pending official voice lines and developer-provided profile details.
- **next_recommended_steps:**
  - Return to Full Character Plan — Pass 15 Inazuma Character Foundation Batch.
  - Optional NK-08 only if human review wants to approve source-status wording.

## 2026-06-21 — Codex Pass 15 Inazuma Character Foundation Batch

- **action:**
  - Created 15 Level 2 Character Foundation Pages for the Inazuma batch using `_character-template-v2.md`.
  - Characters created: Arataki Itto, Chiori, Gorou, Kaedehara Kazuha, Kamisato Ayaka, Kamisato Ayato, Kirara, Kujou Sara, Kuki Shinobu, Sangonomiya Kokomi, Sayu, Shikanoin Heizou, Thoma, Yae Miko, Yoimiya.
  - Preserved Raiden Shogun.md unchanged (existing Level 2 audited page with CON-0014 Ei/Shogun separation).
  - All pages include 18 required template sections with source-status-explicit guardrails.
  - Used consistent table-format Audit Status across all new pages.
  - Did not ingest external sources, create source IDs, claim-map the batch, or add fanfic/plot material.
  - Created 5 research/report files for Pass 15.
- **files_changed:**
  - wiki/entities/characters/Arataki Itto.md
  - wiki/entities/characters/Chiori.md
  - wiki/entities/characters/Gorou.md
  - wiki/entities/characters/Kaedehara Kazuha.md
  - wiki/entities/characters/Kamisato Ayaka.md
  - wiki/entities/characters/Kamisato Ayato.md
  - wiki/entities/characters/Kirara.md
  - wiki/entities/characters/Kujou Sara.md
  - wiki/entities/characters/Kuki Shinobu.md
  - wiki/entities/characters/Sangonomiya Kokomi.md
  - wiki/entities/characters/Sayu.md
  - wiki/entities/characters/Shikanoin Heizou.md
  - wiki/entities/characters/Thoma.md
  - wiki/entities/characters/Yae Miko.md
  - wiki/entities/characters/Yoimiya.md
  - wiki/research/pass-15-inazuma-character-foundation-report.md
  - wiki/research/pass-15-character-update-list.md
  - wiki/research/pass-15-source-coverage-notes.md
  - wiki/research/pass-15-risk-and-guardrail-report.md
  - wiki/research/pass-15-next-actions.md
  - wiki/log.md
- **reason:**
  - Execute Pass 15 from the character roadmap and make Inazuma characters usable as source-status-explicit Level 2 foundation pages.
- **source_basis:**
  - wiki/entities/characters/_character-template-v2.md
  - wiki/research/pass-11-full-character-coverage-plan.md
  - wiki/research/pass-11-character-tier-map.md
  - wiki/research/pass-11-batch-roadmap.md
  - wiki/research/pass-12-template-usage-guide.md
  - wiki/research/pass-13-mondstadt-character-foundation-report.md
  - wiki/research/pass-14-liyue-character-foundation-report.md
  - wiki/research/pass-14-next-actions.md
  - wiki/sources/source-index.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
  - wiki/synthesis/ooc-risk-index.md
  - wiki/synthesis/headcanon-fanon-policy.md
  - wiki/synthesis/contradiction-register.md
  - wiki/synthesis/power-system-governance.md
  - sources/voice_lines/characters/ (all 16 Inazuma characters)
  - entities/character_intelligence/ as indirect guidance only
- **unresolved_issues:**
  - Character-story provenance remains missing for all newly created pages.
  - Relationship, backstory, power-limit, and major lore claims remain guarded until later provenance and claim-mapping passes.
  - Raiden Shogun page preserved unchanged; no template-v2 table normalization attempted to avoid downgrade risk.
  - No source-index changes made.
  - No source IDs created.
  - No character-story provenance ingestion performed.
  - No claim mapping performed.
- **next_recommended_steps:**
  - Pass 16 — Sumeru Character Foundation Batch.
  - Keep character-story provenance ingestion for Pass 20+ unless explicitly approved.
  - Keep claim mapping for Pass 26+ unless explicitly approved.

---

## 2026-06-21 — Pass 16: Sumeru Character Foundation Batch

- **action:** Created 12 new Level 2 Character Foundation Pages for Sumeru characters. Preserved 2 existing audited pages (Nahida, Kẻ Lang Thang) without modification.
- **files_changed:**
  - wiki/entities/characters/Alhaitham.md (created)
  - wiki/entities/characters/Candace.md (created)
  - wiki/entities/characters/Collei.md (created)
  - wiki/entities/characters/Cyno.md (created)
  - wiki/entities/characters/Dehya.md (created)
  - wiki/entities/characters/Dori.md (created)
  - wiki/entities/characters/Faruzan.md (created)
  - wiki/entities/characters/Kaveh.md (created)
  - wiki/entities/characters/Layla.md (created)
  - wiki/entities/characters/Nilou.md (created)
  - wiki/entities/characters/Sethos.md (created)
  - wiki/entities/characters/Tighnari.md (created)
  - wiki/research/pass-16-sumeru-character-foundation-report.md (created)
  - wiki/research/pass-16-character-update-list.md (created)
  - wiki/research/pass-16-source-coverage-notes.md (created)
  - wiki/research/pass-16-risk-and-guardrail-report.md (created)
  - wiki/research/pass-16-next-actions.md (created)
  - wiki/log.md (updated)
- **reason:** Continue regional character foundation batch sequence (Pass 13 Mondstadt → Pass 14 Liyue → Pass 15 Inazuma → Pass 16 Sumeru). Provide safe baseline Level 2 pages for all 14 Sumeru characters using source-first methodology and template v2.
- **source_basis:**
  - sources/voice_lines/characters/ (all 14 Sumeru character voice files — primary source)
  - entities/character_intelligence/ (indirect guidance only, NOT primary)
  - wiki/entities/characters/Nahida.md (existing audited page — preserved)
  - wiki/entities/characters/Kẻ Lang Thang.md (existing audited page — preserved)
  - wiki/entities/characters/_character-template-v2.md
  - wiki/research/pass-11-*.md through pass-15-*.md
  - wiki/synthesis/ooc-risk-index.md
  - wiki/synthesis/headcanon-fanon-policy.md
- **unresolved_issues:**
  - Character-story provenance remains missing for all 12 newly created pages.
  - Backstory, major lore claims, and detailed powers remain source_missing until character stories are ingested.
  - High-risk Sumeru lore (Irminsul, Rukkhadevata, King Deshret, Akademiya politics, Eremite factions, Eleazar/Withering) guarded in Theory/Interpretation sections only.
  - Nahida page preserved unchanged — CON-0013 and Irminsul mechanics intact.
  - Kẻ Lang Thang page preserved unchanged — CON-0012 and Irminsul rewrite rules intact.
  - No duplicate Wanderer.md created.
  - No source-index changes made.
  - No source IDs created.
  - No character-story provenance ingestion performed.
  - No claim mapping performed.
  - character_intelligence was NOT used as primary source.
  - STRONGLY IMPLIED was NOT used for intelligence-only claims.
- **next_recommended_steps:**
  - Pass 17 — Fontaine Character Foundation Batch.
  - Keep character-story provenance ingestion for Pass 20+ unless explicitly approved.
  - Keep claim mapping for Pass 26+ unless explicitly approved.
