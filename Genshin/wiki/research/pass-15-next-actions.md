# Pass 15 — Next Actions

## Immediate Next Pass

### Pass 16 — Sumeru Character Foundation Batch

**Scope** (from Pass 11 batch roadmap):

```
Alhaitham
Candace
Collei
Cyno
Dehya
Dori
Faruzan
Kaveh
Layla
Nahida
Nilou
Sethos
Tighnari
Wanderer
```

**Expected approach:**
* Same source-first Level 2 foundation methodology as Passes 13–15
* Read local voice-line files for Sumeru characters
* Use `_character-template-v2.md` Standard Level 2 variant
* Guard Irminsul/Forbidden Knowledge/Nahida claims without direct source
* Guard Wanderer/Scaramouche identity with CON-register awareness
* Preserve existing audited pages (check Wanderer status)

**Guardrails for Pass 16:**
* Nahida: Guard Irminsul authority, Rukkhadevata memory merge, Archon power scope
* Wanderer: Guard Irminsul rewrite, identity crisis, Fatui history — check existing contradiction register entries
* Alhaitham: Guard Akademiya political power and intellectual superiority claims
* Cyno: Guard Matra authority and judgment severity
* No Enkanomiya/Khaenri'ah/deep lore imports without local source

## Deferred Work

| Pass range | Work type | Status |
|-----------|-----------|--------|
| Pass 17 | Fontaine Character Foundation Batch | Pending — after Pass 16 |
| Pass 18 | Natlan Character Foundation Batch | Pending — after Pass 17 |
| Pass 19 | Cross-faction source-light cleanup | Pending — after regional batches |
| Pass 20+ | Character Story Provenance Ingestion | Deferred — requires source files |
| Pass 26+ | Priority Claim Mapping (Level 3/4) | Deferred — requires provenance |

## Pattern Observations from Passes 13–15

1. **Consistent source gap**: All regional batches share the same pattern — identity/personality/faction role have primary sources from voice lines, while backstory/powers/major lore claims remain source_light pending character story provenance.

2. **Template compliance stable**: The table-format Audit Status introduced in Pass 15 provides more consistent formatting than Pass 13-14's mixed approaches. Recommend maintaining table format for Pass 16+.

3. **High-risk characters per region**: Each region has 3-5 characters requiring extra guardrails (power-scaling, political influence, or deep lore). For Sumeru: Nahida, Wanderer, and Alhaitham are likely highest-risk.

4. **Character-story provenance remains the critical blocker**: Until `sources/character_stories/` is populated, no character can advance beyond Level 2 for backstory/lore claims. This should remain explicitly deferred rather than worked around.

## Recommendations

1. Proceed with Pass 16 (Sumeru) following the same methodology.
2. Maintain table-format Audit Status as established in Pass 15.
3. Character-story provenance and claim mapping remain deferred to Pass 20+ / Pass 26+ unless explicitly approved.
4. Check contradiction-register for Wanderer-related entries before Pass 16.
5. After all regional batches (Passes 13–18), assess whether Pass 19 cross-faction cleanup is needed or if it can merge with Pass 20.
