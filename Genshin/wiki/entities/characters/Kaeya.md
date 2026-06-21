---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
tags: ["character", "mondstadt", "băng"]
related_pages: ["./Diluc.md", "./Jean.md", "./Lisa.md"]
---

# Kaeya

## Audit Status

* audit_level: Level 2 OOC Risk Audit
* source_status: mixed
* primary_sources_found: `sources/voice_lines/characters/Kaeya.md`, `sources/character_stories/Kaeya.md` (`CS-KAEYA-001`)
* indirect_sources: `entities/character_intelligence/Kaeya.md`
* missing_sources: hội thoại nhiệm vụ (quest dialogue) thô cho các chi tiết ngoài phạm vi `CS-KAEYA-001`
* unresolved_issues: `CS-KAEYA-001` chỉ là hồ sơ provenance/API extraction index, không phải transcript đầy đủ; các chi tiết rộng về sứ mệnh Khaenri'ah vẫn cần xử lý thận trọng.

## Summary

Kaeya Alberich là Đội trưởng Đội Kỵ Binh của Đội Kỵ Sĩ Tây Phong. Anh là một kiếm sĩ hệ Băng có phong cách lịch thiệp, lôi cuốn nhưng đầy bí ẩn, thường thu thập thông tin qua các quan hệ xã hội và bối cảnh quán rượu ở Mondstadt. Kaeya có nguồn gốc liên quan đến Khaenri'ah, được bỏ lại trước Tửu Trang Dawn khi còn nhỏ và được gia tộc Ragnvindr nhận nuôi. Sau cái chết của cha nuôi Crepus, mâu thuẫn thân phận giữa Mondstadt và Khaenri'ah khiến mối quan hệ giữa anh và anh trai nuôi Diluc rạn nứt sâu sắc.

### Source Coverage Notes

* Ragnvindr adoption:
  - source_status: primary_source_found
  - source_ids:
    * CS-KAEYA-001
  - evidence_ids:
    * CS-KAEYA-001-E01
* Khaenri'ah-related concealed past / burden:
  - source_status: partial_support_only
  - source_ids:
    * CS-KAEYA-001
  - evidence_ids:
    * CS-KAEYA-001-E05
  - notes: "CS-KAEYA-001-E05 supports concealed past and Khaenri'ah-related burden, but not broad mission details."
* Diluc / Crepus historical rupture:
  - source_status: supporting_source
  - source_ids:
    * CS-KAEYA-001
  - evidence_ids:
    * CS-KAEYA-001-E06

## Canon Identity

