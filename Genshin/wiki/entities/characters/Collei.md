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
related_pages: ["./Tighnari.md", "./Nahida.md"]
---

# Collei

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Collei.md` |
| indirect_sources | `entities/character_intelligence/Collei.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết thí nghiệm Dottore và backstory manga. Manga source không có trong workspace. |

## Summary

Collei là thực tập sinh Kiểm Lâm (Forest Ranger) tại rừng Avidya, Sumeru, sở hữu Thảo Vision. Cô từng lang thang trước khi đến Sumeru, từng mắc bệnh Eleazar và bị thí nghiệm, nhưng hiện đã lành bệnh. Cô đang nỗ lực học tập dưới sự hướng dẫn của Tighnari và ngưỡng mộ Amber từ Mondstadt như hình mẫu lý tưởng.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, vai trò thực tập sinh Kiểm Lâm, Dendro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách nỗ lực, ngưỡng mộ Amber, khó khăn đọc chữ, nhiệt huyết.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với Tighnari, Amber, Dori, và nhiều nhân vật khác.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Dendro Vision. Chi tiết kỹ thuật cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Voice lines đề cập lang thang, bệnh tật, thí nghiệm. Chi tiết Dottore/manga cần nguồn sơ cấp. Manga không có trong workspace.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò trainee Forest Ranger dưới Tighnari.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Thí nghiệm Fatui/Dottore, Eleazar history cần character stories hoặc manga source.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Collei | CANON | `sources/voice_lines/characters/Collei.md` | primary_source_found |
| Region | Sumeru (Rừng Avidya) | CANON | `sources/voice_lines/characters/Collei.md` | primary_source_found |
| Faction | Kiểm Lâm Rừng Avidya | CANON | `sources/voice_lines/characters/Collei.md` | primary_source_found |
| Role | Thực tập sinh Kiểm Lâm (Trainee Forest Ranger) | CANON | `sources/voice_lines/characters/Collei.md` | primary_source_found |
| Vision / Power | Thảo (Dendro) | CANON | `sources/voice_lines/characters/Collei.md` | primary_source_found |

## Canon Personality

* [CHAR-COLLEI-TRAIT-001] Collei tự giới thiệu là thực tập sinh Kiểm Lâm, rất nỗ lực học hỏi và làm việc chăm chỉ dẫu gặp khó khăn đọc chữ.
  * label: CANON
  * source: `sources/voice_lines/characters/Collei.md` ("Lần gặp đầu", "Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-COLLEI-TRAIT-002] Collei ngưỡng mộ Amber từ Mondstadt như hình mẫu lý tưởng và nguồn cảm hứng sống.
  * label: CANON
  * source: `sources/voice_lines/characters/Collei.md` ("Về Amber...")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-COLLEI-TRAIT-003] Collei từng lang thang trước khi đến Sumeru, từng mắc bệnh và bị thí nghiệm, hiện đã lành và đang xây dựng cuộc sống mới.
  * label: CANON
  * source: `sources/voice_lines/characters/Collei.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: high
  * notes: Voice lines đề cập quá khứ nhưng chi tiết cụ thể cần character stories.

## Strongly Implied Traits

* [CHAR-COLLEI-IMPLIED-001] Collei mang chấn thương tâm lý từ quá khứ bị thí nghiệm và bệnh tật, thể hiện qua sự xấu hổ và nỗ lực chứng minh bản thân.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Collei.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý trauma nhưng không mô tả chi tiết thí nghiệm.

## Theory / Interpretation

* [CHAR-COLLEI-THEORY-001] Collei từng bị Dottore (Fatui) thí nghiệm liên quan đến Archon Residue hoặc bệnh Eleazar.
  * label: THEORY
  * source: `entities/character_intelligence/Collei.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Chi tiết thí nghiệm Dottore có trong manga nhưng manga source không tồn tại trong workspace. Không import từ memory.
  * banned_overuse: Không viết chi tiết thí nghiệm cụ thể mà không có nguồn, không giảm cô thành trauma-only character.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Collei chỉ là nạn nhân trauma không có tính cách khác | Cao | Có thể đề cập quá khứ đau thương nhưng phải thể hiện sự phát triển. | Cấm giảm cô thành trauma-only, khóc lóc không có sức mạnh hay ý chí. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines cho thấy cô lạc quan và nỗ lực. |
| Chi tiết thí nghiệm Dottore cụ thể từ manga | Trung bình | Có thể đề cập vaguely trong AU. | Cấm khẳng định chi tiết manga là canon khi manga source không có trong workspace. | `wiki/synthesis/headcanon-fanon-policy.md` | Manga source chưa indexed. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Giảm Collei thành trauma-only character | High | Bỏ qua sự phát triển, lạc quan, và nỗ lực hiện tại. | Viết cô có quá khứ đau nhưng đang tích cực xây dựng tương lai. | `sources/voice_lines/characters/Collei.md` |
| Import chi tiết manga không có nguồn | Medium | Manga source chưa indexed trong workspace. | Đề cập vaguely, ghi source_missing, không hardcode chi tiết. | `entities/character_intelligence/Collei.md` |
| Overclaim quan hệ với Amber thành romance canon | Medium | Voice lines chỉ thể hiện ngưỡng mộ/idol, không phải romance. | Giữ ở mức mentor/role model, romance chỉ trong AU. | `sources/voice_lines/characters/Collei.md` |

