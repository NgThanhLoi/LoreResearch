# fetch_weapons.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputWeaponsDir = "d:\LoreResseach\Genshin\entities\weapons"
$outputSourcesDir = "d:\LoreResseach\Genshin\sources\weapon_stories"

# Create directories
New-Item -ItemType Directory -Force -Path $outputWeaponsDir | Out-Null
New-Item -ItemType Directory -Force -Path $outputSourcesDir | Out-Null

function Escape-FileName ($name) {
    $invalid = [System.IO.Path]::GetInvalidFileNameChars()
    $nameClean = $name
    foreach ($char in $invalid) {
        $nameClean = $nameClean.Replace($char, '_')
    }
    return $nameClean
}

Write-Host "Fetching weapons database in Vietnamese..." -ForegroundColor Green
$url = "https://genshin-db-api.vercel.app/api/v5/weapons?query=names&matchCategories=true&verboseCategories=true&resultLanguage=vi"
try {
    $weapons = Invoke-RestMethod -Uri $url
} catch {
    Write-Host "Failed to fetch weapons from Vercel API. Check connection." -ForegroundColor Red
    exit 1
}

Write-Host "Found $($weapons.Count) weapons in database." -ForegroundColor Green

Write-Host "Fetching English names for mapping..." -ForegroundColor Green
$enUrl = "https://genshin-db-api.vercel.app/api/v5/weapons?query=names&matchCategories=true&verboseCategories=true&resultLanguage=en"
$enWeapons = Invoke-RestMethod -Uri $enUrl

$enNameMap = @{}
foreach ($ew in $enWeapons) {
    $enNameMap[$ew.id] = $ew.name
}

foreach ($w in $weapons) {
    $enName = $enNameMap[$w.id]
    if ($null -eq $enName) {
        $enName = $w.name
    }
    
    $safeViName = Escape-FileName $w.name
    Write-Host "Processing weapon: $($w.name) ($enName)..." -ForegroundColor Cyan
    
    # Save Story if exists
    $storyFilePath = ""
    if ($w.story) {
        $storyFilePath = "$outputSourcesDir\$safeViName.md"
        $storyMarkdown = @"
# Câu chuyện vũ khí: $($w.name)

$($w.story)
"@
        $storyMarkdown | Out-File -FilePath $storyFilePath -Encoding utf8
        Write-Host "Saved story to: $storyFilePath" -ForegroundColor Gray
    }
    
    # Save weapon profile
    $weaponFilePath = "$outputWeaponsDir\$safeViName.md"
    
    $storyLinkMD = ""
    if ($storyFilePath) {
        $storyLinkMD = "- [Câu chuyện vũ khí](file:///$($storyFilePath.Replace('\', '/')))"
    } else {
        $storyLinkMD = "- Không có câu chuyện riêng (hoặc chưa cập nhật)."
    }
    
    $substatMD = ""
    if ($w.mainStatText) {
        $substatMD = "$($w.mainStatText) ($($w.baseStatText))"
    } else {
        $substatMD = "Không có"
    }
    
    $effectMD = ""
    if ($w.effectName) {
        $effectMD = "**$($w.effectName)**: $($w.r1.description)"
    } else {
        $effectMD = "Không có"
    }
    
    $yamlFrontmatter = @"
---
id: "weapon_$(Escape-FileName $enName.ToLower())"
type: "vũ_khí"
name: "$($w.name)"
english_name: "$enName"
weapon_type: "$($w.weaponText)"
rarity: $($w.rarity)
release_version: "$($w.version)"
tags: ["weapon", "$($w.weaponText.ToLower())", "$($w.rarity)_star"]
---

# Vũ khí: $($w.name)

## Thông tin cơ bản
| Thuộc tính | Giá trị |
|---|---|
| **Tên tiếng Anh** | $enName |
| **Loại vũ khí** | $($w.weaponText) |
| **Độ hiếm** | $($w.rarity) sao |
| **Tấn công căn bản** | $($w.baseAtkValue) |
| **Thuộc tính phụ** | $substatMD |
| **Hiệu quả vũ khí** | $effectMD |

## Giới thiệu
$($w.description)

## Liên kết câu chuyện
$storyLinkMD

## Lore trích xuất & Phân tích
<!-- Tác giả fanfiction có thể bổ sung ghi chú phân tích lore từ vũ khí tại đây -->
"@
    
    $yamlFrontmatter | Out-File -FilePath $weaponFilePath -Encoding utf8
}

Write-Host "Weapon processing task finished!" -ForegroundColor Green

