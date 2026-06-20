---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-20
source_level: mixed
tags: ["character", "mondstadt", "hỏa"]
related_pages: ["./Kaeya.md", "./Jean.md", "./Lisa.md"]
---

# Diluc

## Audit Status

* audit_level: Level 2 OOC Risk Audit
* source_status: mixed
* primary_sources_found: `sources/voice_lines/characters/Diluc.md`
* indirect_sources: `entities/character_intelligence/Diluc.md`
* missing_sources: `sources/character_stories/` (không tồn tại trong workspace)
* unresolved_issues: Thiếu tệp tin câu chuyện nhân vật (character stories) thô để xác minh trực tiếp giai đoạn 3 năm viễn chinh ngoài Mondstadt và tổ chức tình báo bí mật cứu anh.

## Summary

Diluc Ragnvindr là cựu Đội trưởng Đội Kỵ Binh của Đội Kỵ Sĩ Tây Phong, hiện tại là chủ nhân Tửu Trang Dawn - doanh nghiệp rượu lớn nhất Mondstadt. Anh hoạt động độc lập trong bóng đêm dưới danh hiệu "Anh Hùng Bóng Đêm" để bảo vệ Mondstadt khỏi các hiểm họa từ Fatui và Vực Sâu. Diluc sở hữu Pyro Vision và dùng trọng kiếm để chiến đấu. Mặc dù sở hữu tửu trang, bản thân anh rất ghét rượu và chỉ uống nước nho. Quá khứ của anh mang vết thương lòng sâu sắc từ cái chết của cha mình là Crepus và sự thất vọng đối với tính hành chính quan liêu của Đội Kỵ Sĩ Tây Phong.

## Canon Identity

| Field          | Value | Label | Source | Source status |
| -------------- | ----- | ----- | ------ | ------------- |
| Name           | Diluc Ragnvindr | CANON | `sources/voice_lines/characters/Diluc.md` | primary_source_found |
| Region         | Mondstadt | CANON | `sources/voice_lines/characters/Diluc.md` | primary_source_found |
| Faction        | Tửu Trang Dawn (Cựu thành viên Đội Kỵ Sĩ Tây Phong) | CANON | `sources/voice_lines/characters/Diluc.md` | primary_source_found |
| Role           | Chủ Tửu Trang / Anh Hùng Bóng Đêm | CANON | `sources/voice_lines/characters/Diluc.md` | primary_source_found |
| Vision / Power | Hỏa (Pyro) | CANON | `sources/voice_lines/characters/Diluc.md` | primary_source_found |

## Canon Personality

* [CHAR-DILUC-TRAIT-001] Diluc ghét rượu vang và các chất cồn khác, chỉ uống nước nho tươi nguyên chất.
  * label: CANON
  * source: `entities/character_intelligence/Diluc.md#L33`
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: medium
* [CHAR-DILUC-TRAIT-002] Diluc thường xuyên đóng vai trò là bartender tại quán rượu Quà Tặng Của Thiên Sứ để thu thập thông tin tình báo.
  * label: CANON
  * source: `sources/voice_lines/characters/Diluc.md` ("Có gì muốn chia sẻ không")
  - source_status: primary_source_found
  - confidence: high
* [CHAR-DILUC-TRAIT-003] Diluc coi những việc vặt vãnh hành chính vô nghĩa là kẻ thù lớn nhất cản trở Jean Gunnhildr thực thi nhiệm vụ thực sự.
  * label: CANON
  * source: `sources/voice_lines/characters/Diluc.md` ("Về Jean")
  - source_status: primary_source_found
  - confidence: high
* [CHAR-DILUC-TRAIT-004] Diluc coi Lisa là một trong những người đáng tin cậy nhất trong Đội Kỵ Sĩ, nếu cô ấy chịu nghiêm túc làm việc.
  * label: CANON
  * source: `sources/voice_lines/characters/Diluc.md` ("Về Lisa")
  - source_status: primary_source_found
  - confidence: high
* [CHAR-DILUC-TRAIT-005] Diluc khuyên Nhà Lữ Hành chỉ nên tin một nửa những gì Kaeya Alberich nói.
  * label: CANON
  * source: `sources/voice_lines/characters/Diluc.md` ("Về Kaeya")
  - source_status: primary_source_found
  - confidence: high

## Strongly Implied Traits

* [CHAR-DILUC-IMPLIED-001] Diluc giữ sự tôn trọng ngầm đối với Kaeya và âm thầm phối hợp thông tin tình báo cùng anh trong các hoạt động bảo vệ Mondstadt.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Diluc.md#L77`
  - source_status: indirect_source_only
  - confidence: high

## Theory / Interpretation

