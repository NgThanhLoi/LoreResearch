# fetch_artifacts.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputArtifactsDir = "d:\LoreResseach\Genshin\entities\artifact_sets"
$outputSourcesDir = "d:\LoreResseach\Genshin\sources\artifact_descriptions"

# Create directories
New-Item -ItemType Directory -Force -Path $outputArtifactsDir | Out-Null
New-Item -ItemType Directory -Force -Path $outputSourcesDir | Out-Null

function Escape-FileName ($name) {
    $invalid = [System.IO.Path]::GetInvalidFileNameChars()
    $nameClean = $name
    foreach ($char in $invalid) {
        $nameClean = $nameClean.Replace($char, '_')
    }
    return $nameClean
}

Write-Host "Fetching artifacts database in Vietnamese..." -ForegroundColor Green
$url = "https://genshin-db-api.vercel.app/api/v5/artifacts?query=names&matchCategories=true&verboseCategories=true&resultLanguage=vi"
try {
    $artifacts = Invoke-RestMethod -Uri $url
} catch {
    Write-Host "Failed to fetch artifacts from Vercel API. Check connection." -ForegroundColor Red
    exit 1
}

Write-Host "Found $($artifacts.Count) artifact sets in database." -ForegroundColor Green

Write-Host "Fetching English names for mapping..." -ForegroundColor Green
$enUrl = "https://genshin-db-api.vercel.app/api/v5/artifacts?query=names&matchCategories=true&verboseCategories=true&resultLanguage=en"
$enArtifacts = Invoke-RestMethod -Uri $enUrl

$enNameMap = @{}
foreach ($ea in $enArtifacts) {
    $enNameMap[$ea.id] = $ea.name
}

foreach ($a in $artifacts) {
    $enName = $enNameMap[$a.id]
    if ($null -eq $enName) {
        $enName = $a.name
    }
    
    $safeViName = Escape-FileName $a.name
    Write-Host "Processing artifact set: $($a.name) ($enName)..." -ForegroundColor Cyan
    
    # Check pieces and compile stories
    $piecesList = @("flower", "plume", "sands", "goblet", "circlet")
    $hasStory = $false
    $storyMarkdown = "# Bộ thánh di vật: $($a.name)`n`n"
    
    $piecesDetails = ""
    
    foreach ($pieceKey in $piecesList) {
        $piece = $a.$pieceKey
        if ($null -ne $piece) {
            $pieceName = $piece.name
            $pieceSlot = $piece.relicText
            if ($null -eq $pieceSlot -or $pieceSlot -eq "") {
                $pieceSlot = $piece.relicType
            }
            
            $pieceDesc = $piece.description
            $pieceStory = $piece.story
            
            $piecesDetails += "- **$($pieceSlot):** $pieceName`n"
            
            $storyMarkdown += "## $($pieceSlot): $pieceName`n"
            if ($pieceDesc) {
                $storyMarkdown += "- **Mô tả:** $pieceDesc`n"
            }
            if ($pieceStory) {
                $storyMarkdown += "- **Câu chuyện:**`n$pieceStory`n`n"
                $hasStory = $true
            } else {
                $storyMarkdown += "- **Câu chuyện:** Không có`n`n"
            }
        }
    }
    
    # Save Story if at least one piece has a story
    $storyFilePath = ""
    if ($hasStory) {
        $storyFilePath = "$outputSourcesDir\$safeViName.md"
        $storyMarkdown | Out-File -FilePath $storyFilePath -Encoding utf8
        Write-Host "Saved stories to: $storyFilePath" -ForegroundColor Gray
    }
    
    # Save artifact set profile
    $artifactFilePath = "$outputArtifactsDir\$safeViName.md"
    
    $storyLinkMD = ""
    if ($storyFilePath) {
        $storyLinkMD = "- [Mô tả & Câu chuyện chi tiết](file:///$($storyFilePath.Replace('\', '/')))"
    } else {
        $storyLinkMD = "- Không có câu chuyện riêng (hoặc chưa cập nhật)."
    }
    
    $effect2PcMD = if ($a.effect2Pc) { $a.effect2Pc } else { "Không có" }
    $effect4PcMD = if ($a.effect4Pc) { $a.effect4Pc } else { "Không có" }
    
    $yamlFrontmatter = @"
---
id: "artifact_$(Escape-FileName $enName.ToLower())"
type: "thánh_di_vật"
name: "$($a.name)"
english_name: "$enName"
release_version: "$($a.version)"
tags: ["artifact_set", "lore"]
---

# Bộ thánh di vật: $($a.name)

## Thông tin cơ bản
- **Tên tiếng Anh:** $enName
- **Hiệu quả 2 món:** $effect2PcMD
- **Hiệu quả 4 món:** $effect4PcMD

## Chi tiết các món
$piecesDetails
## Liên kết câu chuyện
$storyLinkMD

## Lore trích xuất & Phân tích
<!-- Tác giả fanfiction có thể bổ sung ghi chú phân tích lore từ bộ thánh di vật tại đây -->
"@
    
    $yamlFrontmatter | Out-File -FilePath $artifactFilePath -Encoding utf8
}

Write-Host "Artifact processing task finished!" -ForegroundColor Green


