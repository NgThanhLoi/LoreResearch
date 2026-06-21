# Pass 14 — Next Actions

## Recommended Next Pass

**Pass 15 — Inazuma Character Foundation Batch**

## Scope (from Pass 11 Batch Roadmap)

Target characters (Inazuma region):

- Arataki Itto
- Chiori
- Faruzan (Sumeru-adjacent but Inazuma-linked)
- Gorou
- Kaedehara Kazuha
- Kamisato Ayaka
- Kamisato Ayato
- Kirara
- Kujou Sara
- Kuki Shinobu
- Raiden Shogun (preserve existing if audited — Tier A high-risk)
- Sangonomiya Kokomi
- Sayu
- Shikanoin Heizou
- Thoma
- Yae Miko
- Yanfei (already done in Liyue — skip if duplicate)
- Yoimiya

Note: Exact character list should be confirmed from Pass 11 full-character-coverage-plan before execution. Some cross-region characters may have been assigned to different batches.

## Guardrails for Pass 15

- Same source-first policy as Pass 13/14.
- Use `_character-template-v2.md` for all new pages.
- Preserve existing audited pages (especially Raiden Shogun if a page exists).
- Do not ingest external sources or create source IDs.
- Do not perform character-story provenance (deferred to Pass 20+).
- Do not claim-map the batch (deferred to Pass 26+).
- Guard Inazuma-specific high-risk lore: Eternity/Inazuma decree, Ei/Shogun separation, Tatarigami, Sacred Sakura timeline, Vision Hunt Decree aftermath.

## Deferred Work

| Work | Deferred to | Reason |
|------|-------------|--------|
| Character-story provenance ingestion | Pass 20+ | Requires raw character story files and ingestion pipeline |
| Priority claim mapping (Archons, Traveler, Harbingers) | Pass 26+ | Requires source IDs, evidence IDs, and reviewed changelogs |
| Backstory upgrade to canon | Post-provenance passes | Cannot upgrade `source_light` to `primary_source_found` without file-level evidence |
| Relationship claim mapping | Post-provenance passes | Requires quest dialogue and story quest transcripts |
| Power system detailed mapping | Separate governance pass | Requires cross-character power-scaling review |

## Additional Recommendations

1. **Batch 15 pre-check**: Verify which Inazuma characters already have wiki pages before running the batch.
2. **Raiden Shogun**: If a page exists with Tier A audit, preserve it entirely. The Ei/Shogun separation is a documented contradiction (CON-0013) that requires careful handling.
3. **Kazuha**: High fanfic utility character — ensure OOC risks around "wandering samurai" flattening are registered.
4. **Template consistency**: Minor format variations appeared in Pass 14 (some pages use table format for Audit Status, others use bullet lists). Consider standardizing in Pass 15.
5. **Source coverage pattern**: The pattern from Pass 13–14 is stable. Identity and faction role are consistently `primary_source_found` from voice lines. Backstory and major lore claims are consistently `source_light` / `blocked_by_missing_source`. This pattern will likely repeat for all regional batches until provenance passes begin.