| Field          | Value | Label | Source | Source status |
| -------------- | ----- | ----- | ------ | ------------- |
| Name           | Kaeya Alberich | CANON | `sources/voice_lines/characters/Kaeya.md` | primary_source_found |
| Region         | Mondstadt (Nguồn gốc: Khaenri'ah) | CANON | `sources/voice_lines/characters/Kaeya.md` | primary_source_found |
| Faction        | Đội Kỵ Sĩ Tây Phong | CANON | `sources/voice_lines/characters/Kaeya.md` | primary_source_found |
| Role           | Đội trưởng Đội Kỵ Binh | CANON | `sources/voice_lines/characters/Kaeya.md`; `CS-KAEYA-001` (`CS-KAEYA-001-E01`) | primary_source_found |
| Vision / Power | Băng (Cryo) | CANON | `sources/voice_lines/characters/Kaeya.md` | primary_source_found |

Vision acquisition context:
- source_status: primary_source_found
- source_ids:
  * CS-KAEYA-001
- evidence_ids:
  * CS-KAEYA-001-E07
- notes: Vision acquisition context is supported by the verified Vision evidence field; the table row above only records Cryo power.

## Canon Personality

* [CHAR-KAEYA-TRAIT-001] Kaeya thường thu thập thông tin qua bối cảnh quán rượu/quan hệ xã hội và dùng chiến thuật thực dụng để xử lý tình huống khi cần.
  * label: CANON
  * source: `entities/character_intelligence/Kaeya.md#L33`
  - source_status: primary_source_found
  - source_ids:
    * CS-KAEYA-001
  - evidence_ids:
    * CS-KAEYA-001-E02
    * CS-KAEYA-001-E03
    * CS-KAEYA-001-E04
  - notes: Wording narrowed to tavern/social information gathering and pragmatic strategy; do not portray recklessness as his default personality.
  - confidence: high
* [CHAR-KAEYA-TRAIT-002] Kaeya cưng chiều Klee và bày các trò nghịch ngợm trốn tránh sự kiểm tra của Jean cho cô bé.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaeya.md` ("Về Klee")
  - source_status: primary_source_found
  - confidence: high
* [CHAR-KAEYA-TRAIT-003] Kaeya tôn trọng Jean Gunnhildr và nhắc nhở Nhà Lữ Hành hãy hỗ trợ Jean nhiều hơn.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaeya.md` ("Về Jean")
  - source_status: primary_source_found
  - confidence: high
* [CHAR-KAEYA-TRAIT-004] Kaeya coi Diluc là kẻ nhàm chán ngoài mặt nhưng giữ sự quan tâm thầm kín về hành vi độc lập của anh.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaeya.md` ("Về Diluc")
  - source_status: primary_source_found
  - confidence: high
* [CHAR-KAEYA-TRAIT-005] Kaeya sợ Lisa nổi giận khi trả sách thư viện quá hạn vì đã từng bị lôi điện trừng phạt làm tê tay.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaeya.md` ("Về Lisa")
  - source_status: primary_source_found
  - confidence: high

## Strongly Implied Traits

* [CHAR-KAEYA-IMPLIED-001] Kaeya che giấu quá khứ liên quan đến Khaenri'ah và mang gánh nặng nội tâm giữa Mondstadt với nguồn gốc Alberich/Khaenri'ah.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Kaeya.md#L11`
  - source_status: partial_support_only
  - source_ids:
    * CS-KAEYA-001
  - evidence_ids:
    * CS-KAEYA-001-E05
  - notes: "CS-KAEYA-001-E05 supports concealed past and Khaenri'ah-related burden, but not broad mission details."
  - confidence: medium
* [CHAR-KAEYA-IMPLIED-002] Đeo bịt mắt phải để che giấu đặc điểm đồng tử hình chữ thập đặc trưng của dòng máu Khaenri'ah.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Kaeya.md#L32`
  - source_status: indirect_source_only
  - confidence: medium

## Theory / Interpretation

* [CHAR-KAEYA-THEORY-001] Nỗi sợ bị bỏ rơi cực đoan (Abandonment phobia) do vết thương lòng từ cha ruột và Diluc.
  * label: THEORY / HEADCANON
  * source: `entities/character_intelligence/Kaeya.md#L45`
  - source_status: indirect_source_only
  - confidence: low
  - notes: Suy luận tâm lý học sâu từ cộng đồng viết fanfic, không có trích dẫn thoại game chứng minh nỗi sợ này bộc lộ dưới dạng hội chứng cực đoan.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source | Notes |
| ----------------- | ---- | ----------- | ---------- | ------ | ----- |
| Thường xuyên xoay đồng xu Mora | Thấp | Dùng làm hành vi phụ họa nhỏ khi đang suy nghĩ hoặc chuẩn bị nói dối. | Không dùng làm bằng chứng chứng minh anh là kẻ nghiện cờ bạc vô lý. | `entities/character_intelligence/Kaeya.md#L92` | Lựa chọn low-risk tạo màu sắc cho nhân vật. |
| Hay lui tới quán rượu Cat's Tail | Trung bình | Chỉ dùng trong bối cảnh ngẫu nhiên đi qua hoặc gặp gỡ NPC ngẫu nhiên. | **CẤM** viết Cat's Tail là địa điểm hangout chính thức của anh (mâu thuẫn trực tiếp với sở thích rượu bồ công anh tại Angel's Share). | Báo cáo lỗi trong `contradiction-register.md#CON-0003` | Angel's Share là địa điểm chính xác. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
| -------- | -------- | --------------- | ------------- | -------------- |
| **Kaeya sụp đổ bi lụy** | High | Biến Kaeya thành kẻ yếu đuối, khóc lóc về quá khứ bị bỏ rơi hoặc cầu xin Diluc tha thứ. | Giữ hình tượng Kaeya kiên cường, giấu nỗi đau dưới lớp mặt nạ cợt nhả, luôn hành xử vô cùng lý trí. | `wiki/synthesis/ooc-risk-index.md` |
| **Thù ghét Diluc cực đoan** | High | Phá vỡ mối liên kết thấu hiểu ngầm và sự bảo vệ từ xa giữa hai anh em. | Kaeya trêu chọc Diluc ngoài mặt nhưng tôn trọng và âm thầm hỗ trợ thông tin tình báo. | `wiki/synthesis/headcanon-fanon-policy.md` |

## Voice Guide

* Formality: Lịch thiệp, nho nhã, có giọng điệu lả lướt và quyến rũ.
* Sentence rhythm: Nhịp điệu thong thả, vừa phải, hay ngắt nghỉ lửng lơ bằng nụ cười nhẹ.
* Common tone: Cợt nhả, trêu chọc nửa đùa nửa thật để thăm dò đối phương.
* Humor style: Châm biếm, tự giễu, hài hước quyến rũ.
* Emotional restraint: Rất cao, luôn giấu kín tâm sự thật sau nụ cười.
* Should avoid: Nói năng lúng túng, bộc lộ sự hoảng loạn hoặc nói quá nhiều về bản thân trước người lạ.
* Source: `sources/voice_lines/characters/Kaeya.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
| ----------------- | ------------ | ----- | ------ | ------------- | ----- |
| Diluc Ragnvindr | Anh em nuôi / Quan hệ phức tạp ngoài lạnh trong ấm | CANON | `sources/voice_lines/characters/Kaeya.md` ("Về Diluc"); `CS-KAEYA-001` (`CS-KAEYA-001-E06`) | primary_source_found | Voice line supports present attitude; `CS-KAEYA-001-E06` is supporting_source for historical rupture around Crepus's death. |
| Jean Gunnhildr | Đội trưởng và cánh tay tình báo đắc lực | CANON | `sources/voice_lines/characters/Kaeya.md` ("Về Jean") | primary_source_found | Tôn trọng và phối hợp bảo vệ Mondstadt. |
| Klee | Em gái nhỏ cưng chiều | CANON | `sources/voice_lines/characters/Kaeya.md` ("Về Klee") | primary_source_found | Bao che các trò nghịch ngợm của cô bé. |

## Genre Usage Notes

### Canon-compliant
Sử dụng các nhiệm vụ tình báo, các âm mưu ngầm của Fatui/Abyss làm bối cảnh để Kaeya bộc lộ trí tuệ chiến thuật và tính cách lôi cuốn.

### AU
Có thể khai thác sâu dòng máu Khaenri'ah nếu đặt Kaeya lớn lên trong phe đối địch (như Fatui hoặc Hội Phục Hưng).

### Romance
Giữ sự dè dặt, tự ti ngầm của Kaeya về một thân phận "kẻ nói dối" không xứng đáng có tình yêu chân thật.

### Mystery / Detective
Hoàn hảo cho vai trò thám tử thu thập manh mối từ các tin đồn tại quán rượu.

### Slice of life
Các buổi tối thưởng rượu Death After Noon tại Angel's Share và trêu chọc Diluc.

### Dark fantasy
Khai thác vết nhơ ăn mòn của Khaenri'ah trên cơ thể (mắt phải).

### OC-insert
OC có thể bị Kaeya đưa vào tầm ngắm tình báo và thử thách lòng trung thành trước khi được chấp nhận.

## Safe Uses
* Viết Kaeya uống Death After Noon tại Angel's Share.
* Viết Kaeya bao che cho Klee nổ cá.
* Viết Kaeya gửi tin mật giúp đỡ Diluc trong im lặng.

## Unsafe Uses
* Viết Kaeya khóc lóc bi lụy xin lỗi Diluc.
* Viết Kaeya phản bội Mondstadt đầu hàng Giáo Đoàn Vực Sâu một cách mù quáng.
* Viết Kaeya là khách quen sinh hoạt hằng ngày tại Cat's Tail.

## Sources

* Primary sources: `sources/voice_lines/characters/Kaeya.md`, `sources/character_stories/Kaeya.md` (`CS-KAEYA-001`)
* Indirect sources: `entities/character_intelligence/Kaeya.md`
* Analysis sources: `wiki/synthesis/headcanon-fanon-policy.md`, `wiki/synthesis/ooc-risk-index.md`
* Missing sources: raw quest dialogue outside the scoped `CS-KAEYA-001` character-story provenance record

## Related Pages

* Related characters: [Diluc](./Diluc.md), [Jean](./Jean.md), [Lisa](./Lisa.md)
* Related factions: `entities/organizations/Knights_of_Favonius.md`
* Related regions: `entities/regions/Mondstadt.md`
* Related powers: `synthesis/power-system-governance.md`
* Related events: `entities/events/Cataclysm.md`
* Related concepts: `entities/concepts/Khaenriah.md`

## Open Questions

* [ ] Dấu vết cụ thể ở mắt phải của Kaeya là gì? (Chờ game chính thức tiết lộ).
