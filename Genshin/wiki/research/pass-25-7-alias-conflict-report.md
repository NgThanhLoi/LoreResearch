# Pass 25.7 — Alias Conflict Report

**Date:** 2026-06-25  
**Status:** Deferred — no alias data available to analyze

---

## Summary

No alias conflicts can be reported because genshin-langdata is not yet locally available. No alias index has been built.

---

## Expected conflict categories (to analyze in Pass 25.7.1)

When data arrives, the conflict report must cover:

### 1. Duplicate aliases pointing to multiple entities

```text
Example: "Traveler" → Aether AND Lumine
Example: "Shogun" → Raiden Shogun AND historical Shogun references
```

### 2. Cross-language alias collisions

```text
Example: A Japanese name that matches a different character's Chinese name
```

### 3. Likely duplicate character/entity entries

```text
Example: "Raiden Ei" vs "Beelzebul" vs "Raiden Shogun" — same entity, different aliases
```

### 4. High-risk ambiguous terms

| Category | Examples |
|----------|----------|
| Archon titles vs character names | "Barbatos" = Venti, "Morax" = Zhongli |
| Harbinger codenames vs real names | "Tartaglia" = "Childe" = "Ajax" |
| Region-shared terms | Terms used differently across regions |
| Story terms with multiple meanings | "Vision", "Gnosis", "Archon" |

### 5. Nod-Krai aliases requiring review

```text
Columbina Hyposelenia — Harbinger + possible alternate name
Kuutar — verify uniqueness across languages
Ineffa — verify uniqueness
Aino — common Finnish name, possible ambiguity
Lauma — possible mythological reference ambiguity
Varka — verify no collision with other entities
```

### 6. Fatui/Abyss/Khaenri'ah aliases requiring review

```text
All Harbinger dual-name mappings (codename ↔ real name)
Abyss Order faction vs location references
Khaenri'ah historical vs present references
```

---

## Conflict resolution policy

When conflicts are found:

1. **Do NOT auto-resolve** unless clearly identical duplicates within same entity
2. Mark as `ambiguity_status: "conflict"` or `"needs_human_review"`
3. Record both/all mappings in alias index
4. Flag for human review
5. Never treat alias match as identity proof when ambiguous

---

## Status

**Deferred to Pass 25.7.1** — awaiting local data provision.
