# Pass 23 — Official Profile / Voice-Line Inventory

## Purpose

Inventories local character voice-line and profile source files. Classifies each as a candidate for future ingestion/provenance mapping. Does NOT create source IDs or perform claim mapping.

---

## Methodology

- Inspected `sources/voice_lines/characters/` (96 files)
- Inspected `sources/character_stories/` (1 file: Kaeya.md)
- Cross-referenced Pass 22 deferred_to_pass_23 items
- No external sources accessed
- All statuses are conservative

---

## Voice-Line Character Files — Full Inventory

### High-Priority Candidates (Pass 22 deferred or blocked characters)

| candidate_id | character_or_topic | local_file_path | source_type | evidence_scope | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| VL-AETHER-01 | Aether | sources/voice_lines/characters/Aether.md | voice_line_candidate | identity, inter-dimensional travel, rapid learning, personality | requires_claim_mapping_later | HIGH | Contains Pass 22 deferred items: inter-dimensional travel + rapid learning claims |
| VL-LUMINE-01 | Lumine | sources/voice_lines/characters/Lumine.md | voice_line_candidate | identity, personality, sibling references | requires_claim_mapping_later | HIGH | Mirror of Aether; player-selection ambiguity applies |
| VL-TARTAGLIA-01 | Tartaglia | sources/voice_lines/characters/Tartaglia.md | voice_line_candidate | Harbinger personality, Skirk mentorship, combat philosophy | requires_claim_mapping_later | MEDIUM | Contains Skirk references (high-risk character) |
| VL-NAHIDA-01 | Nahida | sources/voice_lines/characters/Nahida.md | voice_line_candidate | Archon identity, Irminsul knowledge, relationship to other gods | requires_claim_mapping_later | MEDIUM | Irminsul/cosmology topic overlap |
| VL-ZHONGLI-01 | Zhongli | sources/voice_lines/characters/Zhongli.md | voice_line_candidate | Archon history, Khaenri'ah-era knowledge, contracts | requires_claim_mapping_later | MEDIUM | Ancient history claims need careful sourcing |
| VL-VENTI-01 | Venti | sources/voice_lines/characters/Venti.md | voice_line_candidate | Archon identity, Mondstadt history, Celestia references | requires_claim_mapping_later | MEDIUM | Ancient events — requires temporal verification |
| VL-RAIDEN-01 | Raiden Shogun | sources/voice_lines/characters/Raiden Shogun.md | voice_line_candidate | Eternity philosophy, Makoto/Ei distinction, Inazuma governance | requires_claim_mapping_later | MEDIUM | Dual-identity complexity |
| VL-ARLECCHINO-01 | Arlecchino | sources/voice_lines/characters/Arlecchino.md | voice_line_candidate | Harbinger role, Fatui internal politics, personality | requires_claim_mapping_later | MEDIUM | Harbinger claims need cross-verification |
| VL-FURINA-01 | Furina | sources/voice_lines/characters/Furina.md | voice_line_candidate | Focalors distinction, Fontaine prophecy knowledge | requires_claim_mapping_later | MEDIUM | Complex identity narrative |
| VL-NEUVILLETTE-01 | Neuvillette | sources/voice_lines/characters/Neuvillette.md | voice_line_candidate | Dragon Sovereign identity, Fontaine cosmology | requires_claim_mapping_later | MEDIUM | Cosmology-tier claims |
| VL-MAVUIKA-01 | Mavuika | sources/voice_lines/characters/Mavuika.md | voice_line_candidate | Natlan Archon, Pyro Archon mechanics | requires_claim_mapping_later | MEDIUM | Natlan mechanics — guarded topic |
| VL-XIAO-01 | Xiao | sources/voice_lines/characters/Xiao.md | voice_line_candidate | Adeptus identity, karmic debt, ancient war references | requires_claim_mapping_later | LOW | Well-established character; low overclaim risk |
| VL-ALBEDO-01 | Albedo | sources/voice_lines/characters/Albedo.md | voice_line_candidate | Rhinedottir/Gold connection, Khemia, artificial life | requires_claim_mapping_later | HIGH | Direct link to high-risk character Rhinedottir |

### Standard Candidates (playable characters with local voice-line files)

