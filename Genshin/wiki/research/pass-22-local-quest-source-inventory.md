# Pass 22 — Local Quest Source Inventory

## Purpose

Read-only inventory of local quest dialogue files relevant to Pass 22 target candidates. File/folder existence is a source availability signal, NOT canon proof.

## Inventory Table

| Source package / file | Local path | Candidate(s) | Quest/source type | Source-index status | Usable for evidence packet? | Not proof caveat |
|---|---|---|---|---|---|---|
| Akasha Pulses — Destination of the Ship of Consciousness | `sources/voice_lines/archon_quests/Akasha Rung Động, Kiếp Hỏa Dâng Trào/Đích Đến Của Con Thuyền Ý Thức.md` | Dottore, Nahida, Traveler, Paimon | Archon quest dialogue (Sumeru Ch3 Act V) | Not individually indexed | YES — direct Dottore dialogue | File existence is NOT canon proof; evidence requires claim-level mapping |
| Inversion of Genesis — Night Bird Falls | `sources/voice_lines/archon_quests/Cội Nguồn Nghiêng Ngả/Chim Đêm Sa Ngã Dưới Bức Rèm.md` | Dottore, Scaramouche, Traveler | Interlude quest dialogue | Not individually indexed | YES — direct Dottore/Escher dialogue | File existence is NOT canon proof; evidence requires claim-level mapping |
| King Deshret — Secret in Hot Sand | `sources/voice_lines/archon_quests/Xích Thổ Chi Vương Và Tam Triều Thánh Giả/Bí Mật Trong Cát Nóng.md` | Dottore, Akademiya scholars | Archon quest dialogue (Sumeru Ch3 Act II) | Not individually indexed | YES — Dottore background claims | File existence is NOT canon proof; evidence requires claim-level mapping |
| Caribert — Meeting as Fate | `sources/voice_lines/archon_quests/Caribert/Tương Phùng Như Vận Mệnh.md` | Dainsleif, Kaeya, Traveler, Paimon | Interlude quest dialogue | Not individually indexed | YES — Dainsleif/Khaenri'ah dialogue | File existence is NOT canon proof; evidence requires claim-level mapping |
| Caribert — Fate Has Been Recorded | `sources/voice_lines/archon_quests/Caribert/Vận Mệnh Đã Được Ghi Lại.md` | Dainsleif, Traveler, Abyss Sibling, Chlothar | Interlude quest dialogue | Not individually indexed | YES — Abyss Sibling/Fate Weaver | File existence is NOT canon proof; evidence requires claim-level mapping |
| Caribert — One Who Mocks Fate | `sources/voice_lines/archon_quests/Caribert/Tư Cách Giễu Cợt Vận Mệnh.md` | Chlothar Alberich, Caribert, Dainsleif, Traveler | Interlude quest dialogue | Not individually indexed | YES — Khaenri'ah identity/curse | File existence is NOT canon proof; evidence requires claim-level mapping |
| Caribert — One Who Weeps at Fate's End | `sources/voice_lines/archon_quests/Caribert/Kẻ Rơi Lệ Nơi Cuối Vận Mệnh.md` | "Sinner" entity, Traveler, Eide | Interlude quest dialogue | Not individually indexed | YES — Descender/Sinner claims | File existence is NOT canon proof; evidence requires claim-level mapping |
| Between Promise and Oblivion — Revelation from the Past | `sources/voice_lines/world_quests/Giữa Lời Hứa Và Lãng Quên/Tiết Lộ Từ Quá Khứ.md` | Traveler, Paimon, ancient figures | World quest dialogue | Not individually indexed | YES — Traveler vision/sibling memory | File existence is NOT canon proof; evidence requires claim-level mapping |
| Between Promise and Oblivion — Lost Child of the Forest | `sources/voice_lines/world_quests/Giữa Lời Hứa Và Lãng Quên/Đứa Con Lạc Rừng.md` | Traveler, Paimon, Little One | World quest dialogue | Not individually indexed | YES — Descender/dragon claims | File existence is NOT canon proof; evidence requires claim-level mapping |
| Aether voice lines | `sources/voice_lines/characters/Aether.md` | Aether, Paimon | Character voice lines | Not individually indexed | PARTIAL — Paimon dialogue, contextual only | File existence is NOT canon proof; voice lines are character-perspective, not narrator-omniscient |
| AQ-NK-ACT7 provenance pointer | `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT7.md` | Dottore, Dainsleif, Abyss Sibling, Skirk | Provenance metadata (NOT transcript) | Referenced in source-index | NO — metadata pointer only, no local transcript text | Provenance pointer is NOT equivalent to extracted dialogue |
| AQ-NK-ACT2 provenance pointer | `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT2.md` | Sandrone, Traveler, Paimon | Provenance metadata (NOT transcript) | Referenced in source-index | NO — metadata pointer only | Provenance pointer is NOT equivalent to extracted dialogue |
| AQ-NK-ACT4 provenance pointer | `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT4.md` | Columbina (implied), Traveler | Provenance metadata (NOT transcript) | Referenced in source-index | NO — metadata pointer only | Provenance pointer is NOT equivalent to extracted dialogue |
| AQ-NK-ACT8 provenance pointer | `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT8.md` | Traveler, Paimon, Lunar entities | Provenance metadata (NOT transcript) | Referenced in source-index | NO — metadata pointer only, master page only | Provenance pointer is NOT equivalent to extracted dialogue |

## Capitano — Source Absence Record

| Expected source | Search method | Result | Conclusion |
|---|---|---|---|
| Natlan archon quest with Capitano speaking | Searched all `sources/voice_lines/archon_quests/` directories for "Capitano" | Zero results | source_absent |
| Any quest file where Capitano acts | Searched for "Il Capitano" across voice_lines | Zero results | source_absent |
| "Đội trưởng" as Capitano reference | Searched all voice_line archon quests | All hits were Jean/military false positives | source_absent |
| Natlan Ch5 quest files | Read all 5 metadata files in `quests/archon_quests/ch5_natlan/` | Empty metadata shells, no character content | source_absent |
| Natlan voice lines content | Checked `Sắc Hoa Rực Rỡ Trong Hành Trình Nắng Cháy/` | Only 1 file (72KB) — no Capitano | source_absent |

**Conclusion**: Capitano has ZERO local quest dialogue presence in this workspace. The Natlan archon quest content that exists locally does not include Capitano dialogue. This is a systemic gap — Capitano's quest appearances are not yet ingested.

## Systemic Gaps

| Gap | Impact | Affected candidates |
|---|---|---|
| No Nod-Krai Act 7 transcript (only provenance pointer) | Cannot extract Dottore/Dainsleif NK dialogue | Dottore, Dainsleif, Skirk |
| No Natlan Capitano quest dialogue ingested | Cannot extract any Capitano evidence | Capitano |
| No dedicated Paimon source file | Only indirect mentions in other characters' lines | Paimon |
| No official_profiles/ directory | Cannot cross-reference character profiles | All candidates |
| No character_stories/ directory (except Kaeya) | Cannot supplement quest dialogue evidence | All candidates |
| Nod-Krai Acts 2-8 are metadata pointers only | Cannot extract dialogue from these sources | All Nod-Krai candidates |

## Notes

- All paths are relative to `D:\LoreResseach\Genshin\`
- Source-index.md was inspected read-only and NOT modified
- No source IDs were created for these files
- Provenance pointers (AQ-NK-*) are revision-pinned Fandom wiki references, not local transcripts
- The `quests/` directory contains only metadata shells referencing dialogue files
- Actual dialogue content lives in `sources/voice_lines/`
