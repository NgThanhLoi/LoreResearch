# Source Index

Bản chỉ mục này lập bản đồ các mã định danh nguồn (Source ID) cho các tài liệu hiện có trong workspace ở cấp độ thư mục và các tệp tin cốt lõi. Trong đợt rà soát Pass 2, chỉ mục đã được mở rộng thành một phần chi tiết ở cấp độ tệp tin cho các nhóm nguồn thô mạnh nhất.

> [!IMPORTANT]
> Các mã định danh nguồn (Source ID) chỉ thực sự có hiệu lực (valid) khi tệp tin nguồn tương ứng đã được kiểm tra vật lý và tồn tại trong workspace. Tuyệt đối không sử dụng mã định danh giả định cho các tệp tin chưa được xác minh vật lý.

## 1. Folder-Level Source Index

| Source ID | Path | Source Type | Reliability | Main Topics | Used by Pages | Notes |
| :--- | :--- | :--- | :---: | :--- | :--- | :--- |
| **WS-ALL** | `sources/weapon_stories/` | Weapon Stories | High | Lịch sử cổ đại, vũ khí, Khaenri'ah | `../synthesis/power-system-governance.md` | Gồm 227 file chính xác |
| **AR-ALL** | `sources/artifact_descriptions/` | Artifact Descriptions | High | Các nền văn minh cổ, Ma Thần, Celestia | `../synthesis/power-system-governance.md` | Gồm 61 file |
| **BK-ALL** | `sources/book_texts/` | In-game Books | High | Thần thoại phương Bắc, 3 mặt trăng, lịch sử | `../synthesis/unverified-lore-register.md` | Thơ ca cổ, truyện dân gian |
| **VL-ALL** | `sources/voice_lines/` | Voice Lines | High | Câu chuyện, tính cách, quan hệ nhân vật | `../synthesis/headcanon-fanon-policy.md` | Lời thoại trực tiếp nhân vật |
| **EN-ALL** | `entities/` | Entity Summaries | Medium | Thuộc tính nhân vật, thế lực, vũ khí, vật phẩm | (Nhiều trang entities/) | Nhiều file còn là template trống |
| **TP-ALL** | `topics/` | Topic Analysis | Low/Medium | Các bài phân tích chủ đề, quan hệ cộng đồng | `../synthesis/contradiction-register.md` | Chứa nhiều lập luận chủ quan |
| **MG-ALL** | `sources/manga_transcripts/` | Manga Transcripts | Medium | Diluc, Kaeya, Amber, Vennessa, Mondstadt backstory | N/A | Gồm 21 file (chapter 00–16 + variants). Folder-level aggregate only; file-level mapping needed for claim-level canon. |
| **VLAQ-ALL** | `sources/voice_lines/archon_quests/` | Archon Quest Voice Lines | High | Fontaine, Sumeru, Inazuma, Mondstadt, Liyue main quest dialogue | N/A | 124+ files in quest subdirectories. Primary source for archon quest dialogue claims. |
| **VLWQ-ALL** | `sources/voice_lines/world_quests/` | World Quest Voice Lines | Medium | Enkanomiya, selected world quest dialogue | N/A | Only 4 files currently (2 quest groups). Coverage limited; not sufficient for broad world quest claims. |
| **QD-ALL** | `sources/quest_dialogue/` | Quest Dialogue | legacy_retired / not_source | Thư mục không tồn tại trong workspace | N/A | **Legacy retired.** Folder does not exist. Not usable for claim-level canon. Use VLAQ/VLWQ for existing voice-line quest sources and AQ/WQ/SQ/IQ for future full transcripts. |
| **OF-ALL** | `sources/official/` | Official Sources | Unusable | Thư mục không tồn tại trong workspace | N/A | **Thư mục không tìm thấy trong workspace** |

## 2. Partial File-Level Source Index

Dưới đây là danh sách lập chỉ mục chi tiết cho các tệp tin nguồn sơ cấp quan trọng nhất được rà soát trong Pass 2:

| Source ID | Path | Source type | Reliability | Main topics | Indexed level | Used by pages | Notes |
| :--- | :--- | :--- | :---: | :--- | :--- | :--- | :--- |
| **WS-0001** | `sources/weapon_stories/Kiếm Giáng Lâm.md` | Weapon Story | High | Kẻ Giáng Lâm, Descender logic, Sword of Descension | file-level | `../synthesis/power-system-governance.md` | Nguồn sơ cấp quan trọng về Descender. |
| **WS-0002** | `sources/weapon_stories/Hình Thái Xích Nguyệt.md` | Weapon Story | High | Crimson Moon dynasty, Arlecchino | file-level | `../synthesis/unverified-lore-register.md` | Hữu ích cho thiết lập timeline cổ đại. |
| **WS-0003** | `sources/weapon_stories/Phong Ưng Kiếm.md` | Weapon Story | High | Lịch sử Mondstadt, Arundolyn, Quý tộc cũ | file-level | `../synthesis/timeline-continuity.md` | Hữu ích cho lịch sử tiền truyện Mondstadt. |
| **WS-0004** | `sources/weapon_stories/Đường Cùng Của Sói.md` | Weapon Story | High | Đội Kỵ Sĩ Tây Phong, sói Boreas | file-level | `../synthesis/timeline-continuity.md` | Nguồn sơ cấp cho cốt truyện sói Bắc Phong. |
| **WS-0005** | `sources/weapon_stories/Lưỡi Kiếm Narzissenkreuz.md` | Weapon Story | High | Hội Narzissenkreuz, Fontaine cổ | file-level | (Nhiều trang entities/) | Hữu ích cho cốt truyện Fontaine. |
| **AR-0001** | `sources/artifact_descriptions/Đêm Trời Hé Lộ.md` | Artifact Description | High | Khaenri'ah, Rotwang, Sky Shell, bầu trời giả | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp cho cỗ máy của Rotwang. |
| **AR-0002** | `sources/artifact_descriptions/Ảo Tưởng Vụn Vỡ Trong Bóng Tối.md` | Artifact Description | High | Unreleased v6.6 artifact lore, Fragment of Shattered Dreams | file-level | `../synthesis/unverified-lore-register.md` | Đã dán nhãn unreleased/unconfirmed set. |
| **AR-0003** | `sources/artifact_descriptions/Kỵ Sĩ Đạo Nhuốm Máu.md` | Artifact Description | High | Cataclysm, Khaenri'ah, Abyss Order | file-level | `../synthesis/timeline-continuity.md` | Hữu ích cho bối cảnh thảm họa 500 năm. |
| **AR-0004** | `sources/artifact_descriptions/Thợ Săn Marechaussee.md` | Artifact Description | High | Lực lượng Marechaussee, Fontaine cổ | file-level | (Nhiều trang entities/) | Hữu ích cho worldbuilding Fontaine. |
| **BK-0001** | `sources/book_texts/Giấc Mơ Tan Vỡ.md` | Book | High | Ba nữ thần mặt trăng Aria, Sonnet, Canon | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp xác nhận tên 3 Moon. |
| **BK-0002** | `sources/book_texts/Kho Tàng Vương Quốc Đêm Trắng.md` | Book | High | Phanes, Primordial One, cuộc chiến 40 năm | file-level | `../synthesis/timeline-continuity.md` | Nguồn sơ cấp chứng minh cuộc chiến 40 năm. |
| **BK-0003** | `sources/book_texts/nod-krai/Hymns of the Far North.md` | Book | High | Thần thoại Nod-Krai, Takoja Ianikuinen, Kuutar | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp về truyền thuyết cực bắc. |
| **BK-0004** | `sources/book_texts/Đạo Tặc Reed Miller Huyền Thoại.md` | Book | High | Sampo Mill, di vật trăng lạnh | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp chứng minh Sampo Mill là myth. |
| **VL-0001** | `sources/voice_lines/characters/Kaeya.md` | Voice Lines | High | Giọng nói, xưng hô, câu chuyện của Kaeya | file-level | `../synthesis/headcanon-fanon-policy.md` | Dùng tốt cho character voice và OOC. |
| **EN-0001** | `entities/Timeline.md` | Entity | Medium | Dòng thời gian lịch sử vĩ mô Teyvat | file-level | `../synthesis/timeline-continuity.md` | Tài liệu chỉ dẫn timeline, trung lập. |
| **EN-0002** | `entities/dragon_sovereigns/Overview.md` | Entity | Medium | Bảy Long Vương, Phanes, Apep, Nibelung | file-level | `../synthesis/power-system-governance.md` | Tổng hợp có trích dẫn nguồn sơ cấp. |
| **TP-0001** | `topics/nod-krai/mythology.md` | Topic | Low/Medium | Thần thoại Nod-Krai, 3 mặt trăng, Kuuvahki | file-level | `../synthesis/unverified-lore-register.md` | Chứa nhiều phân tích chủ quan. |
| **TP-0002** | `topics/nod-krai/Nod_Krai.md` (hoặc tương đương) | Topic | Low/Medium | Tóm tắt Acts II-VII, version 6.1-6.7 | file-level | `../synthesis/unverified-lore-register.md` | Chứa cốt truyện lý thuyết chưa có thoại thô. |

