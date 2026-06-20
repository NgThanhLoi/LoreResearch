# Pass 4 Source Gaps

Generated: 2026-06-20 — Claude Code Pass 4 Local VLAQ Coverage Mapping

## Confirmed Remaining Gaps

| Gap ID | Topic | Current status | Reason | Needed source | Priority | Notes |
| ------ | ----- | -------------- | ------ | ------------- | -------- | ----- |
| SG-001 | Dottore source package | blocked_by_missing_source | No local files exist for Dottore | Direct quest/dialogue, character story, voice lines | P0 | No VLAQ file mentions Dottore by name in archon quest context; blocked |
| SG-002 | Sandrone source package | blocked_by_missing_source | No local files exist for Sandrone | Direct quest/dialogue, character story, voice lines | P0 | No local source; blocked |
| SG-003 | Columbina primary voice/source | indirect_source_only | No Columbina voice line file or quest appearance locally | Voice lines, quest dialogue if any | P1 | Audited source-light; no VLAQ match |
| SG-004 | Skirk direct source | source_missing | Zero VLAQ files contain "Skirk" keyword | Quest dialogue with Skirk | P0 | Skirk appears in later content not transcribed locally |
| SG-005 | Gnosis as shackles / control mechanism | indirect_source_only | No direct statement found in inspected files | Direct quest dialogue stating Gnosis purpose | P1 | Yae's dialogue is supportive but indirect; remains THEORY |
| SG-006 | Third Descender specific identity | partial_coverage | "Kẻ Đổ Bộ" referenced but identity not confirmed | Quest dialogue revealing Third Descender | P1 | "Cội Nguồn Nghiêng Ngả" has partial reference; full reveal likely in later quest |
| SG-007 | Nod-Krai Acts II–VII | source_missing | No VLAQ files cover Nod-Krai quest content | Full quest transcripts for Acts II–VII | P0 | Some Nod-Krai arc folders may exist under different names; not confirmed |
| SG-008 | character_stories/ folder | source_missing | Folder does not exist in workspace | Character story text files for all characters | P0 | Blocks Level 3 audits; needs genshin-db or Fandom API |
| SG-009 | official/ folder | source_missing | Folder does not exist in workspace | Official posts, announcements, web manga text | P2 | Low urgency compared to other gaps |
| SG-010 | World quest dialogue coverage | partial_coverage | Only 4 VLWQ files exist | World quest transcripts | P2 | Hundreds of world quests uncovered |
| SG-011 | Full quest transcript layer | source_missing | No AQ/WQ/SQ/IQ full transcript files exist | Quest transcripts distinct from voice-line summaries | P2 | VLAQ provides partial coverage but not full transcripts |
| SG-012 | Wanderer Irminsul rewrite dedicated scene | partial_coverage | Rewrite climax may not be fully transcribed | Dedicated interlude quest transcript | P1 | Coverage partial in Sumeru final + Cội Nguồn Nghiêng Ngả |
| SG-013 | Makoto (Raiden's twin) direct dialogue | partial_coverage | Not isolated to a specific VLAQ file | Raiden Story Quest or specific AQ scene | P2 | Likely in Raiden Story Quest (not in archon_quests/) |
| SG-014 | Traveler memory exception after Irminsul rewrite | coverage_not_found | Not specifically confirmed in inspected files | Quest dialogue confirming Traveler remembers | P1 | May exist in unread portions of Sumeru final files |

## Newly Discovered Gaps

| Gap ID | Topic | Discovery source | Notes |
| ------ | ----- | --------------- | ----- |
| SG-012 | Wanderer rewrite dedicated scene | Pass 4 VLAQ search | Only 1 file in "Cội Nguồn Nghiêng Ngả"; rewrite event itself may be in Sumeru final files but not isolated |
| SG-013 | Makoto direct dialogue | Pass 4 keyword search | Makoto not found as keyword in VLAQ — likely in Story Quest (separate from archon quests) |
| SG-014 | Traveler memory exception | Pass 4 claim mapping | Critical plot point (Traveler remembers after Irminsul rewrite) not confirmed in inspected portions |

## Gap Closure Candidates

| Gap | Candidate local source | Candidate external source | Risk | Recommended pass |
| --- | ---------------------- | ------------------------- | ---- | ---------------- |
| SG-004 (Skirk) | None locally | EX-API-003 (Fandom API — quest transcript) | Medium — community transcription | Pass 5+ |
| SG-005 (Gnosis shackles) | Partial in VLAQ; may also be in book_texts/ | EX-API-003, local book texts | Low — already have indirect | Pass 5 |
| SG-006 (Third Descender) | Cội Nguồn Nghiêng Ngả full read | EX-API-003 | Low | Pass 5 |
| SG-008 (character_stories/) | None locally | EX-API-001 (genshin-db), EX-API-003 | Medium — secondary transcription | Pass 5 |
| SG-012 (Wanderer rewrite) | Akasha Rung Động files (unread portions) | EX-API-003 | Low | Pass 5 |
| SG-014 (Traveler exception) | Akasha Rung Động files (unread portions) | EX-API-003 | Low | Pass 5 |

**Note:** Do not ingest external sources in this pass. Candidates listed for future reference only.

## Pass 4.1 Strictness Additions

The following gaps were clarified or added during Pass 4.1 strictness correction:

| Gap ID | Topic | Status | Reason deep read needed | Priority |
| ------ | ----- | ------ | ----------------------- | -------- |
| SG-015 | Focalors sacrifice exact scene | local_source_candidate | `Vũ Điệu Của Tội Lỗi/Vở Kịch Của Sóng Đen Và Sương Trắng.md` not inspected; keyword match only | P1 |
| SG-016 | Sibling direct encounter / reveal | local_source_candidate | `Chúng Ta Ắt Sẽ Trùng Phùng/Hiến Tế Không Tự Nguyện.md` not inspected; keyword match only | P1 |
| SG-017 | Caribert / Khaenri'ah deep lore | local_source_candidate | 3 Caribert files + 4 Khúc An Hồn files not inspected; keyword match only | P1 |
| SG-012 | Wanderer Irminsul rewrite mechanics | local_source_candidate | `Akasha Rung Động/Mời Uống Ly Rượu Mừng Chiến Thắng.md` not inspected | P1 |
| SG-014 | Traveler memory exception | coverage_not_found | Not confirmed in any inspected file; inferred from context only | P1 |
| SG-006 | Third Descender identity | partial (opening only) | `Cội Nguồn Nghiêng Ngả` only first 40 lines read; Nahida explanation expected later | P1 |
| SG-018 | Rukkhadevata memory erasure mechanics | local_source_candidate | `Akasha Rung Động/Ngày Jnagarbha.md` not inspected; keyword match only | P1 |

All above gaps can potentially be closed with **local deep reads only** — no external ingestion required.
