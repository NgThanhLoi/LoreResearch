---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "thảo"]
related_pages: ["./Alhaitham.md", "./Nahida.md"]
---

# Kaveh

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Kaveh.md` |
| indirect_sources | `entities/character_intelligence/Kaveh.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết Palace of Alcazarzaray, nợ nần, bi kịch gia đình, và quá trình sáng tạo. |

## Summary

Kaveh là kiến trúc sư tài năng tại Sumeru, sở hữu Thảo Vision. Anh nổi tiếng với kiệt tác Palace of Alcazarzaray nhưng hiện đang mắc nợ nặng nề và phải ở nhờ nhà Alhaitham. Anh có tính cách lý tưởng, nhạy cảm, đam mê nghệ thuật và kiến trúc, thường xung đột triết lý với Alhaitham về giá trị của cảm xúc và lý tưởng.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, nghề nghiệp kiến trúc sư, Dendro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách lý tưởng, nhạy cảm, đam mê kiến trúc, tranh luận với Alhaitham.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với Alhaitham (roommate phức tạp), Dori (nợ), và nhiều nhân vật khác.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Dendro Vision. Chi tiết Mehrak companion cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Palace of Alcazarzaray, nợ, bi kịch gia đình cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận kiến trúc sư, liên kết Kshahrewar.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Palace of Alcazarzaray, lý do nợ, bi kịch gia đình cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Kaveh | CANON | `sources/voice_lines/characters/Kaveh.md` | primary_source_found |
| Region | Sumeru | CANON | `sources/voice_lines/characters/Kaveh.md` | primary_source_found |
| Faction | Giáo Viện Sumeru (Kshahrewar) | CANON | `sources/voice_lines/characters/Kaveh.md` | primary_source_found |
| Role | Kiến trúc sư | CANON | `sources/voice_lines/characters/Kaveh.md` | primary_source_found |
| Vision / Power | Thảo (Dendro) | CANON | `sources/voice_lines/characters/Kaveh.md` | primary_source_found |

## Canon Personality

