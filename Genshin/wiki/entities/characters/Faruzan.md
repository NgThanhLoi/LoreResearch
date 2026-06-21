---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "phong"]
related_pages: ["./Nahida.md"]
---

# Faruzan

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Faruzan.md` |
| indirect_sources | `entities/character_intelligence/Faruzan.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết cơ chế temporal displacement và lịch sử Haravatat. |

## Summary

Faruzan là học giả cổ đại thuộc học phái Haravatat tại Giáo Viện Sumeru, sở hữu Phong Vision. Cô bị mắc kẹt trong một di tích cổ hơn 100 năm do temporal displacement, và khi trở lại thế giới hiện đại, vẫn giữ nguyên ngoại hình trẻ trung nhưng kiến thức và thái độ thuộc về thời đại trước. Cô đam mê cơ chế học (mechanics) và khao khát được công nhận như một giảng viên tại Giáo Viện.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, Haravatat affiliation, Anemo Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách học giả, khao khát dạy học, thái độ senior.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với nhiều nhân vật Sumeru.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Anemo Vision. Chi tiết mechanism expertise cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Chi tiết 100+ năm imprisonment và di tích cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận thuộc Haravatat, muốn làm giảng viên.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Temporal displacement mechanics, di tích cổ, và lịch sử 100+ năm cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Faruzan | CANON | `sources/voice_lines/characters/Faruzan.md` | primary_source_found |
| Region | Sumeru | CANON | `sources/voice_lines/characters/Faruzan.md` | primary_source_found |
| Faction | Học phái Haravatat — Giáo Viện Sumeru | CANON | `sources/voice_lines/characters/Faruzan.md` | primary_source_found |
| Role | Học giả cổ đại / Chuyên gia cơ chế học | CANON | `sources/voice_lines/characters/Faruzan.md` | primary_source_found |
| Vision / Power | Phong (Anemo) | CANON | `sources/voice_lines/characters/Faruzan.md` | primary_source_found |

## Canon Personality

