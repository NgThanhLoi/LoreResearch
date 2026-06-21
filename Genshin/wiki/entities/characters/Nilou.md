---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "thủy"]
related_pages: ["./Nahida.md", "./Dehya.md"]
---

# Nilou

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Nilou.md` |
| indirect_sources | `entities/character_intelligence/Nilou.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết Zubayr Theater, Sabzeruz Festival, và mâu thuẫn với Giáo Viện. |

## Summary

Nilou là vũ công ngôi sao của Zubayr Theater tại thành Sumeru, sở hữu Thủy Vision. Cô nổi tiếng với những màn biểu diễn tuyệt đẹp tại lễ hội Sabzeruz và yêu múa hơn tất cả. Cô có tính cách ấm áp, lạc quan, tin vào sức mạnh của nghệ thuật mang lại niềm vui cho mọi người, dẫu đôi khi bị coi là ngây thơ.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, Zubayr Theater affiliation, Hydro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách ấm áp, lạc quan, đam mê múa, thân thiện.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với Cyno, Tighnari, Collei, Kaveh, Dehya, Dori, Kusanali.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Hydro Vision. Chi tiết combat dance style cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Lịch sử Zubayr Theater và gia đình cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò vũ công ngôi sao Zubayr Theater.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Sabzeruz Festival role, mâu thuẫn Giáo Viện, và Bloom reaction lore cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Nilou | CANON | `sources/voice_lines/characters/Nilou.md` | primary_source_found |
| Region | Sumeru (Thành phố) | CANON | `sources/voice_lines/characters/Nilou.md` | primary_source_found |
| Faction | Zubayr Theater | CANON | `sources/voice_lines/characters/Nilou.md` | primary_source_found |
| Role | Vũ công ngôi sao | CANON | `sources/voice_lines/characters/Nilou.md` | primary_source_found |
| Vision / Power | Thủy (Hydro) | CANON | `sources/voice_lines/characters/Nilou.md` | primary_source_found |

## Canon Personality

* [CHAR-NILOU-TRAIT-001] Nilou đam mê múa hơn tất cả và tin rằng nghệ thuật biểu diễn có sức mạnh mang lại niềm vui cho mọi người.
  * label: CANON
  * source: `sources/voice_lines/characters/Nilou.md` ("Lần gặp đầu", "Nói chuyện phiếm - Nhảy múa")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-NILOU-TRAIT-002] Nilou có tính cách ấm áp, lạc quan, thân thiện với mọi người và luôn tìm cách giúp đỡ bằng nghệ thuật.
  * label: CANON
  * source: `sources/voice_lines/characters/Nilou.md` ("Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-NILOU-TRAIT-003] Nilou thích đồ ngọt và ghét nấm (do từng bị ngộ độc nấm).
  * label: CANON
  * source: `sources/voice_lines/characters/Nilou.md` ("Món ăn yêu thích", "Món ăn ghét")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-NILOU-IMPLIED-001] Nilou có triết lý sâu sắc hơn vẻ ngoài — cô chọn nghệ thuật thay vì tri thức hàn lâm một cách có ý thức, không phải vì thiếu khả năng.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Nilou.md` ("Khám phá bản thân", "Bối cảnh")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines cho thấy cô có quan điểm rõ ràng về giá trị của nghệ thuật vs tri thức.

## Theory / Interpretation

* [CHAR-NILOU-THEORY-001] Nilou có thể đã đóng vai trò quan trọng trong Sabzeruz Festival và mâu thuẫn với Giáo Viện liên quan đến quyền biểu diễn.
  * label: THEORY
  * source: `entities/character_intelligence/Nilou.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp chi tiết về vai trò trong Sabzeruz controversy.
  * banned_overuse: Không viết cô là người hùng chính trị hoặc leader kháng cự Giáo Viện.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Nilou ngây thơ không hiểu gì về thế giới | Trung bình | Viết cô lạc quan nhưng thể hiện chiều sâu triết học. | Cấm giảm cô thành naive dancer không có trí tuệ. | `wiki/synthesis/headcanon-fanon-policy.md` | Cô chọn nghệ thuật có ý thức, không phải thiếu khả năng. |