* [CHAR-DILUC-THEORY-001] Sự cô độc tự nguyện (Self-imposed Isolation) để bảo vệ những người xung quanh khỏi mối nguy hiểm từ các hoạt động ngầm.
  * label: THEORY
  * source: `entities/character_intelligence/Diluc.md#L49`
  - source_status: indirect_source_only
  - confidence: medium

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source | Notes |
| ----------------- | ---- | ----------- | ---------- | ------ | ----- |
| Thích chơi cờ vua một mình | Thấp | Dùng làm chi tiết sinh hoạt đời thường tại Tửu Trang Dawn. | Không dùng làm plot chính. | `entities/character_intelligence/Diluc.md#L90` | Headcanon vô hại. |
| Chấn thương tâm lý sợ lửa (Fire trauma) | Rất Cao | Không được dùng. | **CẤM** viết Diluc sợ lửa, hoảng loạn trước lửa (mâu thuẫn trực tiếp với Pyro Vision và phong cách chiến đấu của anh). | Báo cáo lỗi trong `contradiction-register.md#CON-0004` | Diluc sở hữu Pyro Vision chiến đấu bình thường. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
| -------- | -------- | --------------- | ------------- | -------------- |
| **Diluc nóng nảy giận dữ bạo lực** | High | Biến Diluc thành kẻ suốt ngày la hét, thù ghét Kaeya một cách mù quáng và bạo lực. | Diluc thực tế rất điềm tĩnh, hành động trong im lặng, giữ sự tôn trọng ngầm đối với Kaeya. | `wiki/synthesis/ooc-risk-index.md` |
| **Bám đuôi Jean lãng mạn vô lý** | Medium | Phá hỏng phong thái quý tộc lạnh lùng, stoic chuẩn mực của anh. | Giữ khoảng cách công việc lịch thiệp, tôn trọng tinh thần trách nhiệm của Jean. | `entities/character_intelligence/Diluc.md#L126` | Tôn trọng di sản gia tộc kỵ sĩ. |

## Voice Guide

* Formality: Trang trọng, quý tộc cổ điển nhưng ngắn gọn, trực diện.
* Sentence rhythm: Nhịp nói nhanh, quyết đoán, dứt khoát, không dùng từ sáo rỗng.
* Common tone: Lạnh lùng, nghiêm nghị, xa cách.
* Humor style: Hầu như không có, đôi khi mang tính châm biếm khô khan (dry/deadpan).
* Emotional restraint: Cực kỳ cao, biểu cảm phẳng lặng vững chãi.
* Should avoid: Nói năng dông dài, la hét giận dữ mất kiểm soát, nói đùa cợt nhả.
* Source: `sources/voice_lines/characters/Diluc.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
| ----------------- | ------------ | ----- | ------ | ------------- | ----- |
| Kaeya Alberich | Anh em nuôi / Quan hệ phức tạp | CANON | `sources/voice_lines/characters/Diluc.md` ("Về Kaeya") | primary_source_found | Cãi cọ ngoài mặt nhưng ngầm bảo vệ và phối hợp tình báo. |
| Jean Gunnhildr | Đồng nghiệp cũ / Tôn trọng năng lực | CANON | `sources/voice_lines/characters/Diluc.md` ("Về Jean") | primary_source_found | Đánh giá cao tinh thần trách nhiệm của Jean nhưng tiếc vì Đội Kỵ Sĩ kém hiệu quả. |
| Crepus | Cha ruột / Nguồn gốc ý chí bảo hộ | CANON | `entities/character_intelligence/Diluc.md#L30` | indirect_source_only (needs_primary_source) | Crepus hy sinh vì Delusion, Diluc giải thoát cho cha, kế thừa ý chí bảo vệ Mondstadt. |

## Genre Usage Notes

### Canon-compliant
Các cuộc tuần tra ngầm trong đêm tiêu tốn sức mạnh nguyên tố, đối phó với âm mưu của Abyss Mage hoặc Fatui Skirmisher.

### AU
Khai thác thời kỳ viễn chinh 3 năm săn lùng Fatui ở các quốc gia khác.

### Romance
Hành vi bảo vệ thầm lặng, gửi các loại nước nho cao cấp thông qua gia nhân, giữ khoảng cách tôn trọng.

### Mystery / Detective
Điều tra mạng lưới buôn lậu hoặc các kế hoạch ngầm của Fatui.

### Slice of life
Quản lý sổ sách kinh doanh rượu, dạo mát Tửu Trang Dawn buổi sớm.

### Dark fantasy
Tác hại phản phệ của Delusion trên cơ thể (triệu chứng kiệt sức).

### OC-insert
OC là khách hàng hoặc thành viên mạng lưới tình báo ngầm, phải tuân thủ kỷ luật nghiêm ngặt của Diluc.

## Safe Uses
* Viết Diluc uống nước nho tươi tại Quà Tặng Của Thiên Sứ.
* Viết Diluc dùng Pyro chiến đấu dứt khoát trong đêm.
* Viết Diluc thở dài chê trách sự chậm chạp của Đội Kỵ Sĩ hành chính.

## Unsafe Uses
* Viết Diluc sợ hãi lửa, hoảng loạn trước bếp lửa lò sưởi.
* Viết Diluc say rượu vang hoặc trốn việc đi nhậu.
* Viết Diluc nổi giận đập phá đồ đạc hoặc la hét quát mắng cấp dưới vô cớ.

## Sources

* Primary sources: `sources/voice_lines/characters/Diluc.md`
* Indirect sources: `entities/character_intelligence/Diluc.md`
* Analysis sources: `wiki/synthesis/headcanon-fanon-policy.md`, `wiki/synthesis/ooc-risk-index.md`
* Missing sources: `sources/character_stories/`

## Related Pages

* Related characters: [Kaeya](./Kaeya.md), [Jean](./Jean.md), [Lisa](./Lisa.md)
* Related factions: `entities/organizations/Knights_of_Favonius.md`
* Related regions: `entities/regions/Mondstadt.md`
* Related powers: `synthesis/power-system-governance.md`
* Related events: `entities/events/Cataclysm.md`
* Related concepts: `entities/concepts/Delusion.md`

## Open Questions

* [ ] Danh tính thực tế của mạng lưới tình báo ngầm ngoài Mondstadt đã cứu Diluc? (Chờ game cập nhật).
