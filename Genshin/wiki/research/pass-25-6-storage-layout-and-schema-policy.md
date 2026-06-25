# Pass 25.6 — Storage Layout and Schema Policy

**Date:** 2026-06-25  
**Status:** Policy document — no data imported

---

## Planned directory structure

```text
_data/external/
  README.md                          (exists — root policy)

  structured_reference/
    README.md                        (exists — tier policy)
    genshin-lore-graph/
      manifest.json                  (source manifest — see schema below)
      source-metadata.md             (provenance, license, limitations)
      schema-map.md                  (field mapping documentation)
      raw/                           (unmodified upstream files)
      normalized/                    (schema-mapped, cleaned outputs)
      indexes/                       (derived lookup indexes)
    project-amber/
      manifest.json
      source-metadata.md
      schema-map.md
      snapshots/                     (selective metadata snapshots)

  alias_reference/
    README.md                        (exists — tier policy)
    genshin-langdata/
      manifest.json
      source-metadata.md
      schema-map.md
      raw/                           (unmodified dictionary files)
      normalized/                    (extracted/cleaned alias entries)
      indexes/                       (derived alias indexes)

  official_site_support/
    README.md                        (exists — tier policy)

  secondary_synthesis/
    README.md                        (exists — tier policy)

  tooling_reference/
    README.md                        (exists — tier policy)
    genshin-text-search/
      manifest.json
      setup-notes.md                 (local tool setup documentation)
      freshness-report.md            (version/patch coverage status)

  quarantine/
    README.md                        (exists — tier policy)

_data/indexes/
  alias_index.json                   (merged alias lookup — Pass 25.7)
  entity_name_map.json               (entity name → ID map — Pass 25.7)
  term_multilang_map.json            (multilingual term map — Pass 25.7)
  graph_entity_lookup.json           (graph node lookup — Pass 25.8)
  worldview_concept_lookup.json      (ontology concept lookup — Pass 25.8)
  relationship_candidate_index.json  (relationship candidates — Pass 25.8)
```

---

## Minimum schema contracts

### Manifest schema (`manifest.json`)

```json
{
  "source_name": "",
  "source_url": "",
  "tier": "",
  "source_type": "",
  "retrieval_method": "",
  "retrieved_at": "",
  "upstream_commit_or_version": "",
  "files_included": [],
  "files_excluded": [],
  "checksums": {},
  "license_notes": "",
  "allowed_use": [],
  "disallowed_use": [],
  "not_canon_evidence": true
}
```

**Field definitions:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| source_name | string | yes | Human-readable source name |
| source_url | string | yes | Upstream URL (repo or site) |
| tier | string | yes | Source tier from Pass 25.5 policy |
| source_type | string | yes | `repository`, `api`, `dataset`, `tool` |
| retrieval_method | string | yes | `git_clone`, `api_fetch`, `manual_download`, `local_tool` |
| retrieved_at | ISO 8601 | yes | Timestamp of retrieval |
| upstream_commit_or_version | string | yes | Commit hash, tag, or version string |
| files_included | string[] | yes | List of files imported |
| files_excluded | string[] | no | Files explicitly excluded and why |
| checksums | object | yes | `{ "filename": "sha256:..." }` |
| license_notes | string | yes | License type and any restrictions |
| allowed_use | string[] | yes | Permitted uses within this project |
| disallowed_use | string[] | yes | Explicitly prohibited uses |
| not_canon_evidence | boolean | yes | Must be `true` for all external references |

---

### Alias index schema (`alias_index.json` entries)

```json
{
  "alias": "",
  "normalized_alias": "",
  "language": "",
  "entity_id": "",
  "entity_name": "",
  "entity_type": "",
  "source_reference": "",
  "confidence": "",
  "ambiguity_status": "",
  "notes": ""
}
```

**Field definitions:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| alias | string | yes | The alias string as found in source |
| normalized_alias | string | yes | Lowercased, trimmed, normalized form |
| language | string | yes | ISO 639-1 code: `en`, `ja`, `zh-CN`, `zh-TW`, etc. |
| entity_id | string | yes | Internal entity identifier |
| entity_name | string | yes | Canonical entity name in EN |
| entity_type | string | yes | `character`, `location`, `organization`, `item`, `concept`, etc. |
| source_reference | string | yes | Which external source provided this alias |
| confidence | string | yes | `high`, `medium`, `low` |
| ambiguity_status | string | yes | `unambiguous`, `ambiguous`, `conflict` |
| notes | string | no | Conflict details or disambiguation notes |

---

### Graph edge schema (relationship candidate entries)

```json
{
  "edge_id": "",
  "source_node": "",
  "target_node": "",
  "relationship_type": "",
  "relationship_label": "",
  "graph_source_reference": "",
  "risk_level": "",
  "requires_primary_source": true,
  "allowed_use": "candidate_context_only",
  "notes": ""
}
```

**Field definitions:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| edge_id | string | yes | Unique edge identifier |
| source_node | string | yes | Source entity in graph |
| target_node | string | yes | Target entity in graph |
| relationship_type | string | yes | Typed relationship category |
| relationship_label | string | yes | Human-readable label |
| graph_source_reference | string | yes | Which graph/version this edge came from |
| risk_level | string | yes | `low`, `medium`, `high` — based on claim sensitivity |
| requires_primary_source | boolean | yes | Must always be `true` |
| allowed_use | string | yes | Must be `candidate_context_only` |
| notes | string | no | Additional context or caveats |

---

## Conventions

- All JSON files use UTF-8 encoding, no BOM.
- All timestamps are ISO 8601 UTC.
- All checksums are SHA-256 prefixed with `sha256:`.
- `raw/` directories are never referenced by wiki pages directly.
- `normalized/` entries must have a traceable path back to `raw/` source.
- `indexes/` are derived outputs that can be regenerated from `normalized/`.
- No file in `_data/external/` may be used as canon evidence without explicit primary-source linkage in the wiki source-index.
