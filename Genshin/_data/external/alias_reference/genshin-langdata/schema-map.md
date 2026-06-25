# genshin-langdata — Schema Map

**Source:** genshin-langdata  
**Status:** Planned — based on Hermes report, not yet verified against actual files

---

## Reported upstream entry structure

Based on Hermes analysis, each dictionary entry contains:

```json
{
  "EN": "string — English name",
  "JA": "string — Japanese name",
  "zhCN": "string — Simplified Chinese name",
  "zhTW": "string — Traditional Chinese name",
  "pronunciationJa": "string — Japanese pronunciation (hiragana/katakana)",
  "notes": "string — additional notes (NOT lore evidence)",
  "tags": ["array — category tags"],
  "examples": [
    {
      "text": "string — example usage",
      "source": "string — source reference for the example"
    }
  ]
}
```

**Note:** Actual schema must be verified when data is locally available. Upstream may have additional or different fields.

---

## Mapping to alias_index.json

| Upstream field | Maps to | Notes |
|----------------|---------|-------|
| EN | alias (language: en) | Primary English name |
| JA | alias (language: ja) | Japanese name |
| zhCN | alias (language: zh-CN) | Simplified Chinese |
| zhTW | alias (language: zh-TW) | Traditional Chinese |
| tags | entity_type inference | Category tags help classify |
| notes | notes (if relevant) | NOT lore evidence |
| examples | EXCLUDED | Not imported — not alias data |
| pronunciationJa | EXCLUDED | Not needed for alias resolution |

---

## Mapping to entity_name_map.json

| Upstream field | Maps to | Notes |
|----------------|---------|-------|
| EN | canonical_name, names.en | Primary identifier |
| JA | names.ja | |
| zhCN | names.zhCN | |
| zhTW | names.zhTW | |
| tags | entity_type | Inferred from category |

---

## Mapping to term_multilang_map.json

| Upstream field | Maps to | Notes |
|----------------|---------|-------|
| EN | canonical_term, names.en | |
| JA | names.ja | |
| zhCN | names.zhCN | |
| zhTW | names.zhTW | |
| tags | term_type, tags | Category classification |

---

## Reported dictionary file categories

```text
characters (by region: Mondstadt, Liyue, Inazuma, Sumeru, Fontaine, Natlan, Snezhnaya, Nod-Krai)
artifacts
weapons
items
quests
dialogue
locations
organizations
story terms
```

---

## Schema verification needed

When data arrives, verify:

1. Actual field names match reported structure
2. Presence/absence of additional fields
3. Consistency across dictionary files
4. Language field coverage per entry
5. Whether entries have stable IDs or are position-based
6. Whether there are duplicate entries across files
