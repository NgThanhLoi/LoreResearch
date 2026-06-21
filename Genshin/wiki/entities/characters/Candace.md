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
related_pages: ["./Dehya.md", "./Sethos.md"]
---

# Candace

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Candace.md` |
| indirect_sources | `entities/character_intelligence/Candace.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết huyết thống King Deshret và lịch sử Aaru Village. |

## Summary

Candace là người bảo vệ làng Aaru tại sa mạc Sumeru, sở hữu Thủy Vision. Cô sinh ra và lớn lên tại Aaru Village, cha là học giả Giáo Viện, mẹ đã mất trong bóng tối. Cô dùng giáo và khiên để bảo vệ dân làng, mang tính cách ôn hòa nhưng kiên quyết, sẵn sàng chiến đấu vì người thân và cộng đồng.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, vai trò bảo vệ Aaru Village, Hydro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách bảo vệ, kiên quyết, ôn hòa.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận mối quan hệ với Kusanali, Layla, Alhaitham, Cyno, Dehya, Sethos.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Hydro Vision, sử dụng giáo và khiên. Chi tiết kỹ thuật cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Voice lines đề cập cha là học giả, mẹ đã mất.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò guardian của Aaru Village.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Huyết thống King Deshret cần nguồn sơ cấp xác minh. Không import từ memory.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Candace | CANON | `sources/voice_lines/characters/Candace.md` | primary_source_found |
| Region | Sumeru (Sa mạc) | CANON | `sources/voice_lines/characters/Candace.md` | primary_source_found |
| Faction | Aaru Village | CANON | `sources/voice_lines/characters/Candace.md` | primary_source_found |
| Role | Người bảo vệ làng Aaru (Guardian) | CANON | `sources/voice_lines/characters/Candace.md` | primary_source_found |
| Vision / Power | Thủy (Hydro) | CANON | `sources/voice_lines/characters/Candace.md` | primary_source_found |

## Canon Personality

* [CHAR-CANDACE-TRAIT-001] Candace coi bảo vệ dân làng và người qua đường tại sa mạc là sứ mệnh thiêng liêng, sẵn sàng đưa giáo khiên ra chiến đấu bất kỳ lúc nào.
  * label: CANON
  * source: `sources/voice_lines/characters/Candace.md` ("Lần gặp đầu", "Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CANDACE-TRAIT-002] Candace trân trọng những điều quý giá cần được bảo vệ và tin rằng hòa bình không tự đến mà cần người gìn giữ.
  * label: CANON
  * source: `sources/voice_lines/characters/Candace.md` ("Nói chuyện phiếm - Bảo vệ")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CANDACE-TRAIT-003] Candace sinh ra tại Aaru Village, cha là học giả Giáo Viện, mẹ đã mất trong bóng tối sa mạc.
  * label: CANON
  * source: `sources/voice_lines/characters/Candace.md` ("Bối cảnh cá nhân")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-CANDACE-IMPLIED-001] Candace mang trong mình nỗi đau mất mẹ và sự cam kết bảo vệ để không ai phải chịu mất mát tương tự.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Candace.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý mối liên hệ giữa mất mát cá nhân và sứ mệnh bảo vệ.

## Theory / Interpretation

