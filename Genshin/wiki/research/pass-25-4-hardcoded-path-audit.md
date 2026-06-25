# Pass 25.4 — Hardcoded Path Audit

**Date:** 2026-06-25
**Status:** Complete — awaiting human review

---

## Summary

| Metric | Value |
|---|---|
| Total hardcoded path occurrences | 32 |
| Files affected | 15 |
| Path pattern | `d:\LoreResseach\Genshin` (note: typo "Resseach" is intentional/historical) |
| Risk level | HIGH |
| Safe to auto-patch this pass | No |

---

## Affected Files

| # | File | Occurrences | Context |
|---|---|---|---|
| 1 | fetch_characters.ps1 | 3 | $cacheDir, $outputCharsDir, $outputSourcesDir |
| 2 | fetch_manga.ps1 | 2 | $cacheDir, $outputMangaDir |
| 3 | fetch_weapons.ps1 | 3 | $cacheDir, $outputWeaponsDir, $outputSourcesDir |
| 4 | fetch_artifacts.ps1 | 3 | $cacheDir, $outputArtifactsDir, $outputSourcesDir |
| 5 | fetch_wiki_books.ps1 | 3 | $cacheDir, $outputBooksDir, $outputSourcesDir |
| 6 | fetch_wiki_quests.ps1 | 4 | $cacheDir, $outputQuestsDir, $outputSourcesDir, .Replace() |
| 7 | fetch_wiki_world_quests.ps1 | 4 | $cacheDir, $outputQuestsDir, $outputSourcesDir, .Replace() |
| 8 | fix_encoding.ps1 | 1 | Get-ChildItem target |
| 9 | fix_intelligence_encoding.py | 1 | intel_dir variable |
| 10 | generate_from_json.ps1 | 2 | $jsonPath, $entitiesBase |
| 11 | generate_indexes.ps1 | 1 | $rootDir |
| 12 | generate_manual_profiles.ps1 | 1 | $entitiesBase |
| 13 | generate_manual_profiles.py | 1 | dir_path |
| 14 | generate_manual_profiles.js | 1 | dirPath |
| 15 | test_diag.ps1 | 1 | cached wiki JSON reference |

---

## Searched Patterns

| Pattern | Hits |
|---|---|
| `D:\LoreResseach\Genshin` (case-insensitive) | 32 |
| `D:/LoreResseach/Genshin` (forward slash) | 2 (within the 32) |
| `$repoRoot` | 0 |
| `$Root` | 0 |
| `Resolve-Path` | 0 |
| `Get-Location` | 0 |
| `$PSScriptRoot` | 0 |

---

## Risk Analysis

### Why HIGH risk

1. **Single-machine lock-in** — scripts fail on any other drive letter or directory structure.
2. **Path typo baked in** — `LoreResseach` (missing 'r') is the "correct" value across all 15 files. Fixing the typo would require renaming the actual directory or updating all references simultaneously.
3. **No dynamic detection** — zero use of `$PSScriptRoot`, `Resolve-Path`, `__dirname`, or `os.path` relative patterns.
4. **Cross-platform impossible** — all paths use Windows drive letters; no Linux/macOS support.
5. **Wiki cache coupling** — fetch scripts write to `_data\wiki_cache` under the hardcoded root; relocating the cache requires editing every fetch script.

### What this means for Pass 26+

- Future agents/validators must NOT rely on these scripts' path patterns.
- New validators should derive repo root from their own location (`$PSScriptRoot`, `__file__`, etc.).
- If any fetch script must run again, the hardcoded path must match the user's actual directory.

---

## Recommended Fix (Future Pass)

```powershell
# PowerShell pattern
$repoRoot = Split-Path -Parent (Split-Path -Parent $PSCommandPath)
```

```python
# Python pattern
import os
repo_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
```

```javascript
// Node.js pattern
const path = require('path');
const repoRoot = path.dirname(path.dirname(__dirname));
```

**Do not mass-patch in this pass.** Recommended as a future Pass 25.4.1 or tooling-hygiene task if needed before Pass 26.
