---
source_id: CS-KAEYA-001
source_type: api_provenance_record
source_status: extraction_index_candidate
reliability: medium
character: Kaeya
language: en
retrieval_method: Fandom MediaWiki API
retrieval_date: 2026-06-20
hardening_pass: Pass 8.1
hardening_date: 2026-06-21
ingestion_pass: Pass 8
claim_mapping_status: requires_api_reopen_for_claim_mapping
provenance:
  api: Fandom MediaWiki API
  wiki: Genshin Impact Wiki
  page_title: "Kaeya/Profile"
  api_route: "action=query&revids=2108515&prop=revisions&rvprop=ids|timestamp|content&rvslots=main&formatversion=2&format=json"
  revision_id: "2108515"
  oldid: "2108515"
  pageid: "12187"
  parentid: "2062397"
  revision_timestamp: "2026-06-09T03:14:34Z"
  retrieved_sections:
    - Character Details
    - Character Story 1
    - Character Story 2
    - Character Story 3
    - Character Story 4
    - Character Story 5
    - Vision
usage_limits:
  - Exact extracted story text is not stored locally because EXTERNAL_SOURCE_POLICY.md discourages pasting long copyrighted dialogue/text into source files.
  - Claim mapping must re-open the recorded API revision before using this source.
  - Do not use as canon until claim-mapped and human-reviewed.
  - Do not update character pages directly from this file.
  - Prefer official/local in-game source if later available.
  - Treat Fandom editor summary as secondary, not primary.
---

# Kaeya - Character Story API Provenance Record

## Provenance

| Field | Value |
| ----- | ----- |
| Source/API | Fandom MediaWiki API |
| Wiki | Genshin Impact Wiki |
| Page title | `Kaeya/Profile` |
| API route | `action=query&revids=2108515&prop=revisions&rvprop=ids|timestamp|content&rvslots=main&formatversion=2&format=json` |
| Revision ID / oldid | `2108515` |
| Page ID | `12187` |
| Parent revision | `2062397` |
| Revision timestamp | `2026-06-09T03:14:34Z` |
| Retrieval date | `2026-06-20` |
| Hardening date | `2026-06-21` |
| Language | English |
| Local path | `sources/character_stories/Kaeya.md` |

## Hardening Decision

Pass 8.1 re-opened the exact Fandom MediaWiki API revision `2108515` for `Kaeya/Profile` and confirmed that the target `{{Character Story}}` template fields are extractable. The exact text fields are not stored in this local file because the external-source policy says not to paste long copyrighted dialogue/text into source files.

This file is therefore a provenance and extraction index, not a local transcript. Claim mapping must re-open the API revision above, extract the listed `textN` fields, and then record only claim-level evidence approved by human review.

## Hardened API Field Index

| Section | Template index | Title field | Text field | Unlock / field info | Mentions | Cleaned char count | Cleaned text SHA-256 |
| ------- | -------------- | ----------- | ---------- | ------------------- | -------- | ------------------ | ------------------- |
| Character Details | 1 | `title1` | `text1` | profile field | Diluc, Jean | 353 | `b7977770c0320c1d40a03c61873a190ba494661cc9ad956eb724b8b256b01f67` |
| Character Story 1 | 2 | `title2` | `text2` | Friendship 2 | none listed | 1009 | `3440c69155beb9bf1f14f4fe2680ff6fb9235820a964ffa7f8986280a75d4a1a` |
| Character Story 2 | 3 | `title3` | `text3` | Friendship 3 | Jean, Varka | 1265 | `df00c2302d6f9f4a60b6ab107162f754d7f86885ec944b021de4b31166455925` |
| Character Story 3 | 4 | `title4` | `text4` | Friendship 4 | none listed | 957 | `a0769b55ddff174d351cce755644c02c1ca3bf4cd771c2135c49a4ad4a89b533` |
| Character Story 4 | 5 | `title5` | `text5` | Friendship 5 | Crepus, Varka | 1059 | `7cdd054021bf44960c785a1b5c224f3bc196a80d6e9c4b7ff90781277c98a107` |
| Character Story 5 | 6 | `title6` | `text6` | Friendship 6 | Crepus, Diluc, Ursa the Drake | 1297 | `5f721cf7803a5b2a81749963ae8ba2218452107266b94edca89cd919550ec580` |
| Vision | 8 | `title8` | `text8` | Friendship 6 | Crepus, Diluc | 2992 | `c92e501ff88840bcff5f111a11811741b40368829713f3171612f0236d3d8442` |

## Extraction Instructions For Claim Mapping

1. Re-open `https://genshin-impact.fandom.com/api.php` using the recorded `action=query&revids=2108515...` route.
2. Read the main revision content from `query.pages[0].revisions[0].slots.main.content`.
3. Locate the `==Character Stories==` section and parse the `{{Character Story}}` template.
4. Use only the fields listed in the hardened field index.
5. Verify the cleaned text against the recorded character counts and SHA-256 fingerprints before mapping claims.
6. Record claim-level evidence in a Pass 9 claim map; do not backfill `wiki/entities/characters/Kaeya.md` without human approval.

## Evidence Records

| Evidence record | Source section | Local evidence stored | Claim mapping requirement |
| --------------- | -------------- | --------------------- | ------------------------- |
| CS-KAEYA-001-E01 | Character Details | field path, mentions, char count, text hash | Re-open API revision and inspect `text1`. |
| CS-KAEYA-001-E02 | Character Story 1 | field path, unlock, char count, text hash | Re-open API revision and inspect `text2`. |
| CS-KAEYA-001-E03 | Character Story 2 | field path, unlock, mentions, char count, text hash | Re-open API revision and inspect `text3`. |
| CS-KAEYA-001-E04 | Character Story 3 | field path, unlock, char count, text hash | Re-open API revision and inspect `text4`. |
| CS-KAEYA-001-E05 | Character Story 4 | field path, unlock, mentions, char count, text hash | Re-open API revision and inspect `text5`. |
| CS-KAEYA-001-E06 | Character Story 5 | field path, unlock, mentions, char count, text hash | Re-open API revision and inspect `text6`. |
| CS-KAEYA-001-E07 | Vision | field path, unlock, mentions, char count, text hash | Re-open API revision and inspect `text8`. |

## Verification Notes

- [x] Local provenance record exists in workspace
- [x] Exact API revision is pinned
- [x] Character-story template fields are indexed
- [x] Exact long text is intentionally not stored locally
- [x] Secondary transcription / community-maintained source
- [x] Needs API reopen for claim mapping
- [x] Needs human review
- [ ] Official source
- [ ] Claim-mapped
