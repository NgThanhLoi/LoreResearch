# Pass 8 Fandom API Test Report

Generated: 2026-06-20 - Codex Pass 8 Fandom API Character Story Ingestion Test

## Purpose

Pass 8 tested Fandom MediaWiki API as an alternative route for character story ingestion after Pass 7 confirmed that genshin-db does not expose character-story fields. This pass targeted Kaeya only.

## API Routes Tested

| Route / Page title | Status | Returned content type | Useful for character story? | Notes |
| ------------------ | ------ | --------------------- | --------------------------- | ----- |
| `action=parse&page=Kaeya/Lore&prop=sections` | reachable | moved/redirect-style page with no useful sections | no | Page revision indicates move to `Kaeya/Profile`. |
| `action=query&titles=Kaeya/Lore&prop=revisions&rvprop=ids|timestamp|user|comment` | reachable | revision metadata | no | Useful only to document move history. |
| `action=parse&page=Kaeya&prop=sections` | reachable | main gameplay page sections | no | Returned gameplay, availability, notes, other languages, references, navigation. |
| `action=query&titles=Kaeya&prop=revisions&rvprop=ids|timestamp|user|comment` | reachable | revision metadata | no | Main page is not the character story source. |
| `action=parse&page=Kaeya/Story&prop=sections` | reachable | redirect-style page with no useful sections | no | Page revision indicates redirect update after `/Lore` moved to `/Profile`. |
| `action=query&titles=Kaeya/Story&prop=revisions&rvprop=ids|timestamp|user|comment` | reachable | revision metadata | no | Useful only to document rejected route. |
| `action=parse&page=Kaeya/Profile&prop=sections` | reachable | structured profile page sections | yes | Returned `Character Stories`, `Character Details`, `Character Story 1-5`, and `Vision`. |
| `action=parse&page=Kaeya/Profile&prop=wikitext|sections|revid` | successful | wikitext plus section metadata and revision id | yes | Used to extract `{{Character Story}}` template fields. |
| `action=query&titles=Kaeya/Profile&prop=revisions&rvprop=ids|timestamp|content&rvslots=main&formatversion=2` | successful | revision metadata and page source | yes | Used to confirm revision metadata and extraction reproducibility. |
| `action=parse&page=Kaeya/Voice-Overs&prop=sections` | reachable | voice-over page route | no | Rejected because voice-over-only content already exists locally and is outside Pass 8 source type. |

## Successful Route

- endpoint: `https://genshin-impact.fandom.com/api.php`
- action: `parse`
- page title: `Kaeya/Profile`
- API route: `action=parse&page=Kaeya/Profile&prop=wikitext|sections|revid&format=json`
- revision id / oldid: `2108515`
- revision timestamp: `2026-06-09T03:14:34Z`
- sections found: Character Details, Character Story 1, Character Story 2, Character Story 3, Character Story 4, Character Story 5, Vision
- extraction method: parse `{{Character Story}}` template fields from page wikitext and accept only in-game-like character story/profile sections.

## Failed / Rejected Routes

| Route | Reason rejected |
| ----- | --------------- |
| `Kaeya/Lore` | Moved to `Kaeya/Profile`; no useful direct section extraction. |
| `Kaeya` | Main gameplay page; not a character story source. |
| `Kaeya/Story` | Redirect-style page; no useful direct section extraction. |
| `Kaeya/Voice-Overs` | Voice-over-only route; voice lines already exist locally and are not character story source text. |

## Safety Confirmation

- Fandom MediaWiki API only
- no browser scraping
- no mass ingestion
- no character page update
- no theory upgrade
- no Dottore, Sandrone, Columbina, or Skirk update
- no Honey Impact, Ambr, Reddit, leaks, or random web pages used
