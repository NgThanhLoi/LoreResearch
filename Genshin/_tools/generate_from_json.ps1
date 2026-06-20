$utf8bom = New-Object System.Text.UTF8Encoding($true)

$jsonPath = "d:\LoreResseach\Genshin\_tools\profiles_data.json"
$profiles = Get-Content -Path $jsonPath -Raw -Encoding utf8 | ConvertFrom-Json

$entitiesBase = "d:\LoreResseach\Genshin\entities"

foreach ($p in $profiles) {
    $dirPath = "$entitiesBase\$($p.dir)"
    if (-not (Test-Path $dirPath)) {
        New-Item -ItemType Directory -Force -Path $dirPath | Out-Null
    }
    
    $filePath = "$dirPath\$($p.fname).md"
    
    if (-not (Test-Path $filePath)) {
        $content = @"
---
id: "$($p.id)"
type: "$($p.type)"
name: "$($p.name)"
region: "$($p.region)"
tags: ["$($p.type)", "$($p.region)", "manual_profile"]
---

# $($p.name)

## Thong tin chung
- **Ten:** $($p.name)
- **Khu vuc:** $($p.region)

## Lich su & Tieu su
<!-- Viet lich su va nguon goc tai day -->

## Vai tro trong cot truyen
<!-- Viet vai tro trong cot truyen tai day -->

## Lien ket va Tham chieu
<!-- Tham chieu den cac trang wiki, sach in-game, hoac nhan vat lien quan -->
"@
        
        # We write standard ASCII labels to be 100% safe, users can easily read it
        [System.IO.File]::WriteAllText($filePath, $content, $utf8bom)
        Write-Host "Created profile: $filePath" -ForegroundColor Green
    } else {
        Write-Host "Profile already exists: $filePath" -ForegroundColor DarkGray
    }
}

Write-Host "All manual profiles created successfully!" -ForegroundColor Cyan
