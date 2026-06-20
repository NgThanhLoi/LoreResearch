# Pass 5 Source Gaps

Generated: 2026-06-20 — Claude Code Pass 5 Deep Read for Partial VLAQ Claims

## Remaining Gaps After Deep Read

| Gap ID | Claim ID | Topic | Status after Pass 5 | Why still unresolved | Needed source | Recommended next pass |
| ------ | -------- | ----- | ------------------- | -------------------- | ------------- | --------------------- |
| SG-001 | CLM-001 | Dottore rank/faction within Fatui | blocked_by_missing_source | No Dottore-focused quest dialogue in local sources | Character stories, quest transcripts, voice lines | Controlled source ingestion (genshin-db) |
| SG-002 | CLM-002 | Dottore Segments (multiple bodies) | blocked_by_missing_source | Sumeru AQ mentions Dottore but Segments detail not in read files | Sumeru AQ full transcripts (earlier acts) | Controlled source ingestion or targeted local search |
| SG-003 | CLM-003 | Dottore experiments on children/delusions | blocked_by_missing_source | Nahida mentions Dottore in passing; no experimental detail | Character stories, affected character voice lines | Controlled source ingestion |
| SG-004 | CLM-004 | Sandrone Harbinger identity | blocked_by_missing_source | Zero mentions in any read file | Character profile, quest appearance if any | Controlled source ingestion |
| SG-005 | CLM-005 | Sandrone machine/puppet body | blocked_by_missing_source | Zero mentions in any read file | Official character description, quest dialogue | Controlled source ingestion |
| SG-006 | CLM-006 | Sandrone-Rotwang link | blocked_by_missing_source | No connection in any read file | Weapon/artifact lore (AR-0001 mentions Rotwang but not Sandrone) | Local deep read of artifact/weapon files |
| SG-007 | CLM-007 | Columbina = Kuutar / Moon Maiden | indirect_source_only | No Columbina content in any read file | Direct quest/voice confirmation | External ingestion needed |
| SG-008 | CLM-008 | Columbina ancient power / strength | indirect_source_only | No Columbina content in any read file | Harbinger voice lines about Columbina | Local voice line search or ingestion |
| SG-009 | CLM-009 | Skirk identity and Abyss connection | source_missing | Only brief introduction scene; no lore | Skirk story quest, Childe-related content | External ingestion or later quest file |
| SG-010 | CLM-010 | Gnosis as shackles / control mechanism | keep_theory | No file uses "shackles" framing; Gnosis described as tool/resource | Quest that directly states Gnosis controls Archons | Unknown — may not exist in game |
| SG-011 | CLM-011 | Third Descender specific identity | needs_external_source_or_later_quest | Descender concept confirmed but ordinal numbering absent | Quest that enumerates Descenders by number | Later quest file or API source |
| SG-012 | CLM-012 | Nod-Krai Acts II–VII story events | blocked_by_missing_source | No Nod-Krai quest files exist locally | Full quest transcripts for Acts II-VII | External ingestion (Fandom or genshin-db) |
| SG-013 | CLM-019 | Character stories for Level 3 audits | blocked_by_missing_source | Zero character_stories/ directory content | Character story texts (109 characters) | Controlled source ingestion (genshin-db) |
| SG-014 | CLM-020 | World quest lore claims (general) | needs_primary_source | Only 4 world quest voice files exist locally | World quest transcripts | External ingestion |
| SG-015 | N/A | Official sources directory | unusable | sources/official/ does not exist | Official HoYoverse posts, patch notes | Manual curation |
| SG-016 | CLM-015 | Wanderer name adoption post-rewrite | partial | Rewrite confirmed but "Wanderer" identity not shown | Later Wanderer story quest | Targeted local search or ingestion |

## Closed or Reduced Gaps

| Gap | Claim ID | What improved | Evidence file | New status |
| --- | -------- | ------------- | ------------- | ---------- |
| CLM-014 gap (Focalors sacrifice) | CLM-014 | All sub-claims now have direct evidence | Vở Kịch Của Sóng Đen Và Sương Trắng.md | closed — ready for human review |
| CLM-015 gap (Irminsul rewrite) | CLM-015 | Rewrite execution + Traveler exception confirmed | Chim Đêm Sa Ngã Dưới Bức Rèm.md + Mời Uống Ly Rượu Mừng Chiến Thắng.md | reduced — core confirmed, name adoption partial |
| CLM-016 gap (memory erasure) | CLM-016 | Both identity AND memory erasure confirmed | Mời Uống Ly Rượu Mừng Chiến Thắng.md | closed — ready for human review |
| CLM-018 gap (file-level confirmation) | CLM-018 | All 12 files read; all major sub-claims confirmed | 12 files across 3 quest arcs | closed — ready for human review |
| CLM-011 gap (deep read) | CLM-011 | Descender concept confirmed; ordinal identity still missing | Chim Đêm Sa Ngã Dưới Bức Rèm.md | reduced — concept confirmed, specific identity unresolved |

## Summary

**Gaps closed:** 3 (CLM-014, CLM-016, CLM-018)
**Gaps reduced:** 2 (CLM-015, CLM-011)
**Gaps unchanged:** 11 (CLM-001 through CLM-006, CLM-007/008, CLM-009, CLM-010, CLM-012, CLM-013 through CLM-015 name sub-claim, CLM-019/020)

**Largest remaining blockers:**
1. Character stories package (109 characters) — requires genshin-db ingestion
2. Nod-Krai Acts II–VII — requires quest transcript ingestion
3. Dottore/Sandrone source package — requires targeted ingestion
4. Skirk/Columbina — requires specific quest or voice line source
