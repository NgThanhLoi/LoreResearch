# Pass 22 — Quest Dialogue Provenance Report

## Purpose

Pass 22 performs controlled quest dialogue provenance extraction for high-risk characters whose blocked claims require quest-level evidence support. This pass produces structured evidence packets for later claim mapping (Pass 26+) without upgrading any character pages or creating source IDs.

## Scope

- **Type**: Read-only quest dialogue inspection + evidence packet creation
- **Candidates**: Dottore, Capitano, Dainsleif, Aether, Lumine, Paimon (primary); Abyss Sibling, Traveler (secondary)
- **Output**: Research/provenance reports only
- **Constraints**: No character page mutations, no source-index changes, no source IDs created, no external queries, no full claim mapping

## Files Read First

### Wiki Core
- wiki/index.md ✓
- wiki/README.md ✓
- wiki/SCHEMA.md ✓
- wiki/log.md ✓
- wiki/entities/characters/README.md ✓
- wiki/entities/characters/character-inventory.md ✓
- wiki/sources/source-index.md ✓ (read-only)
- wiki/sources/SOURCE_ID_RULES.md ✓
- wiki/sources/EXTERNAL_SOURCE_POLICY.md ✓

### Character Pages (read-only)
- wiki/entities/characters/Dottore.md ✓ (status: blocked_by_missing_source)
- wiki/entities/characters/Aether.md ✓
- wiki/entities/characters/Lumine.md ✓
- wiki/entities/characters/Capitano.md — NOT FOUND
- wiki/entities/characters/Dainsleif.md — NOT FOUND
- wiki/entities/characters/Paimon.md — NOT FOUND
- wiki/entities/characters/Traveler.md — NOT FOUND
- wiki/entities/characters/Abyss Sibling.md — NOT FOUND

### Prior Research
- wiki/research/pass-19-5-source-missing-character-resolution-plan.md ✓
- wiki/research/pass-19-5-source-missing-inventory.md ✓
- wiki/research/pass-19-5-source-requirement-map.md ✓
- wiki/research/pass-19-5-priority-ingestion-queue.md ✓
- wiki/research/pass-20-high-risk-source-package-feasibility-report.md ✓
- wiki/research/pass-20-candidate-provenance-route-map.md ✓
- wiki/research/pass-20-local-source-package-inventory.md ✓
- wiki/research/pass-20-blocked-claim-cluster-map.md ✓
- wiki/research/pass-21-high-risk-source-package-feasibility-report.md ✓
- wiki/research/pass-21-candidate-provenance-route-map.md ✓
- wiki/research/pass-21-local-source-package-inventory.md ✓
- wiki/research/pass-21-blocked-claim-cluster-map.md ✓
- wiki/research/pass-nk-03-guarded-claims-register.md ✓
- wiki/research/pass-nk-07-evidence-index.md ✓

### Synthesis/Governance
- wiki/synthesis/ooc-risk-index.md ✓
- wiki/synthesis/headcanon-fanon-policy.md ✓
- wiki/synthesis/contradiction-register.md ✓
- wiki/synthesis/power-system-governance.md ✓
- wiki/synthesis/unverified-lore-register.md ✓
- wiki/synthesis/character-audit-backlog.md ✓

## Candidate Selection Source

Pass 22 candidates were selected from Pass 20 and Pass 21 provenance route maps:
- Pass 20 routed Dottore, Aether, Lumine toward quest dialogue provenance
- Pass 21 routed Capitano, Dainsleif, Paimon toward quest dialogue provenance
- Abyss Sibling and Traveler included as secondary (directly tied to same quest dialogue packages)

## Quest Dialogue Discovery Method

1. Identified `sources/voice_lines/archon_quests/` as primary quest dialogue location (33 directories, hundreds of files with actual dialogue text in Vietnamese)
2. Identified `sources/provenance/archon_quests/nod-krai/` as provenance index pointers (AQ-NK-ACT2 through ACT8, metadata-level only)
3. Identified `quests/archon_quests/` as metadata shells (no dialogue content, only references)
4. Identified `sources/voice_lines/world_quests/` as world quest dialogue location
5. Identified `sources/voice_lines/characters/` as character voice line files (96 files)
6. Searched by candidate name and key terms within voice_lines directories
7. Read relevant files and extracted short paraphrased evidence

## Candidates Reviewed

| Candidate | Local Quest Sources Found | Evidence Extracted | Status |
|-----------|--------------------------|-------------------|--------|
| Dottore | 3 archon quest files (Sumeru) | 15 claims | evidence_packet_created |
| Capitano | 0 — completely absent | 0 claims | source_absent |
| Dainsleif | 4 Caribert quest files | 11 claims | evidence_packet_created |
| Aether | 5 files (Caribert + world quest + voice lines) | 4 quest claims + 3 voice-line context | evidence_packet_created (quest); deferred_to_pass_23 (voice-line) |
| Lumine | Same files as Aether (player-choice mirror) | shared with Aether | evidence_packet_created (quest); deferred_to_pass_23 (voice-line) |
| Paimon | 2 indirect references only | 1 quest claim + 1 voice-line context | partial_support_only (quest); deferred_to_pass_23 (voice-line) |
| Abyss Sibling | 4 Caribert files (secondary) | 5 claims | evidence_packet_created |
| Traveler | Same as Aether/Lumine (generic role) | shared | evidence_packet_created |

