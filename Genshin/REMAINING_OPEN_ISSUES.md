# REMAINING OPEN ISSUES — Genshin Lore Bible

> Các vấn đề chưa giải quyết được sau quá trình audit. Mỗi issue cần thêm nghiên cứu hoặc source files mới để đóng.

---

## Ký hiệu
- 🔴 Blocking — Cần giải quyết trước khi tin cậy phần liên quan
- 🟡 Important — Cần bổ sung nhưng không block các phần khác
- ⚪ Low Priority — Cải thiện chất lượng, không khẩn cấp

---

## 1. SOURCE GAPS (Thiếu nguồn sơ cấp)

| # | Issue | Missing Evidence | Current State | Priority |
|---|---|---|---|---|
| 1 | Archon Quest Acts II–VII (Ver 6.1–6.7) không có source file | Cần cache bản thoại/tóm tắt chính thức cho Luna II–VII | Toàn bộ nội dung Acts II–VII đã flag ❓ Unverified | 🔴 |
| 2 | Columbina = Kuutar identification dựa trên researcher summary | Cần raw dialogue transcript từ Act I confirming identification | Classified as 🟡 Strongly Implied | 🟡 |
| 3 | "Tháp Embla" (Pillar of Embla) không có trong source files | Cần tìm weapon story, artifact, hoặc quest dialogue đề cập tên này | Classified as ❓ Unverified | 🟡 |
| 4 | "Terpikeraunas" (weapon name) không có trong source files | Cần tìm nguồn in-game (weapon story? artifact? NPC dialogue?) | Classified as ❓ Unverified | 🟡 |
| 5 | "Tri-Lunar Authority" / "Quyền Năng Tam Nguyệt" không có trong sources | Cần xác minh từ Acts II–VII quest content | Classified as ❓ Unverified | 🟡 |
| 6 | Artifact set "Ảo Tưởng Vụn Vỡ Trong Bóng Tối" (tagged v6.6) | Cần xác nhận đây là nội dung released hay unreleased | Currently in database without warning | 🟡 |

---

## 2. INTERPRETIVE DISPUTES (Tranh luận diễn giải)

| # | Issue | Available Evidence | Missing Evidence | Current Classification | Confidence |
|---|---|---|---|---|---|
| 7 | Ianikuinen = Nibelung? | Source gọi là "Ianikuinen, Thợ Rèn Nguyên Thủy" (forger of moons). Nibelung là "Long Vương Tối Cao" (dragon_sovereigns/Overview.md). | Không có câu nào nói "Ianikuinen is Nibelung" hay "Nibelung forged the moons." | ❓ Unverified | Moderate — plausible nhưng chưa có bằng chứng trực tiếp |
| 8 | Aria=Eternal, Sonnet=Iridescent, Canon=Frost? | Tên 3 mặt trăng xác nhận. Loại mặt trăng (Eternal/Iridescent/Frost) xác nhận riêng. | Không có source gán cụ thể tên nào cho loại nào. | ❓ Unverified | Low — có thể đúng nhưng không có basis |
| 9 | Rerir "phản bội" để cứu Tholindis? | Rerir's duty was to kill Crimson Moon descendants. Tholindis is his fiancée from that dynasty. He later embraced Abyss power. | Source không dùng từ "betrayed" và không nêu rõ dynamic cá nhân. | 🟡 Strongly Implied | High — logical inference nhưng not explicit |
| 10 | "Sampo Mill" in Reed Miller = device built by Rotwang? | Reed Miller book: Sampo Mill là "Frostmoon relic" producing wealth. Topic files: "Cỗ Máy Sampo" là machine Rotwang built. | Không có source nào kết nối hai concept này. | ❓ Likely conflation | High confidence đây là hai thứ khác nhau |
| 11 | Rotwang's specific constructions | Artifact confirms he wanted to "break through the sky shell." | Artifact doesn't name any specific tower or machine. | 🟡 Strongly Implied (mục đích) / ❓ Unverified (tên công trình) | High |

---

## 3. STRUCTURAL GAPS (Thiếu nội dung cấu trúc)