* [CHAR-FARUZAN-TRAIT-001] Faruzan bị mắc kẹt hơn 100 năm trong di tích cổ và khi trở lại vẫn giữ ngoại hình trẻ, nhưng kiến thức và thái độ thuộc thời đại trước.
  * label: CANON
  * source: `sources/voice_lines/characters/Faruzan.md` ("Bối cnh", "Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-FARUZAN-TRAIT-002] Faruzan đam mê cơ chế học và khao khát được công nhận là giảng viên tại Giáo Viện, thường tỏ ra bực bội khi sinh viên không tôn trọng.
  * label: CANON
  * source: `sources/voice_lines/characters/Faruzan.md` ("Nói chuyện phiếm - Dạy học")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-FARUZAN-TRAIT-003] Faruzan có thái độ senior/bề trên, thường nhắc nhở về kinh nghiệm và tuổi thực sự của mình, mong muốn được tôn trọng.
  * label: CANON
  * source: `sources/voice_lines/characters/Faruzan.md` ("Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-FARUZAN-IMPLIED-001] Faruzan có sự cô đơn sâu sắc do không còn ai thuộc thời đại của cô, tất cả bạn bè cũ đều đã qua đời.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Faruzan.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý nỗi cô đơn nhưng cô che giấu bằng thái độ bề trên.

## Theory / Interpretation

* [CHAR-FARUZAN-THEORY-001] Cơ chế temporal displacement có thể liên quan đến di tích King Deshret hoặc công nghệ cổ đại Sumeru.
  * label: THEORY
  * source: `entities/character_intelligence/Faruzan.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp mô tả cơ chế temporal displacement cụ thể.
  * banned_overuse: Không viết cô có khả năng điều khiển thời gian hoặc time travel.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Faruzan chỉ là gag character già giả trẻ | Trung bình | Dùng yếu tố seniority hài hước nhưng thể hiện chiều sâu. | Cấm giảm cô thành seniority gag only. | `wiki/synthesis/headcanon-fanon-policy.md` | Cô có kiến thức thực sự và nỗi cô đơn sâu sắc. |
| Faruzan có quyền lực Akademiya-wide | Cao | Chỉ dùng trong AU. | Cấm viết cô có quyền hạn chính trị vượt scope Haravatat. | `wiki/synthesis/headcanon-fanon-policy.md` | Cô muốn được công nhận nhưng chưa có vị trí chính thức. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Giảm thành seniority gag only | Medium | Bỏ qua kiến thức thực sự, nỗi cô đơn, và đam mê học thuật. | Viết cô hài hước VỀ tuổi NHƯNG cũng thông minh và cô đơn. | `sources/voice_lines/characters/Faruzan.md` |
| Overclaim Akademiya-wide authority | High | Cô muốn vị trí nhưng chưa có — overclaim là unsupported. | Giữ ở mức scholar/aspiring teacher, không phải authority. | `entities/character_intelligence/Faruzan.md` |
| Time travel / temporal manipulation power | High | Cô bị MẮC KẸT, không CHỦ ĐỘNG du hành thời gian. | Viết temporal displacement là sự cố, không phải ability. | `sources/voice_lines/characters/Faruzan.md` |

## Voice Guide

- Formality: Cao, học thuật, thái độ bề trên.
- Sentence rhythm: Dài, giải thích kỹ, đôi khi giảng bài không ai yêu cầu.
- Common tone: Tự tin, bề trên, đôi khi bực bội khi bị coi thường.
- Humor style: Vô tình hài — seniority claims trong bối cảnh hiện đại.
- Emotional restraint: Trung bình — dễ bực bội, khó thừa nhận cô đơn.
- Vocabulary habits: Thuật ngữ cổ, cơ chế học, tham chiếu thời đại cũ.
- What they avoid saying: Thừa nhận cô đơn, thừa nhận không hiểu thế giới hiện đại.
- Should avoid: Nói năng casual hay teen-like, mất đi dignity senior.
- Source: `sources/voice_lines/characters/Faruzan.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Nahida (Kusanali) | Nữ thần đáng kính | CANON | `sources/voice_lines/characters/Faruzan.md` ("Về Kusanali...") | primary_source_found | Tôn trọng Thảo Thần. |
| Nhà Lữ Hành | Học trò tiềm năng | CANON | `sources/voice_lines/characters/Faruzan.md` | primary_source_found | Muốn dạy và chia sẻ kiến thức. |
| Cyno | Matra đáng nể | CANON | `sources/voice_lines/characters/Faruzan.md` ("Về Cyno...") | primary_source_found | Tôn trọng thái độ nghiêm túc. |

## Power / Lore Constraints

- Known abilities: Anemo Vision, kiến thức cơ chế học cổ đại
- Limits: Scholar, không phải chiến binh; temporal displacement là sự cố, không phải ability
- Misuse risks: Viết cô có time manipulation power hoặc kiến thức cổ giải quyết mọi vấn đề
- Power-scaling warnings: Giữ ở mức scholar với Vision, không phải temporal mage
- Source status: partial_support_only
- Notes: Temporal displacement mechanics cần character stories để xác minh.

## Genre Usage Notes

### Canon-compliant
Dạy học tại Giáo Viện, nghiên cứu cơ chế cổ, tương tác với sinh viên hiện đại.

### AU
Khai thác bối cảnh thời đại gốc của cô hoặc nơi temporal displacement có hậu quả khác.

### Romance
Thể hiện tình cảm qua thái độ bề trên che giấu sự quan tâm, awkward senior romance.

### Mystery / Detective
Kiến thức cổ đại giúp giải mã di tích hoặc bí ẩn lịch sử Sumeru.

### Political / Faction
Vị trí bấp bênh trong Akademiya hiện đại, không phải authority.

### Action / Battle
Hỗ trợ bằng Anemo Vision và kiến thức mechanism, không phải frontline.

### Comedy / Slice of life
Thái độ bề trên vs thế giới hiện đại, sinh viên không nghe lời.

### Dark fantasy
Nỗi cô đơn 100+ năm, mất mát toàn bộ người quen thuộc.

### OC-insert
OC là sinh viên mới chấp nhận nghe giảng của Faruzan.

### Livestream / Heavenscreen / Reaction
Bình luận với thái độ senior, so sánh thời trước vs nay.

## Safe Uses

- Viết Faruzan giảng bài đam mê về cơ chế học cho sinh viên không quan tâm.
- Viết cô nhắc nhở thái độ bề trên nhưng che giấu nỗi cô đơn bên trong.
- Viết cô nghiên cứu di tích cổ với kiến thức chuyên sâu.

## Unsafe Uses

- Viết cô có khả năng time travel hoặc temporal manipulation chủ động.
- Viết cô chỉ là seniority gag không có kiến thức hay chiều sâu cảm xúc.
- Viết cô có quyền hạn Akademiya-wide vượt scope thực tế.

## Sources

- Primary sources: `sources/voice_lines/characters/Faruzan.md`
- Indirect sources: `entities/character_intelligence/Faruzan.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Temporal displacement mechanics, di tích cụ thể, lịch sử Haravatat
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories hoặc Haravatat lore sources được ingest.
- upgrade_conditions: Ingest character stories + temporal provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