| candidate_id | character_or_topic | local_file_path | source_type | evidence_scope | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| VL-ALHAITHAM-01 | Alhaitham | sources/voice_lines/characters/Alhaitham.md | voice_line_candidate | personality, Akademiya role | profile_candidate | LOW | Standard playable |
| VL-AMBER-01 | Amber | sources/voice_lines/characters/Amber.md | voice_line_candidate | personality, Knights role | profile_candidate | LOW | Standard playable |
| VL-ARATAKI-01 | Arataki Itto | sources/voice_lines/characters/Arataki Itto.md | voice_line_candidate | personality, Oni identity | profile_candidate | LOW | Standard playable |
| VL-BAIZHU-01 | Baizhu | sources/voice_lines/characters/Baizhu.md | voice_line_candidate | personality, medical knowledge | profile_candidate | LOW | Standard playable |
| VL-BARBARA-01 | Barbara | sources/voice_lines/characters/Barbara.md | voice_line_candidate | personality, church role | profile_candidate | LOW | Standard playable |
| VL-BEIDOU-01 | Beidou | sources/voice_lines/characters/Beidou.md | voice_line_candidate | personality, fleet captain | profile_candidate | LOW | Standard playable |
| VL-BENNETT-01 | Bennett | sources/voice_lines/characters/Bennett.md | voice_line_candidate | personality, adventurer | profile_candidate | LOW | Standard playable |
| VL-CANDACE-01 | Candace | sources/voice_lines/characters/Candace.md | voice_line_candidate | personality, Aaru Village | profile_candidate | LOW | Standard playable |
| VL-CHARLOTTE-01 | Charlotte | sources/voice_lines/characters/Charlotte.md | voice_line_candidate | personality, journalist | profile_candidate | LOW | Standard playable |
| VL-CHASCA-01 | Chasca | sources/voice_lines/characters/Chasca.md | voice_line_candidate | personality, Natlan | profile_candidate | LOW | Standard playable |
| VL-CHEVREUSE-01 | Chevreuse | sources/voice_lines/characters/Chevreuse.md | voice_line_candidate | personality, Fontaine law | profile_candidate | LOW | Standard playable |
| VL-CHIORI-01 | Chiori | sources/voice_lines/characters/Chiori.md | voice_line_candidate | personality, fashion | profile_candidate | LOW | Standard playable |
| VL-CHONGYUN-01 | Chongyun | sources/voice_lines/characters/Chongyun.md | voice_line_candidate | personality, exorcist | profile_candidate | LOW | Standard playable |
| VL-CITLALI-01 | Citlali | sources/voice_lines/characters/Citlali.md | voice_line_candidate | personality, Natlan | profile_candidate | LOW | Standard playable |
| VL-CLORINDE-01 | Clorinde | sources/voice_lines/characters/Clorinde.md | voice_line_candidate | personality, champion duelist | profile_candidate | LOW | Standard playable |
| VL-COLLEI-01 | Collei | sources/voice_lines/characters/Collei.md | voice_line_candidate | personality, Dendro, Fatui history | profile_candidate | LOW | Manga connection but low risk |
| VL-CYNO-01 | Cyno | sources/voice_lines/characters/Cyno.md | voice_line_candidate | personality, Matra | profile_candidate | LOW | Standard playable |
| VL-DEHYA-01 | Dehya | sources/voice_lines/characters/Dehya.md | voice_line_candidate | personality, Eremite | profile_candidate | LOW | Standard playable |
| VL-DILUC-01 | Diluc | sources/voice_lines/characters/Diluc.md | voice_line_candidate | personality, Fatui past, Knights history | profile_candidate | LOW | Standard playable |
| VL-DIONA-01 | Diona | sources/voice_lines/characters/Diona.md | voice_line_candidate | personality, Kätzlein | profile_candidate | LOW | Standard playable |
| VL-DORI-01 | Dori | sources/voice_lines/characters/Dori.md | voice_line_candidate | personality, merchant | profile_candidate | LOW | Standard playable |
| VL-EMILIE-01 | Emilie | sources/voice_lines/characters/Emilie.md | voice_line_candidate | personality, perfumer | profile_candidate | LOW | Standard playable |
| VL-EULA-01 | Eula | sources/voice_lines/characters/Eula.md | voice_line_candidate | personality, Lawrence clan | profile_candidate | LOW | Standard playable |
| VL-FARUZAN-01 | Faruzan | sources/voice_lines/characters/Faruzan.md | voice_line_candidate | personality, ancient knowledge | profile_candidate | LOW | Standard playable |
| VL-FISCHL-01 | Fischl | sources/voice_lines/characters/Fischl.md | voice_line_candidate | personality, Prinzessin identity | profile_candidate | LOW | Standard playable |
| VL-FREMINET-01 | Freminet | sources/voice_lines/characters/Freminet.md | voice_line_candidate | personality, House of Hearth | profile_candidate | LOW | Standard playable |
| VL-GAMING-01 | Gaming | sources/voice_lines/characters/Gaming.md | voice_line_candidate | personality, wushu | profile_candidate | LOW | Standard playable |
| VL-GANYU-01 | Ganyu | sources/voice_lines/characters/Ganyu.md | voice_line_candidate | personality, adeptus heritage, Liyue history | profile_candidate | LOW | Standard playable |
| VL-GOROU-01 | Gorou | sources/voice_lines/characters/Gorou.md | voice_line_candidate | personality, resistance | profile_candidate | LOW | Standard playable |
| VL-HUTAO-01 | Hu Tao | sources/voice_lines/characters/Hu Tao.md | voice_line_candidate | personality, Wangsheng Funeral | profile_candidate | LOW | Standard playable |
| VL-JEAN-01 | Jean | sources/voice_lines/characters/Jean.md | voice_line_candidate | personality, Knights leadership | profile_candidate | LOW | Standard playable |
| VL-KACHINA-01 | Kachina | sources/voice_lines/characters/Kachina.md | voice_line_candidate | personality, Natlan | profile_candidate | LOW | Standard playable |
| VL-KAZUHA-01 | Kaedehara Kazuha | sources/voice_lines/characters/Kaedehara Kazuha.md | voice_line_candidate | personality, wanderer, Inazuma | profile_candidate | LOW | Standard playable |
| VL-KAEYA-01 | Kaeya | sources/voice_lines/characters/Kaeya.md | voice_line_candidate | personality, Khaenri'ah lineage | requires_claim_mapping_later | MEDIUM | Khaenri'ah connection — moderate risk |
| VL-AYAKA-01 | Kamisato Ayaka | sources/voice_lines/characters/Kamisato Ayaka.md | voice_line_candidate | personality, Kamisato clan | profile_candidate | LOW | Standard playable |
| VL-AYATO-01 | Kamisato Ayato | sources/voice_lines/characters/Kamisato Ayato.md | voice_line_candidate | personality, Shuumatsuban | profile_candidate | LOW | Standard playable |
| VL-KAVEH-01 | Kaveh | sources/voice_lines/characters/Kaveh.md | voice_line_candidate | personality, architect | profile_candidate | LOW | Standard playable |
| VL-KEQING-01 | Keqing | sources/voice_lines/characters/Keqing.md | voice_line_candidate | personality, Liyue Qixing | profile_candidate | LOW | Standard playable |
| VL-KINICH-01 | Kinich | sources/voice_lines/characters/Kinich.md | voice_line_candidate | personality, Natlan hunter | profile_candidate | LOW | Standard playable |
| VL-KIRARA-01 | Kirara | sources/voice_lines/characters/Kirara.md | voice_line_candidate | personality, delivery | profile_candidate | LOW | Standard playable |
| VL-KLEE-01 | Klee | sources/voice_lines/characters/Klee.md | voice_line_candidate | personality, Alice's daughter | profile_candidate | LOW | Alice reference but low risk alone |
| VL-SARA-01 | Kujou Sara | sources/voice_lines/characters/Kujou Sara.md | voice_line_candidate | personality, Tengu identity | profile_candidate | LOW | Standard playable |
| VL-SHINOBU-01 | Kuki Shinobu | sources/voice_lines/characters/Kuki Shinobu.md | voice_line_candidate | personality, Arataki Gang | profile_candidate | LOW | Standard playable |
| VL-WANDERER-01 | Kẻ Lang Thang | sources/voice_lines/characters/Kẻ Lang Thang.md | voice_line_candidate | identity crisis, Scaramouche history, Dottore connection | requires_claim_mapping_later | HIGH | Direct Dottore/Fatui/identity connections |
| VL-LANYAN-01 | Lan Yan | sources/voice_lines/characters/Lan Yan.md | voice_line_candidate | personality | profile_candidate | LOW | Standard playable |
| VL-LAYLA-01 | Layla | sources/voice_lines/characters/Layla.md | voice_line_candidate | personality, Akademiya | profile_candidate | LOW | Standard playable |
| VL-LISA-01 | Lisa | sources/voice_lines/characters/Lisa.md | voice_line_candidate | personality, former Akademiya | profile_candidate | LOW | Standard playable |
| VL-LYNETTE-01 | Lynette | sources/voice_lines/characters/Lynette.md | voice_line_candidate | personality, performer | profile_candidate | LOW | Standard playable |
| VL-LYNEY-01 | Lyney | sources/voice_lines/characters/Lyney.md | voice_line_candidate | personality, Fatui orphan | profile_candidate | LOW | Arlecchino connection but low-risk alone |
| VL-MIKA-01 | Mika | sources/voice_lines/characters/Mika.md | voice_line_candidate | personality, Knights scout | profile_candidate | LOW | Standard playable |
| VL-MONA-01 | Mona | sources/voice_lines/characters/Mona.md | voice_line_candidate | personality, astrology, Hexenzirkel connection | requires_claim_mapping_later | MEDIUM | Hexenzirkel — guarded topic |
| VL-MUALANI-01 | Mualani | sources/voice_lines/characters/Mualani.md | voice_line_candidate | personality, Natlan | profile_candidate | LOW | Standard playable |
| VL-NAVIA-01 | Navia | sources/voice_lines/characters/Navia.md | voice_line_candidate | personality, Spina di Rosula | profile_candidate | LOW | Standard playable |
| VL-NILOU-01 | Nilou | sources/voice_lines/characters/Nilou.md | voice_line_candidate | personality, dancer | profile_candidate | LOW | Standard playable |
| VL-NINGGUANG-01 | Ningguang | sources/voice_lines/characters/Ningguang.md | voice_line_candidate | personality, Liyue Qixing | profile_candidate | LOW | Standard playable |
| VL-NOELLE-01 | Noelle | sources/voice_lines/characters/Noelle.md | voice_line_candidate | personality, maid knight | profile_candidate | LOW | Standard playable |
| VL-ORORON-01 | Ororon | sources/voice_lines/characters/Ororon.md | voice_line_candidate | personality, Natlan | profile_candidate | LOW | Standard playable |
| VL-QIQI-01 | Qiqi | sources/voice_lines/characters/Qiqi.md | voice_line_candidate | personality, zombie/adeptus | profile_candidate | LOW | Standard playable |
| VL-RAZOR-01 | Razor | sources/voice_lines/characters/Razor.md | voice_line_candidate | personality, wolf boy | profile_candidate | LOW | Standard playable |
| VL-ROSARIA-01 | Rosaria | sources/voice_lines/characters/Rosaria.md | voice_line_candidate | personality, church assassin | profile_candidate | LOW | Standard playable |
| VL-KOKOMI-01 | Sangonomiya Kokomi | sources/voice_lines/characters/Sangonomiya Kokomi.md | voice_line_candidate | personality, Watatsumi | profile_candidate | LOW | Standard playable |
| VL-SAYU-01 | Sayu | sources/voice_lines/characters/Sayu.md | voice_line_candidate | personality, ninja | profile_candidate | LOW | Standard playable |
| VL-SETHOS-01 | Sethos | sources/voice_lines/characters/Sethos.md | voice_line_candidate | personality, Temple of Silence | profile_candidate | LOW | Standard playable |
| VL-SHENHE-01 | Shenhe | sources/voice_lines/characters/Shenhe.md | voice_line_candidate | personality, adeptus training | profile_candidate | LOW | Standard playable |
| VL-HEIZOU-01 | Shikanoin Heizou | sources/voice_lines/characters/Shikanoin Heizou.md | voice_line_candidate | personality, detective | profile_candidate | LOW | Standard playable |
| VL-SIGEWINNE-01 | Sigewinne | sources/voice_lines/characters/Sigewinne.md | voice_line_candidate | personality, Melusine | profile_candidate | LOW | Standard playable |
| VL-SUCROSE-01 | Sucrose | sources/voice_lines/characters/Sucrose.md | voice_line_candidate | personality, bio-alchemy | profile_candidate | LOW | Standard playable |
| VL-THOMA-01 | Thoma | sources/voice_lines/characters/Thoma.md | voice_line_candidate | personality, fixer | profile_candidate | LOW | Standard playable |
| VL-TIGHNARI-01 | Tighnari | sources/voice_lines/characters/Tighnari.md | voice_line_candidate | personality, forest watcher | profile_candidate | LOW | Standard playable |
| VL-WRIOTHESLEY-01 | Wriothesley | sources/voice_lines/characters/Wriothesley.md | voice_line_candidate | personality, Fortress of Meropide | profile_candidate | LOW | Standard playable |
| VL-XIANGLING-01 | Xiangling | sources/voice_lines/characters/Xiangling.md | voice_line_candidate | personality, chef | profile_candidate | LOW | Standard playable |
| VL-XIANYUN-01 | Xianyun | sources/voice_lines/characters/Xianyun.md | voice_line_candidate | personality, adeptus | profile_candidate | LOW | Standard playable |
| VL-XILONEN-01 | Xilonen | sources/voice_lines/characters/Xilonen.md | voice_line_candidate | personality, Natlan forgemaster | profile_candidate | LOW | Standard playable |
| VL-XINGQIU-01 | Xingqiu | sources/voice_lines/characters/Xingqiu.md | voice_line_candidate | personality, Guhua | profile_candidate | LOW | Standard playable |
| VL-XINYAN-01 | Xinyan | sources/voice_lines/characters/Xinyan.md | voice_line_candidate | personality, rock musician | profile_candidate | LOW | Standard playable |
| VL-YAEMIKO-01 | Yae Miko | sources/voice_lines/characters/Yae Miko.md | voice_line_candidate | personality, kitsune, Raiden connection | profile_candidate | LOW | Standard playable |
| VL-YANFEI-01 | Yanfei | sources/voice_lines/characters/Yanfei.md | voice_line_candidate | personality, legal advisor | profile_candidate | LOW | Standard playable |
| VL-YAOYAO-01 | Yaoyao | sources/voice_lines/characters/Yaoyao.md | voice_line_candidate | personality, adeptus disciple | profile_candidate | LOW | Standard playable |
| VL-YELAN-01 | Yelan | sources/voice_lines/characters/Yelan.md | voice_line_candidate | personality, intelligence agent | profile_candidate | LOW | Standard playable |
| VL-YOIMIYA-01 | Yoimiya | sources/voice_lines/characters/Yoimiya.md | voice_line_candidate | personality, fireworks | profile_candidate | LOW | Standard playable |
| VL-MIZUKI-01 | Yumemizuki Mizuki | sources/voice_lines/characters/Yumemizuki Mizuki.md | voice_line_candidate | personality | profile_candidate | LOW | Standard playable |
| VL-YUNJIN-01 | Yun Jin | sources/voice_lines/characters/Yun Jin.md | voice_line_candidate | personality, opera | profile_candidate | LOW | Standard playable |
| VL-ALOY-01 | Aloy | sources/voice_lines/characters/Aloy.md | voice_line_candidate | collab character, limited lore scope | profile_candidate | LOW | Non-canon collab |