## Voice Guide

- Formality: Thấp-trung bình, lễ phép với bề trên, thân thiện với bạn bè.
- Sentence rhythm: Nhanh, nhiệt huyết, đôi khi vấp váp khi hào hứng.
- Common tone: Lạc quan, nỗ lực, đôi khi lo lắng.
- Humor style: Tự giễu nhẹ nhàng, phản ứng ngây thơ dễ thương.
- Emotional restraint: Thấp-trung bình, dễ bộc lộ cảm xúc.
- Vocabulary habits: Đơn giản, thực tế, đôi khi gặp khó khăn với từ ngữ phức tạp.
- What they avoid saying: Chuyện quá khứ đau thương (trừ với người rất thân).
- Should avoid: Nói năng quá trưởng thành hoặc cynical, mất đi sự nhiệt huyết trẻ trung.
- Source: `sources/voice_lines/characters/Collei.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Tighnari | Thầy hướng dẫn / Mentor | CANON | `sources/voice_lines/characters/Collei.md` ("Về Tighnari...") | primary_source_found | Kính trọng và biết ơn sự chỉ dẫn của Tighnari. |
| Amber | Hình mẫu / Idol | CANON | `sources/voice_lines/characters/Collei.md` ("Về Amber...") | primary_source_found | Ngưỡng mộ sâu sắc, coi Amber là nguồn cảm hứng sống. |
| Nhà Lữ Hành | Bạn tin cậy | CANON | `sources/voice_lines/characters/Collei.md` | primary_source_found | Biết ơn sự giúp đỡ và tình bạn. |
| Dori | Người quen | CANON | `sources/voice_lines/characters/Collei.md` ("Về Dori...") | primary_source_found | Biết ơn sự giúp đỡ từ Dori. |

## Power / Lore Constraints

- Known abilities: Dendro Vision, kỹ năng Kiểm Lâm cơ bản
- Limits: Thực tập sinh, chưa phải Kiểm Lâm chính thức; sức mạnh ở mức trainee
- Misuse risks: Viết cô có power level cao hoặc khả năng đặc biệt từ thí nghiệm
- Power-scaling warnings: Giữ ở mức trainee ranger, không phải chiến binh mạnh
- Source status: partial_support_only
- Notes: Không xác nhận khả năng đặc biệt nào từ thí nghiệm Dottore trong workspace hiện tại.

## Genre Usage Notes

### Canon-compliant
Tuần tra rừng Avidya, học hỏi từ Tighnari, viết thư cho Amber, tập luyện Dendro Vision.

### AU
Khai thác bối cảnh nơi Dottore chưa bao giờ thí nghiệm hoặc cô chưa bao giờ rời Mondstadt.

### Romance
Thể hiện tình cảm qua sự ngưỡng mộ và biết ơn, ngại ngùng trẻ trung.

### Mystery / Detective
Vai trò trainee phát hiện manh mối trong rừng hoặc điều tra hiện tượng thực vật bất thường.

### Political / Faction
Góc nhìn thấp trong hệ thống Kiểm Lâm, không có quyền lực chính trị.

### Action / Battle
Chiến đấu ở mức trainee, nỗ lực nhưng chưa thuần thục.

### Comedy / Slice of life
Gặp khó đọc chữ, phản ứng hào hứng với điều mới, tương tác ngây thơ với bạn bè.

### Dark fantasy
Hồi tưởng đau thương (dùng nhẹ nhàng), hoặc đối mặt tàn dư Fatui.

### OC-insert
OC là đồng nghiệp trainee cùng học với Collei dưới sự hướng dẫn của Tighnari.

### Livestream / Heavenscreen / Reaction
Phản ứng hào hứng, dễ thương, đôi khi lo lắng.

## Safe Uses

- Viết Collei nỗ lực học tập và tuần tra rừng với tinh thần lạc quan.
- Viết cô viết thư ngưỡng mộ gửi Amber hoặc báo cáo tiến bộ cho Tighnari.
- Viết cô đối mặt thử thách nhỏ hàng ngày với sự quyết tâm.

## Unsafe Uses

- Viết cô chỉ khóc lóc và nhắc quá khứ trauma mà không có sự phát triển.
- Import chi tiết thí nghiệm Dottore từ manga mà không có nguồn trong workspace.
- Viết cô có khả năng chiến đấu mạnh bất thường từ thí nghiệm.

## Sources

- Primary sources: `sources/voice_lines/characters/Collei.md`
- Indirect sources: `entities/character_intelligence/Collei.md`
- Missing sources: `sources/character_stories/`, manga source
- Source gaps: Chi tiết thí nghiệm Dottore, Eleazar history, manga backstory
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp. Manga chưa indexed.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories hoặc manga source được ingest.
- upgrade_conditions: Ingest character stories + manga source = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