| # | Issue | Current State | Priority |
|---|---|---|---|
| 12 | `entities/races/` directory — hoàn toàn trống | 0 files | 🔴 |
| 13 | `entities/gods_and_archons/` — 13 files đều empty template | 0% content | 🔴 |
| 14 | Snezhnaya — không có nation file | Missing entirely | 🔴 |
| 15 | Knights of Favonius — không có organization file | Missing entirely | 🟡 |
| 16 | 5/9 nation files (Liyue, Inazuma, Sumeru, Fontaine, Natlan) — empty shells | Template only | 🟡 |
| 17 | 10/11 regional organization files — empty shells | Template only | 🟡 |
| 18 | 7/10 historical figures — empty shells | Template only | 🟡 |
| 19 | All 57 quest files — no summaries written | Template only | 🟡 |
| 20 | Missing Harbinger ranking clarification | Pulcinella rank unclear (community says #5 but game doesn't confirm all rankings) | ⚪ |
| 21 | Barbatos/Venti — no file in gods_and_archons | Major archon missing | 🟡 |
| 22 | Tsaritsa — no file in gods_and_archons | Major archon missing | 🟡 |
| 23 | Major relationships missing from database | Paimon/Traveler, Zhongli/Childe, Venti/Diluc, Arlecchino/siblings, Dainsleif/Traveler | 🟡 |

---

## 4. CHARACTER INTELLIGENCE ISSUES (Chưa sửa)

| # | Issue | Files Affected | Current State | Priority |
|---|---|---|---|---|
| 24 | Sections 3–8 mix canon and speculation without inline tags | All 40+ character_intelligence files | Speculative details only flagged in Section 11 (end of file), not inline | 🟡 |
| 25 | Invented daily habits (Kaeya coin-spinning, Diluc chess) | Kaeya.md, Diluc.md | Stated as facts in Section 6 | 🟡 |
| 26 | Psychological inferences as facts (Kaeya abandonment fear, Diluc fire trauma) | Kaeya.md, Diluc.md | Stated as phobias in Section 3 | 🟡 |
| 27 | Invented origin stories (Zhongli seafood aversion from Archon War sea monsters) | Zhongli.md | Canon aversion, invented explanation | 🟡 |
| 28 | Kaeya at "Cat's Tail" — factual error (his haunt is Angel's Share) | Kaeya.md | Incorrect location | ⚪ |
| 29 | Trust/relationship scores (X/10) presented without "editorial" label | All files | Numerical scores imply false precision | ⚪ |

---

## 5. NOD-KRAI SPECIFIC UNRESOLVED

| # | Issue | Current Evidence | What's Needed | Priority |
|---|---|---|---|---|
| 30 | "Hyperborea" as named kingdom | Topic files use this name. Hymns of the Far North reference "O heirs of Hyperborea." | Need to verify exact quote in source file — is it transcribed verbatim? | 🟡 |
| 31 | "Kuuvahki" energy system | Referenced in Act I summary. | Need direct quote from quest dialogue. | ⚪ |
| 32 | Nod-Krai Factions file has zero source citations | Content may be accurate but unverifiable without citations | Need inline source citations for every named NPC and event | 🟡 |
| 33 | ~~factions_deep_dive.md — Rotwang/Embla/Sampo narrative~~ | ~~Same conflation issue as timeline.md~~ | ~~Need same corrections applied~~ | ✅ RESOLVED (2026-06-20) |
| 34 | ~~connections_to_other_regions.md — Nibelung references~~ | ~~Same Ianikuinen/Nibelung issue as mythology.md~~ | ~~Need same corrections applied~~ | ✅ RESOLVED (2026-06-20) |

---

## 6. CROSS-FILE CONSISTENCY (Chưa đồng bộ)

| # | Issue | Files Affected | Notes |
|---|---|---|---|
| 35 | Fatui founding: Khaenriah.md says "Pierro co-founded with Tsaritsa" vs Nod_Krai.md says "Anastasya alone established Fatui" | Khaenriah.md, Nod_Krai.md, timeline.md | Need to reconcile — possibly both correct at different levels (political founding vs military establishment) |
| 36 | ~~factions_deep_dive.md and connections_to_other_regions.md still contain uncorrected Nibelung/Embla/Sampo claims~~ | ~~topics/nod-krai/~~ | ✅ RESOLVED (2026-06-20) — Both files corrected |
| 37 | relationship_graphs.md contains "Rotwang" node linked to Sibling | topics/relationships/relationship_graphs.md | Node itself is valid (Rotwang is canon) but "Đồng hương Khaenri'ah" link to Sibling needs source |

---

## PRIORITY SUMMARY

| Priority | Count | Action Required |
|---|---|---|
| 🔴 Blocking | 4 | Cache Act II–VII sources; populate races/gods directories; create Snezhnaya.md |
| 🟡 Important | 23 | Source citations; corrections propagation; content population |
| ⚪ Low Priority | 5 | Character intelligence inline tags; minor factual corrections |
| **Total** | **37** | |

---

## NEXT STEPS (Recommended Order)

1. **Cache source files for Archon Quest Acts II–VII** — This resolves issues #1, #2, #5 and unblocks verification of most Nod-Krai content.
2. **Propagate corrections to factions_deep_dive.md and connections_to_other_regions.md** — Same Nibelung/Embla/Sampo fixes as already applied to mythology.md and timeline.md.
3. **Add inline classification tags to character_intelligence files** — Systematic pass adding 🟡/❓ to Sections 3–8 where claims aren't sourced.
4. **Populate empty template files** — Priority: Snezhnaya.md, Barbatos, Tsaritsa, then races/.
5. **Verify "Hyperborea" quote** — Check if Hymns of the Far North source file uses this exact word.
6. **Tag v6.6 artifact set** as unreleased/unconfirmed.
