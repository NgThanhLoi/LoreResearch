# Pass 9 Kaeya Evidence Verification Report

## Purpose

Pass 9 re-opened Fandom MediaWiki API revision `2108515` and verified the character-story fields indexed by `CS-KAEYA-001`. `CS-KAEYA-001` remains a pinned API provenance record, not a local transcript.

## API Reopen

| Field | Value |
| ----- | ----- |
| API | `https://genshin-impact.fandom.com/api.php` |
| Page title | `Kaeya/Profile` |
| Revision ID | `2108515` |
| Route | `action=query&revids=2108515&prop=revisions&rvprop=ids|timestamp|content&rvslots=main&formatversion=2&format=json` |
| Timestamp | `2026-06-09T03:14:34Z` |

## Field Verification

| Evidence ID | Section | Text field | Expected char count | Actual char count | Expected SHA-256 | Actual SHA-256 | Status |
| ----------- | ------- | ---------- | ------------------- | ----------------- | ---------------- | -------------- | ------ |
| CS-KAEYA-001-E01 | Character Details | `text1` | 353 | 353 | `b7977770c0320c1d40a03c61873a190ba494661cc9ad956eb724b8b256b01f67` | `b7977770c0320c1d40a03c61873a190ba494661cc9ad956eb724b8b256b01f67` | verified |
| CS-KAEYA-001-E02 | Character Story 1 | `text2` | 1009 | 1009 | `3440c69155beb9bf1f14f4fe2680ff6fb9235820a964ffa7f8986280a75d4a1a` | `3440c69155beb9bf1f14f4fe2680ff6fb9235820a964ffa7f8986280a75d4a1a` | verified |
| CS-KAEYA-001-E03 | Character Story 2 | `text3` | 1265 | 1265 | `df00c2302d6f9f4a60b6ab107162f754d7f86885ec944b021de4b31166455925` | `df00c2302d6f9f4a60b6ab107162f754d7f86885ec944b021de4b31166455925` | verified |
| CS-KAEYA-001-E04 | Character Story 3 | `text4` | 957 | 957 | `a0769b55ddff174d351cce755644c02c1ca3bf4cd771c2135c49a4ad4a89b533` | `a0769b55ddff174d351cce755644c02c1ca3bf4cd771c2135c49a4ad4a89b533` | verified |
| CS-KAEYA-001-E05 | Character Story 4 | `text5` | 1059 | 1059 | `7cdd054021bf44960c785a1b5c224f3bc196a80d6e9c4b7ff90781277c98a107` | `7cdd054021bf44960c785a1b5c224f3bc196a80d6e9c4b7ff90781277c98a107` | verified |
| CS-KAEYA-001-E06 | Character Story 5 | `text6` | 1297 | 1297 | `5f721cf7803a5b2a81749963ae8ba2218452107266b94edca89cd919550ec580` | `5f721cf7803a5b2a81749963ae8ba2218452107266b94edca89cd919550ec580` | verified |
| CS-KAEYA-001-E07 | Vision | `text8` | 2992 | 2992 | `c92e501ff88840bcff5f111a11811741b40368829713f3171612f0236d3d8442` | `c92e501ff88840bcff5f111a11811741b40368829713f3171612f0236d3d8442` | verified |

## Safety Notes

- No full character-story text is stored in this report.
- No page update was performed.
- No source ID was changed or created.
- No claim was upgraded directly.
- Mapping reports use short paraphrases and evidence IDs only.