### Character Story Files

| candidate_id | character_or_topic | local_file_path | source_type | evidence_scope | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| CS-KAEYA-01 | Kaeya | sources/character_stories/Kaeya.md | profile_candidate | backstory, Khaenri'ah heritage, relationships | requires_claim_mapping_later | MEDIUM | Khaenri'ah lineage — moderate risk |

---

## Missing Profile/Voice-Line Sources (High-Priority Gaps)

| character | expected_source_type | status | notes |
|---|---|---|---|
| Capitano | voice_line + official_profile | source_missing | Zero local files — all 5 Pass 22 claim clusters blocked |
| Columbina | voice_line + official_profile | source_missing | Wiki page exists (wiki/entities/characters/Columbina.md) but no voice-line file |
| Sandrone | voice_line + official_profile | source_missing | Wiki page exists but no voice-line file |
| Dottore | voice_line + official_profile | source_missing | Wiki page exists but no dedicated voice-line file |
| Pierro | voice_line + official_profile | source_missing | No wiki page, no voice-line file |
| Skirk | voice_line + official_profile | source_missing | Wiki page exists but no voice-line file |
| Varka | voice_line + official_profile | source_missing | Wiki page exists but no voice-line file |
| Rhinedottir/Gold | any | source_missing | No page, no voice-line file |
| Alice | any | source_missing | No page, no voice-line file |
| Dainsleif | voice_line | source_missing | No voice-line file; quest dialogue only |
| Nicole | voice_line | source_missing | Wiki page exists but no voice-line source file |

---

## Summary Counts

| Category | Count |
|---|---|
| Voice-line character files present | 96 |
| Character story files present | 1 |
| High-priority candidates (lore-relevant) | 13 |
| Standard candidates (profile-level) | 83 |
| Missing high-priority sources | 11 |
| Total Pass 23 candidate rows | 97 |
