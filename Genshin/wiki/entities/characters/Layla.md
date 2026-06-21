---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "băng"]
related_pages: ["./Nahida.md"]
---

# Layla

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Layla.md` |
| indirect_sources | `entities/character_intelligence/Layla.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết cơ chế mộng du và "bản ngã khác" khi ngủ. |

## Summary

Layla là sinh viên thuộc học phái Rtawahist tại Giáo Viện Sumeru, sở hữu Băng Vision. Cô nổi tiếng với chứng mất ngủ mãn tính do áp lực học tập thiên văn học, và hiện tượng mộng du bí ẩn khiến cô hoàn thành công việc trong khi ngủ mà không nhớ gì khi tỉnh. Cô nhút nhát, lo lắng, nhưng chăm chỉ và tận tâm với nghiên cứu.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, Rtawahist scholarship, Cryo Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách nhút nhát, lo lắng, mất ngủ, chăm chỉ.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với Mona, Lisa, Dori, Cyno, Candace, Alhaitham, Kusanali, Faruzan.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Cryo Vision. Chi tiết shield/sleepwalk combat cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Nguồn gốc mộng du và lịch sử cá nhân cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận sinh viên Rtawahist, nghiên cứu thiên văn.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Cơ chế mộng du, "other self", và thiên văn học Rtawahist cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Layla | CANON | `sources/voice_lines/characters/Layla.md` | primary_source_found |
| Region | Sumeru | CANON | `sources/voice_lines/characters/Layla.md` | primary_source_found |
| Faction | Học phái Rtawahist — Giáo Viện Sumeru | CANON | `sources/voice_lines/characters/Layla.md` | primary_source_found |
| Role | Sinh viên thiên văn học | CANON | `sources/voice_lines/characters/Layla.md` | primary_source_found |
| Vision / Power | Băng (Cryo) | CANON | `sources/voice_lines/characters/Layla.md` | primary_source_found |

## Canon Personality