| Nilou là leader chính trị chống Giáo Viện | Cao | Chỉ dùng trong AU. | Cấm viết cô là political leader trong canon. | `wiki/synthesis/headcanon-fanon-policy.md` | Cô là vũ công, không phải chính trị gia. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Giảm thành naive dancer không có chiều sâu | Medium | Bỏ qua triết lý nghệ thuật và quyết định có ý thức. | Viết cô lạc quan VÀ có quan điểm rõ ràng về giá trị nghệ thuật. | `sources/voice_lines/characters/Nilou.md` |
| Overclaim political/cultural authority | Medium | Cô là vũ công, không phải leader chính trị. | Giữ ảnh hưởng qua nghệ thuật, không qua quyền lực. | `entities/character_intelligence/Nilou.md` |

## Voice Guide

- Formality: Thấp-trung bình, thân thiện, ấm áp.
- Sentence rhythm: Nhẹ nhàng, flowing, đôi khi hào hứng khi nói về múa.
- Common tone: Ấm áp, lạc quan, khích lệ.
- Humor style: Nhẹ nhàng, đáng yêu, phản ứng ngây thơ dễ thương.
- Emotional restraint: Thấp — dễ bộc lộ niềm vui và lo lắng.
- Vocabulary habits: Từ ngữ nghệ thuật, biểu diễn, cảm xúc tích cực.
- What they avoid saying: Lời cay độc, chỉ trích nặng nề, từ bỏ hy vọng.
- Should avoid: Nói năng cynical, lạnh lùng, hoặc aggressive.
- Source: `sources/voice_lines/characters/Nilou.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Nahida (Kusanali) | Nữ thần yêu thích | CANON | `sources/voice_lines/characters/Nilou.md` ("Về Kusanali...") | primary_source_found | Yêu quý và ngưỡng mộ Thảo Thần. |
| Dehya | Bạn thân | CANON | `sources/voice_lines/characters/Nilou.md` ("Về Dehya...") | primary_source_found | Quý mến Dehya. |
| Kaveh | Bạn nghệ thuật | CANON | `sources/voice_lines/characters/Nilou.md` ("Về Kaveh...") | primary_source_found | Chia sẻ đam mê nghệ thuật. |
| Collei | Bạn trẻ | CANON | `sources/voice_lines/characters/Nilou.md` ("Về Collei...") | primary_source_found | Thân thiện với Collei. |

## Power / Lore Constraints

- Known abilities: Hydro Vision, dance-based combat style
- Limits: Vũ công, không phải chiến binh chuyên nghiệp; sức mạnh thông qua dance
- Misuse risks: Viết cô có combat power vượt trội hoặc political influence
- Power-scaling warnings: Giữ ở mức dancer Vision holder, không phải warrior elite
- Source status: partial_support_only
- Notes: Dance combat mechanics cần nguồn bổ sung.

## Genre Usage Notes

### Canon-compliant
Biểu diễn tại Zubayr Theater, tập luyện múa, tham gia lễ hội Sabzeruz.

### AU
Khai thác bối cảnh nơi nghệ thuật bị cấm hoặc Zubayr Theater thay đổi.

### Romance
Thể hiện tình cảm ấm áp, lạc quan, biểu cảm qua dance và body language.

### Mystery / Detective
Vai trò phát hiện manh mối qua biểu diễn hoặc quan sát khán giả.

### Political / Faction
Ảnh hưởng văn hóa qua nghệ thuật, không phải quyền lực chính trị trực tiếp.

### Action / Battle
Dance combat style thanh tao, Hydro-based, không phải brute force.

### Comedy / Slice of life
Tập luyện múa, tương tác vui vẻ với bạn bè, phản ứng với nấm.

### Dark fantasy
Nghệ thuật bị đàn áp, mất đi sân khấu, đối mặt bóng tối Giáo Viện.

### OC-insert
OC là khán giả, học trò múa, hoặc đồng nghiệp Zubayr Theater.

### Livestream / Heavenscreen / Reaction
Phản ứng ấm áp, hào hứng, khích lệ người khác.

## Safe Uses

- Viết Nilou biểu diễn múa tuyệt đẹp mang niềm vui cho khán giả.
- Viết cô thảo luận triết lý nghệ thuật vs tri thức một cách sâu sắc.
- Viết cô tương tác ấm áp với bạn bè và khích lệ người khác.

## Unsafe Uses

- Viết cô ngây thơ không hiểu gì, naive dancer without depth.
- Viết cô là political leader hoặc có quyền lực vượt scope vũ công.
- Viết cô aggressive hoặc cynical mất đi bản chất lạc quan.

## Sources

- Primary sources: `sources/voice_lines/characters/Nilou.md`
- Indirect sources: `entities/character_intelligence/Nilou.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Zubayr Theater history, Sabzeruz Festival role, Bloom lore
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories được ingest.
- upgrade_conditions: Ingest character stories + festival provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