* [CHAR-KAVEH-TRAIT-001] Kaveh là kiến trúc sư đam mê nghệ thuật và vẻ đẹp, coi kiến trúc là biểu hiện cao nhất của lý tưởng con người.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaveh.md` ("Nói chuyện phiếm - Kiến trúc")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-KAVEH-TRAIT-002] Kaveh nhạy cảm với cảm xúc, lý tưởng hóa, và thường xung đột triết lý với Alhaitham về giá trị của cảm xúc vs logic.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaveh.md` ("Về Alhaitham...", "Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-KAVEH-TRAIT-003] Kaveh hiện đang mắc nợ và ở nhờ nhà Alhaitham, tạo nên mối quan hệ phức tạp giữa hai người.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaveh.md` ("Về Alhaitham...", "Nói chuyện phiếm - Nợ")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-KAVEH-TRAIT-004] Kaveh có xu hướng uống rượu khi stress và dễ say, bộc lộ cảm xúc mạnh khi trong trạng thái này.
  * label: CANON
  * source: `sources/voice_lines/characters/Kaveh.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-KAVEH-IMPLIED-001] Kaveh mang nỗi đau liên quan đến gia đình (có thể liên quan đến cha) và coi Palace of Alcazarzaray vừa là niềm tự hào vừa là nguồn gốc nợ nần.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Kaveh.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý grief/family pain nhưng không chi tiết cụ thể.

## Theory / Interpretation

* [CHAR-KAVEH-THEORY-001] Palace of Alcazarzaray có thể là nguyên nhân chính dẫn đến nợ nần của Kaveh, do chi phí xây dựng vượt ngân sách hoặc bi kịch liên quan.
  * label: THEORY
  * source: `entities/character_intelligence/Kaveh.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp mô tả chính xác lý do nợ trong workspace.
  * banned_overuse: Không viết chi tiết lý do nợ cụ thể mà không có nguồn.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Kaveh và Alhaitham là couple lãng mạn canon | Trung bình | Có thể viết romance trong AU với tag rõ ràng. | Cấm khẳng định couple canon trong canon-compliant. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines xác nhận roommate và mối quan hệ phức tạp, không phải romance. |
| Kaveh chỉ là comic debt character | Trung bình | Dùng yếu tố nợ hài hước nhưng thể hiện đam mê và chiều sâu. | Cấm giảm anh thành debt gag only. | `wiki/synthesis/headcanon-fanon-policy.md` | Anh là kiến trúc sư tài năng với lý tưởng sâu sắc. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Giảm thành comic debt roommate | High | Bỏ qua đam mê kiến trúc, lý tưởng, và chiều sâu triết học. | Viết anh nợ nhưng CÒN đam mê, lý tưởng, và talent kiến trúc. | `sources/voice_lines/characters/Kaveh.md` |
| Over-romanticize/over-antagonize Alhaitham dynamic | Medium | Voice lines chỉ xác nhận roommate phức tạp, không phải romance hay hatred. | Giữ ở mức roommate với triết lý đối lập, source-status explicit. | `sources/voice_lines/characters/Kaveh.md` |
| Overclaim Palace of Alcazarzaray details | Medium | Không có nguồn sơ cấp chi tiết về palace trong workspace. | Đề cập palace là kiệt tác, giữ chi tiết nợ trong Theory. | `entities/character_intelligence/Kaveh.md` |

## Voice Guide

- Formality: Trung bình, lịch sự nhưng dễ bùng cảm xúc.
- Sentence rhythm: Dài khi đam mê, ngắn cộc khi bực bội, đôi khi dramatic.
- Common tone: Đam mê, lý tưởng, đôi khi bực bội hoặc chua chát.
- Humor style: Tự giễu chua chát, phản ứng dramatic trước tình huống.
- Emotional restraint: Thấp — dễ bộc lộ cảm xúc, dễ xúc động.
- Vocabulary habits: Thuật ngữ kiến trúc/nghệ thuật, ẩn dụ thẩm mỹ.
- What they avoid saying: Thừa nhận Alhaitham đúng, chấp nhận thực tế phũ phàng dễ dàng.
- Should avoid: Nói năng lạnh lùng logic hoặc vô cảm, mất đi tính cách nhạy cảm.
- Source: `sources/voice_lines/characters/Kaveh.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Alhaitham | Bạn cùng nhà / Đối thủ triết học | CANON | `sources/voice_lines/characters/Kaveh.md` ("Về Alhaitham...") | primary_source_found | Xung đột triết lý liên tục, ở nhờ nhà Alhaitham, mối quan hệ phức tạp. |
| Dori | Chủ nợ | CANON | `sources/voice_lines/characters/Kaveh.md` ("Về Dori...") | primary_source_found | Nợ Dori tiền và không thể thoát khỏi. |
| Nahida (Kusanali) | Nữ thần đáng kính | CANON | `sources/voice_lines/characters/Kaveh.md` ("Về Kusanali...") | primary_source_found | Tôn trọng Thảo Thần. |
| Nhà Lữ Hành | Bạn | CANON | `sources/voice_lines/characters/Kaveh.md` | primary_source_found | Coi trọng tình bạn. |

## Power / Lore Constraints

- Known abilities: Dendro Vision, Mehrak companion (construction tool), kiến thức kiến trúc
- Limits: Kiến trúc sư, không phải chiến binh chuyên nghiệp; Mehrak có giới hạn
- Misuse risks: Viết anh dùng kiến trúc/Mehrak giải quyết mọi vấn đề chiến đấu
- Power-scaling warnings: Giữ ở mức scholar/architect với Vision, không phải warrior
- Source status: partial_support_only
- Notes: Chi tiết Mehrak cần nguồn bổ sung.

## Genre Usage Notes

### Canon-compliant
Thiết kế công trình, tranh luận với Alhaitham, nghiên cứu kiến trúc tại Giáo Viện.

### AU
Khai thác bối cảnh nơi Palace of Alcazarzaray thành công hoặc thất bại hoàn toàn.

### Romance
Thể hiện tình cảm đam mê, dramatic, dễ xúc động — awkward khi bộc lộ.

### Mystery / Detective
Kiến thức kiến trúc giúp phát hiện bí ẩn trong cấu trúc công trình.

### Political / Faction
Vị trí bấp bênh trong Akademiya do nợ và xung đột lý tưởng.

### Action / Battle
Hỗ trợ bằng Mehrak và Dendro, creative problem-solving hơn brute force.

### Comedy / Slice of life
Tranh cãi với Alhaitham, than phiền nợ, phản ứng dramatic trước mọi thứ.

### Dark fantasy
Grief gia đình, gánh nặng nợ, mâu thuẫn giữa lý tưởng và thực tế.

### OC-insert
OC là khách hàng thuê Kaveh thiết kế hoặc sinh viên kiến trúc.

### Livestream / Heavenscreen / Reaction
Bình luận đam mê về thẩm mỹ, bực bội trước thiết kế xấu.

## Safe Uses

- Viết Kaveh đam mê thảo luận kiến trúc và vẻ đẹp nghệ thuật.
- Viết anh tranh luận triết lý với Alhaitham về cảm xúc vs logic.
- Viết anh than phiền nợ nần nhưng vẫn giữ niềm tự hào nghề nghiệp.

## Unsafe Uses

- Viết anh chỉ là comic debt roommate không có đam mê hay lý tưởng.
- Viết anh và Alhaitham là couple xác nhận trong canon-compliant.
- Viết chi tiết Palace of Alcazarzaray hoặc lý do nợ mà không có nguồn.

## Sources

- Primary sources: `sources/voice_lines/characters/Kaveh.md`
- Indirect sources: `entities/character_intelligence/Kaveh.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Palace of Alcazarzaray chi tiết, lý do nợ, bi kịch gia đình, Mehrak origins
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories được ingest.
- upgrade_conditions: Ingest character stories + architecture provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