## Local Quest Packages Found

### Dottore — Sumeru Archon Quest (3 files, ~508KB total)
1. `sources/voice_lines/archon_quests/Akasha Rung Động, Kiếp Hỏa Dâng Trào/Đích Đến Của Con Thuyền Ý Thức.md` (62KB)
2. `sources/voice_lines/archon_quests/Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` (87KB)
3. `sources/voice_lines/archon_quests/Xích Thổ Chi Vương Và Tam Triều Thánh Giả/Bí Mật Trong Cát Nóng.md` (~44KB)

### Dainsleif / Abyss Sibling / Traveler — Caribert Interlude (4 files, ~77KB)
1. `sources/voice_lines/archon_quests/Caribert/Tương Phùng Như Vận Mệnh.md`
2. `sources/voice_lines/archon_quests/Caribert/Vận Mệnh Đã Được Ghi Lại.md`
3. `sources/voice_lines/archon_quests/Caribert/Tư Cách Giễu Cợt Vận Mệnh.md`
4. `sources/voice_lines/archon_quests/Caribert/Kẻ Rơi Lệ Nơi Cuối Vận Mệnh.md`

### Traveler — World Quest (1 file)
5. `sources/voice_lines/world_quests/Giữa Lời Hứa Và Lãng Quên/Tiết Lộ Từ Quá Khứ.md` (30KB)

### Paimon — Indirect Only
6. `sources/voice_lines/characters/Aether.md` (163KB) — Paimon speaks as dialogue partner but no dedicated Paimon source

## Local Quest Packages Missing

| Candidate | Expected Source | Status |
|-----------|----------------|--------|
| Capitano | Natlan archon quest dialogue with Capitano speaking | source_absent — zero mentions found |
| Capitano | Any quest file where Capitano acts or speaks | source_absent — all "đội trưởng" hits were Jean/military false positives |
| Paimon | Dedicated Paimon identity/origin quest | source_absent — no such quest exists |
| Dainsleif | Nod-Krai Act 7 dialogue (AQ-NK-ACT7) | provenance_pointer_only — local transcript not extracted |
| Dottore | Nod-Krai Act 7 dialogue (AQ-NK-ACT7) | provenance_pointer_only — metadata only |

## Evidence Packet Summary

- **Dottore**: 15 evidence claims extracted (8 direct_statement, 4 implied, 3 contextual_only). Note: Harbinger role confirmed but rank number not directly stated.
- **Dainsleif**: 11 evidence claims (7 direct_statement, 3 implied, 1 contextual_only)
- **Aether/Lumine/Traveler**: 4 quest-dialogue evidence claims (3 direct_statement, 1 implied) + 3 non-quest voice-line context claims (deferred to Pass 23)
- **Abyss Sibling**: 5 evidence claims (3 direct_statement, 2 implied)
- **Paimon**: 1 quest-dialogue evidence claim (implied) + 1 non-quest voice-line context claim (deferred to Pass 23)
- **Capitano**: 0 evidence claims (source_absent)

**Total**: 36 quest-dialogue evidence claims + 4 non-quest voice-line context claims across 6 primary + 2 secondary candidates
**Claim clusters tracked**: 32 (not 37 — corrected in Pass 22.1)

## What This Pass Did NOT Do

- ❌ Did NOT create or rewrite any character pages
- ❌ Did NOT upgrade any claim to CANON status
- ❌ Did NOT modify wiki/sources/source-index.md
- ❌ Did NOT create any new source IDs
- ❌ Did NOT query external web/API sources
- ❌ Did NOT ingest any new sources into the workspace
- ❌ Did NOT copy long copyrighted transcript passages
- ❌ Did NOT perform full claim mapping
- ❌ Did NOT use character_intelligence as primary source
- ❌ Did NOT canonize NK-07 evidence
- ❌ Did NOT treat folder/file existence as canon proof
- ❌ Did NOT resolve any Paimon identity theories

## Quality Gate Results

- [x] Repo structure inspected
- [x] Pass 20 and Pass 21 reports inspected
- [x] Existing target character pages inspected read-only if present
- [x] Local quest dialogue discovery was read-only
- [x] Candidate list limited to approved Pass 22 scope
- [x] Quest evidence tied to local file paths
- [x] Evidence summaries are short paraphrases, not long transcript copies
- [x] No external source ingestion
- [x] No live web/API queries
- [x] No new source IDs created
- [x] source-index.md not modified
- [x] No character pages created or rewritten
- [x] No full claim mapping
- [x] No unsupported claim upgraded to canon
- [x] character_intelligence not used as primary source
- [x] NK-07 evidence remains guarded
- [x] Dottore/Capitano/Dainsleif high-risk claims remain guarded
- [x] Paimon identity theories remain blocked/source_light
- [x] Traveler/Aether/Lumine/Abyss Sibling duplicate identity risk recorded
- [x] All candidate/source/evidence/claim counts reconciled
- [x] Reports created
- [x] wiki/log.md updated
- [x] Next passes recommended