* [CHAR-LAYLA-TRAIT-001] Layla mắc chứng mất ngủ mãn tính do áp lực học tập, thường xuyên kiệt sức và buồn ngủ ban ngày.
  * label: CANON
  * source: `sources/voice_lines/characters/Layla.md` ("Lần gặp đầu", "Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-LAYLA-TRAIT-002] Layla có hiện tượng mộng du khiến cô hoàn thành công việc trong khi ngủ mà không nhớ gì khi tỉnh dậy.
  * label: CANON
  * source: `sources/voice_lines/characters/Layla.md` ("Nói chuyện phiếm - Mộng du", "Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-LAYLA-TRAIT-003] Layla nhút nhát, hay lo lắng, nhưng rất chăm chỉ và tận tâm với nghiên cứu thiên văn học.
  * label: CANON
  * source: `sources/voice_lines/characters/Layla.md` ("Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-LAYLA-IMPLIED-001] "Bản ngã mộng du" của Layla có thể hoạt động độc lập và năng lực hơn bản ngã tỉnh, tạo nên sự đối lập thú vị.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Layla.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý sự khác biệt giữa hai trạng thái nhưng không xác nhận "bản ngã riêng biệt" theo nghĩa tâm linh.

## Theory / Interpretation

* [CHAR-LAYLA-THEORY-001] "Other self" khi mộng du có thể là hiện tượng tâm lý hoặc biểu hiện đặc biệt liên quan đến Vision/Rtawahist.
  * label: THEORY
  * source: `entities/character_intelligence/Layla.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp giải thích cơ chế mộng du. Có thể chỉ là stress-induced sleepwalking bình thường.
  * banned_overuse: Không viết sleepwalk persona là linh hồn/thực thể riêng biệt trừ khi có nguồn trực tiếp.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Sleepwalk Layla là nhân cách/linh hồn riêng biệt | Cao | Chỉ dùng trong AU supernatural rõ ràng. | Cấm viết cô có hai linh hồn/nhân cách canon trừ khi có nguồn. | `wiki/synthesis/headcanon-fanon-policy.md` | Có thể chỉ là stress sleepwalking. |
| Layla chỉ là sleepy student gag | Trung bình | Dùng yếu tố buồn ngủ nhưng thể hiện nỗ lực và trí tuệ. | Cấm giảm cô thành sleepy gag only. | `wiki/synthesis/headcanon-fanon-policy.md` | Cô là sinh viên chăm chỉ có khả năng thực sự. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Viết sleepwalk persona là separate soul/entity | High | Không có nguồn xác nhận; overclaim supernatural. | Viết mộng du là hiện tượng bí ẩn nhưng KHÔNG khẳng định cơ chế. | `sources/voice_lines/characters/Layla.md` |
| Giảm thành sleepy student gag only | Medium | Bỏ qua nỗ lực, trí tuệ, và áp lực thực sự. | Viết cô buồn ngủ VÀ chăm chỉ, thông minh, có áp lực. | `sources/voice_lines/characters/Layla.md` |

## Voice Guide

- Formality: Trung bình, lịch sự, nhút nhát.
- Sentence rhythm: Chậm, hay ngắt quãng vì buồn ngủ hoặc lo lắng.
- Common tone: Lo lắng, mệt mỏi, nhưng cố gắng lạc quan.
- Humor style: Vô tình hài — phản ứng mệt mỏi hoặc bối rối trước tình huống.
- Emotional restraint: Trung bình — dễ lo lắng nhưng cố kiềm chế.
- Vocabulary habits: Thuật ngữ thiên văn, ngáp giữa câu, tự nhắc nhở bản thân.
- What they avoid saying: Tự tin mạnh mẽ, khoe khoang, tuyên bố hùng hồn.
- Should avoid: Nói năng tự tin warrior hoặc energetic liên tục, mất đi sự nhút nhát đặc trưng.
- Source: `sources/voice_lines/characters/Layla.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Nahida (Kusanali) | Nữ thần bảo hộ | CANON | `sources/voice_lines/characters/Layla.md` ("Về Kusanali...") | primary_source_found | Tôn trọng Thảo Thần. |
| Candace | Bạn đáng tin | CANON | `sources/voice_lines/characters/Layla.md` ("Về Candace...") | primary_source_found | Candace nhận xét Layla quirky nhưng đang cải thiện. |
| Mona | Đồng nghiệp thiên văn | CANON | `sources/voice_lines/characters/Layla.md` ("Về Mona...") | primary_source_found | Chia sẻ quan tâm thiên văn học. |
| Faruzan | Senior tại Giáo Viện | CANON | `sources/voice_lines/characters/Layla.md` ("Về Faruzan...") | primary_source_found | Tương tác senior-junior. |

## Power / Lore Constraints

- Known abilities: Cryo Vision, shield generation (có thể liên quan mộng du)
- Limits: Sinh viên, không phải chiến binh; sức mạnh ở mức student
- Misuse risks: Viết mộng du cho cô superpowers hoặc combat mastery
- Power-scaling warnings: Giữ ở mức student với Vision, không phải fighter
- Source status: partial_support_only
- Notes: Mối liên hệ giữa mộng du và combat ability cần nguồn bổ sung.

## Genre Usage Notes

### Canon-compliant
Nghiên cứu thiên văn đêm khuya, mộng du hoàn thành bài tập, tương tác mệt mỏi với bạn.

### AU
Khai thác bối cảnh nơi mộng du có giải thích supernatural hoặc cô có giấc ngủ bình thường.

### Romance
Thể hiện tình cảm nhút nhát, lo lắng, awkward nhưng chân thành.

### Mystery / Detective
Mộng du tạo bí ẩn — cô phát hiện manh mối khi ngủ mà không nhớ.

### Political / Faction
Sinh viên ít quyền lực, góc nhìn thấp trong hệ thống Akademiya.

### Action / Battle
Chiến đấu với Cryo Vision nhưng mệt mỏi, mộng du có thể tạo moments bất ngờ.

### Comedy / Slice of life
Buồn ngủ liên tục, bối rối trước kết quả mộng du, stress deadline.

### Dark fantasy
Mộng du mất kiểm soát, không biết mình đã làm gì trong đêm.

### OC-insert
OC là bạn cùng phòng hoặc đồng nghiệp nghiên cứu chứng kiến mộng du.

### Livestream / Heavenscreen / Reaction
Phản ứng mệt mỏi, ngáp giữa bình luận, bất ngờ tỉnh giấc.

## Safe Uses

- Viết Layla nghiên cứu thiên văn đêm khuya dẫu kiệt sức.
- Viết cô bối rối phát hiện kết quả mộng du sáng hôm sau.
- Viết cô nhút nhát nhưng cố gắng giao tiếp và kết bạn.

## Unsafe Uses

- Viết mộng du persona là linh hồn/nhân cách riêng biệt canon.
- Viết cô chỉ là sleepy gag không có nỗ lực hay trí tuệ.
- Viết cô có combat power bất thường từ mộng du.

## Sources

- Primary sources: `sources/voice_lines/characters/Layla.md`
- Indirect sources: `entities/character_intelligence/Layla.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Cơ chế mộng du, "other self", lịch sử cá nhân
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories được ingest.
- upgrade_conditions: Ingest character stories + sleepwalk mechanism provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