* [CHAR-CANDACE-THEORY-001] Candace có thể mang huyết thống liên quan đến King Deshret hoặc dòng dõi hoàng tộc sa mạc cổ đại.
  * label: THEORY
  * source: `entities/character_intelligence/Candace.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp trực tiếp xác nhận huyết thống cụ thể trong workspace.
  * banned_overuse: Không viết cô là công chúa hoàng gia hoặc có quyền lực thần thánh từ King Deshret.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Candace là hậu duệ trực hệ King Deshret có quyền năng thần thánh | Cao | Chỉ dùng trong AU với tag rõ ràng, không khẳng định canon. | Cấm viết cô có quyền năng thần thánh hoặc quyền cai trị sa mạc. | `wiki/synthesis/headcanon-fanon-policy.md` | Cần nguồn sơ cấp xác minh trước khi upgrade. |
| Candace chỉ là NPC bảo vệ không có chiều sâu | Trung bình | Giữ vai trò guardian nhưng thể hiện chiều sâu cảm xúc. | Cấm giảm cô thành stern guard one-note. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines cho thấy cô có tâm hồn phong phú. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Overclaim huyết thống King Deshret thần thánh | High | Không có nguồn sơ cấp, có thể tạo power creep và overclaim lore. | Đề cập lineage chỉ trong Theory, không khẳng định quyền năng thần thánh. | `entities/character_intelligence/Candace.md` |
| Giảm cô thành stern guardian one-note | Medium | Bỏ qua chiều sâu cảm xúc và backstory. | Viết cô kiên quyết nhưng cũng ấm áp, có nỗi đau và hy vọng. | `sources/voice_lines/characters/Candace.md` |

## Voice Guide

- Formality: Trung bình, lịch sự nhưng thân thiện.
- Sentence rhythm: Điềm tĩnh, chắc chắn, không vội vàng.
- Common tone: Ấm áp, kiên quyết, bảo vệ.
- Humor style: Hiếm, nhẹ nhàng khi có.
- Emotional restraint: Trung bình - thể hiện sự quan tâm nhưng kiềm chế nỗi đau.
- Vocabulary habits: Ngôn ngữ thực tế, liên quan đến sa mạc và bảo vệ.
- What they avoid saying: Lời yếu đuối, than vãn về số phận.
- Should avoid: Nói năng quá cứng nhắc hoặc quá yếu mềm.
- Source: `sources/voice_lines/characters/Candace.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Dehya | Đồng minh sa mạc / Bạn phiền phức đáng yêu | CANON | `sources/voice_lines/characters/Candace.md` ("Về Dehya...") | primary_source_found | Tìm Dehya phiền phức nhưng thương mến. |
| Sethos | Hậu duệ Deshret tự hào | CANON | `sources/voice_lines/characters/Candace.md` ("Về Sethos...") | primary_source_found | Công nhận sự tự hào về dòng dõi của Sethos. |
| Cyno | Matra đáng sợ | CANON | `sources/voice_lines/characters/Candace.md` ("Về Cyno...") | primary_source_found | Biết đến danh tiếng đáng sợ của Cyno. |
| Nahida (Kusanali) | Vị thần bảo hộ | CANON | `sources/voice_lines/characters/Candace.md` ("Về Kusanali...") | primary_source_found | Biết ơn sự bảo hộ của Thảo Thần. |

## Power / Lore Constraints

- Known abilities: Hydro Vision, giáo và khiên kết hợp
- Limits: Không có nguồn xác nhận power ceiling; chiến binh cấp village guardian
- Misuse risks: Viết cô có sức mạnh thần thánh từ King Deshret
- Power-scaling warnings: Giữ ở mức guardian / Vision holder, không phải archon-level
- Source status: partial_support_only
- Notes: Chi tiết chiến đấu cần nguồn bổ sung.

## Genre Usage Notes

### Canon-compliant
Tuần tra sa mạc, bảo vệ dân làng, tiếp đón lữ khách qua đêm tại Aaru Village.

### AU
Khai thác bối cảnh nơi huyết thống hoàng gia sa mạc được khám phá hoặc Aaru Village đối mặt mối đe dọa mới.

### Romance
Thể hiện tình cảm qua hành động bảo vệ và sự ấm áp nhẹ nhàng, không qua lời hoa mỹ.

### Mystery / Detective
Vai trò điều tra mối đe dọa sa mạc hoặc bí ẩn di tích cổ King Deshret.

### Political / Faction
Đại diện Aaru Village trong quan hệ với Giáo Viện hoặc các phe phái sa mạc khác.

### Action / Battle
Chiến đấu với giáo khiên bảo vệ dân làng, phong cách defensive-offensive.

### Comedy / Slice of life
Tương tác với Dehya, tiếp đón khách lạ, cuộc sống hàng ngày tại Aaru Village.

### Dark fantasy
Đối mặt với bóng tối sa mạc tương tự nỗi đau mất mẹ, hoặc di sản đen tối King Deshret.

### OC-insert
OC là lữ khách lạc đường được Candace cứu và mời về Aaru Village.

### Livestream / Heavenscreen / Reaction
Bình luận điềm tĩnh từ góc nhìn guardian sa mạc.

## Safe Uses

- Viết Candace tuần tra và bảo vệ dân làng một cách kiên quyết nhưng ấm áp.
- Viết cô chia sẻ câu chuyện về sa mạc và Aaru Village với lữ khách.
- Viết cô hợp tác với Dehya trong các nhiệm vụ bảo vệ vùng sa mạc.

## Unsafe Uses

- Viết cô có quyền năng thần thánh hoặc quyền cai trị sa mạc từ King Deshret.
- Viết cô như stern guard không có cảm xúc hoặc chiều sâu nội tâm.
- Viết cô overclaim quyền lực chính trị vượt phạm vi Aaru Village.

## Sources

- Primary sources: `sources/voice_lines/characters/Candace.md`
- Indirect sources: `entities/character_intelligence/Candace.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Huyết thống King Deshret, lịch sử chi tiết Aaru Village, backstory mẹ
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories hoặc desert lore sources được ingest.
- upgrade_conditions: Ingest character stories + desert provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