## 2b. Pass 4 VLAQ File-Level Candidates

Files physically inspected in Pass 4. These are file-level source candidates ready for future claim mapping.

> **Pass 4.1 Note:** All IDs below were assigned based on physical inspection. However, some files were only partially read (first 40 lines). Full claim-mapping requires deep read before `primary_source_found` can be confirmed for all sub-claims. IDs remain valid as file-level candidates.
>
> **Pass 5 Update:** Files marked `deep_read_confirmed` have been fully read in Pass 5 with direct evidence found. Files marked `direct inspected` from Pass 4 remain valid. See `wiki/research/pass-5-claim-source-matrix.md` for current claim recommendations.

| Source ID | Path | Source type | Reliability | Main topics | Indexed level | Used by pages | Notes |
| --------- | ---- | ----------- | ----------- | ----------- | ------------- | ------------- | ----- |
| **VLAQ-INAZUMA-001** | `sources/voice_lines/archon_quests/Thiên Thủ Bách Nhãn, Thiên Hạ Nhân Gian/Nguyện Vọng.md` | Archon Quest Voice Lines | High | Gnosis handoff, Ei/puppet distinction, Scaramouche, Yae Miko, Celestia | file-level (direct inspected) | CLM-017, CLM-010 | Directly confirms Ei created puppet, gave Gnosis to Yae, severed Celestia ties |
| **VLAQ-INAZUMA-002** | `sources/voice_lines/archon_quests/Thiên Thủ Bách Nhãn, Thiên Hạ Nhân Gian/Trăm Mắt Nghìn Tay.md` | Archon Quest Voice Lines | High | Plane of Euthymia, Signora death, Musou no Hitotachi, Kazuha | file-level (direct inspected) | CLM-017 | Plane of Euthymia entry confirmed; Signora execution scene |
| **VLAQ-SUMERU-001** | `sources/voice_lines/archon_quests/Akasha Rung Động, Kiếp Hỏa Dâng Trào/Đích Đến Của Con Thuyền Ý Thức.md` | Archon Quest Voice Lines | High | Nahida=Kusanali, Rukkhadevata, Akasha design, Cây Thế Giới | file-level (partial inspected — first 40 lines) | CLM-016 (identity only) | Quest description confirms Nahida=Kusanali and Rukkhadevata Akasha design. Candidate only for memory erasure sub-claim until deep read. |
| **VLAQ-FONTAINE-001** | `sources/voice_lines/archon_quests/Vũ Điệu Của Tội Lỗi/Ngày Phán Quyết.md` | Archon Quest Voice Lines | High | Furina role, Fontaine prophecy, emotional breakdown, disaster | file-level (direct inspected) | CLM-014 (Furina/prophecy) | Directly shows Furina's crisis and prophecy aftermath |
| **VLAQ-FONTAINE-002** | `sources/voice_lines/archon_quests/Như Làn Mưa Nhẹ Không Rõ Nguyên Nhân/Khi Mọi Thứ Quay Về Với Nước.md` | Archon Quest Voice Lines | High | Neuvillette judgment, Fontaine trial, Furina/Childe/Navia | file-level (direct inspected) | CLM-014 (Neuvillette/trial) | Neuvillette as judge confirmed; trial proceedings |
| **VLAQ-TRAVELER-001** | `sources/voice_lines/archon_quests/Chúng Ta Ắt Sẽ Trùng Phùng/Linh Hồn Ngăn Cách.md` | Archon Quest Voice Lines | High | Dainsleif, Abyss Order, sibling encounter, Abyss princess/prince | file-level (deep_read_confirmed) | CLM-018 | Direct sibling encounter; sibling addressed as royalty; Dainsleif identity; sibling motivation |
| **VLAQ-TRAVELER-002** | `sources/voice_lines/archon_quests/Caribert/Tương Phùng Như Vận Mệnh.md` | Archon Quest Voice Lines | High | Kaeya, Dainsleif, Alberich surname, Loom of Fate | file-level (deep_read_confirmed) | CLM-018 | Alberich=Abyss founder; sibling mentioned Loom of Fate centuries ago; Kaeya descendant link |
| **VLAQ-WANDERER-001** | `sources/voice_lines/archon_quests/Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` | Archon Quest Voice Lines | High | Kabukimono=Scaramouche, Irminsul rewrite execution, Descender concept, Traveler memory exception, Nahida | file-level (deep_read_confirmed) | CLM-015, CLM-011 | Full file read: Irminsul rewrite in real-time; Traveler exception direct; Descender concept strong_indirect; Third Descender identity not stated |
| **VLAQ-SUMERU-002** | `sources/voice_lines/archon_quests/Akasha Rung Động, Kiếp Hỏa Dâng Trào/Mời Uống Ly Rượu Mừng Chiến Thắng.md` | Archon Quest Voice Lines | High | Rukkhadevata memory erasure, Traveler memory exception, Gnosis exchange, Scaramouche/Wanderer setup, Nahida arc resolution | file-level (deep_read_confirmed) | CLM-016, CLM-015 | Direct evidence: Traveler sole rememberer of Rukkhadevata; Gnosis traded to Dottore; Scaramouche hidden; forbidden knowledge arc resolved |
| **VLAQ-FONTAINE-003** | `sources/voice_lines/archon_quests/Vũ Điệu Của Tội Lỗi/Vở Kịch Của Sóng Đen Và Sương Trắng.md` | Archon Quest Voice Lines | High | Focalors sacrifice, Oratrice true purpose, Neuvillette authority restoration, Gnosis merged, Furina/Focalors split, prophecy resolution | file-level (deep_read_confirmed) | CLM-014 | All CLM-014 sub-claims confirmed direct: sacrifice, Oratrice, Neuvillette power, Gnosis, identity split, prophecy |

## 3. Indexing TODOs
- **[ ] Indexing Weapon Stories (WS-xxxx):** Tiếp tục lập chỉ mục chi tiết cho 222 file vũ khí còn lại.
- **[ ] Indexing Artifact Descriptions (AR-xxxx):** Tiếp tục lập chỉ mục chi tiết cho 57 file di vật còn lại.
- **[ ] Indexing Voice Lines (VL-xxxx):** Lập chỉ mục chi tiết cho các file thoại nhân vật của Diluc, Zhongli, Neuvillette, Furina.
- **[ ] Ingestion & Indexing of Missing Voice Lines (VL-xxxx):** Skirk voice line file does not exist locally. VL-0002 was a placeholder TODO and is NOT a valid source ID. Status: `source_missing`. No Skirk voice file exists in workspace. Do not treat VL-0002 as a usable source reference.
