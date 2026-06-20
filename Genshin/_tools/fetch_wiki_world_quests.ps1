# fetch_wiki_world_quests.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputQuestsDir = "d:\LoreResseach\Genshin\quests\world_quests"
$outputSourcesDir = "d:\LoreResseach\Genshin\sources\voice_lines\world_quests"

# Create directories
New-Item -ItemType Directory -Force -Path "$cacheDir\en" | Out-Null
New-Item -ItemType Directory -Force -Path "$cacheDir\vi" | Out-Null
New-Item -ItemType Directory -Force -Path $outputQuestsDir | Out-Null
New-Item -ItemType Directory -Force -Path $outputSourcesDir | Out-Null

# Define Unicode strings to avoid script encoding corruption
$strMoDau = "M" + [char]0x1EDF + " " + [char]0x0110 + [char]0x1EA7 + "u"
$strBatDauHoiThoai = "--- B" + [char]0x1EAE + "T " + [char]0x0110 + [char]0x1EA6 + "U H" + [char]0x1ED8 + "I THO" + [char]0x1EA0 + "I ---"
$strKetThucHoiThoai = "--- K" + [char]0x1EBE + "T TH" + [char]0x00DA + "C H" + [char]0x1ED8 + "I THO" + [char]0x1EA0 + "I ---"
$strExcludePattern = "Amber|Kaeya|Lisa|Nhi" + [char]0x1EC7 + "m V" + [char]0x1EE5
$strHoiThoaiHeader = "H" + [char]0x1ED9 + "i Tho" + [char]0x1EA1 + "i"

function Escape-FileName ($name) {
    $invalid = [System.IO.Path]::GetInvalidFileNameChars()
    $nameClean = $name
    foreach ($char in $invalid) {
        $nameClean = $nameClean.Replace($char, '_')
    }
    return $nameClean
}

function Get-WikiPage ($title, $wiki = "en") {
    $safeTitle = Escape-FileName $title
    $cacheFile = "$cacheDir\$wiki\$safeTitle.json"
    
    if (Test-Path $cacheFile) {
        $cacheJson = Get-Content -Path $cacheFile -Raw -Encoding utf8 | ConvertFrom-Json
        return $cacheJson
    }
    
    Start-Sleep -Milliseconds 150
    
    $encodedTitle = [uri]::EscapeDataString($title)
    $domain = if ($wiki -eq "vi") { "genshin-impact.fandom.com/vi" } else { "genshin-impact.fandom.com" }
    $url = "https://$domain/api.php?action=query&prop=revisions&titles=$encodedTitle&rvprop=content&rvslots=main&redirects=1&format=json"
    
    try {
        Write-Host "Fetching $wiki Wiki page: $title" -ForegroundColor Cyan
        $res = Invoke-RestMethod -Uri $url
        
        $pages = $res.query.pages
        $properties = ($pages | Get-Member -MemberType NoteProperty).Name
        $pageId = if ($properties -is [array]) { $properties[0] } else { $properties }
        
        if ($pageId -eq "-1") {
            Write-Host "Page not found: $title" -ForegroundColor Yellow
            return $null
        }
        
        $page = $pages.$pageId
        $resolvedTitle = $page.title
        $content = $page.revisions[0].slots.main.'*'
        
        $result = [PSCustomObject]@{
            pageid = $pageId
            title = $resolvedTitle
            content = $content
        }
        
        # Save to cache
        $result | ConvertTo-Json -Depth 5 | Out-File -FilePath $cacheFile -Encoding utf8
        return $result
    } catch {
        Write-Host "Error fetching page: $title - $_" -ForegroundColor Red
        return $null
    }
}

function Clean-WikiText ($text) {
    if ($null -eq $text) { return "" }
    
    # Remove HTML comments
    $text = $text -replace '<!--[\s\S]*?-->', ''
    
    # Replace {{tt|Vietnamese|Chinese}} with Vietnamese
    $text = $text -replace '\{\{tt\|([^|]+)\|[^}]+\}\}', '$1'
    
    # Replace {{A|filename.ogg}} with empty
    $text = $text -replace '\{\{A\|[^}]+\}\}', ''
    
    # Clean wiki links [[Page Name|Display Name]] -> Display Name
    $text = $text -replace '\[\[[^|\]]+\|([^\]]+)\]\]', '$1'
    # Clean wiki links [[Page Name]] -> Page Name
    $text = $text -replace '\[\[([^\]]+)\]\]', '$1'
    
    # Clean bold and italics
    $text = $text -replace "'''", ""
    $text = $text -replace "''", ""
    
    # Clean templates
    $text = $text -replace '\{\{Quest\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    $text = $text -replace '\{\{Enemy\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    $text = $text -replace '\{\{Item\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    $text = $text -replace '\{\{Character\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    
    # Clean dialogue start/end
    $text = $text -replace '\{\{Dialogue Start\}\}', $strBatDauHoiThoai
    $text = $text -replace '\{\{Dialogue End\}\}', $strKetThucHoiThoai
    $text = $text -replace '\{\{DIcon\}\}', '  - '
    
    return $text.Trim()
}

$allowedSeries = @(
    "The Chasm Delvers",
    "From Dusk to Dawn in Byakuyakoku",
    "Sacred Sakura Cleansing Ritual",
    "Tatara Tales",
    "Orobashi's Legacy",
    "Seirai Stormchasers",
    "The Moon-Bathed Deep",
    "Through the Mists",
    "Aranyaka",
    "Golden Slumber",
    "The Dirge of Bilqis",
    "Khvarena of Good and Evil",
    "Ann of the Narzissenkreuz",
    "Ancient Colors",
    "Unfinished Comedy",
    "In the Wake of Narcissus",
    "The Wild Fairy of Erinnyes",
    "Canticles of Harmony",
    "In the Footsteps of the Chosen of Dragons",
    "Tale of Dreams Plucked From Fire",
    "Between Pledge and Forgettance",
    "Shadows of the Mountains",
    "Beyond Silver and Fine Gold"
)

Write-Host "Starting World Quests fetching process..." -ForegroundColor Green

foreach ($seriesTitle in $allowedSeries) {
    Write-Host "`n=== Processing World Quest Series: $seriesTitle ===" -ForegroundColor Green
    
    $enPage = Get-WikiPage $seriesTitle "en"
    if ($null -eq $enPage) { continue }
    
    $viTitle = $null
    if ($enPage.content -match "\[\[vi:(.*?)\]\]") {
        $viTitle = $Matches[1].Trim()
    }
    
    if ($null -eq $viTitle) {
        if ($enPage.content -match '(?m)^[ \t]*\|[ \t]*vi[ \t]*=[ \t]*(.*?)\r?$') {
            $viTitle = ($Matches[1] -replace '\{\{tt\|([^|]+)\|[^}]+\}\}', '$1').Trim()
        }
    }
    
    if ($null -eq $viTitle) {
        Write-Host "Could not find Vietnamese title for $seriesTitle. Falling back to English title." -ForegroundColor Yellow
        $viTitle = $seriesTitle
    }
    
    Write-Host "Vietnamese Title: $viTitle" -ForegroundColor Green
    
    $viPage = Get-WikiPage $viTitle "vi"
    if ($null -eq $viPage) { 
        Write-Host "Vietnamese page not found for $viTitle. Creating an empty profile." -ForegroundColor Yellow
        $viPage = [PSCustomObject]@{ title = $viTitle; content = "" }
    }
    
    # Extract subquests
    $subquests = @()
    # World quest series pages on the Vietnamese wiki might use different headers
    if ($viPage.content -match "==(?:Danh S.ch )?Nhi.m V.==([\s\S]*?)(?:==|$)") {
        $subquestBlock = $Matches[1]
        $matches = [regex]::Matches($subquestBlock, "\[\[([^|\]]+)(?:\|[^\]]*)?\]\]")
        foreach ($m in $matches) {
            $sqTitle = $m.Groups[1].Value.Trim()
            if ($sqTitle -and $sqTitle -notmatch $strExcludePattern) {
                $subquests += $sqTitle
            }
        }
    }
    
    $subquests = $subquests | Select-Object -Unique
    if ($subquests.Count -eq 0) {
        Write-Host "No subquests found automatically via regex. Trying English page structure." -ForegroundColor DarkYellow
        if ($enPage.content -match "==Quests==([\s\S]*?)(?:==|$)") {
            $enSubquestBlock = $Matches[1]
            $enMatches = [regex]::Matches($enSubquestBlock, "\[\[([^|\]]+)(?:\|[^\]]*)?\]\]")
            foreach ($m in $enMatches) {
                $enSqTitle = $m.Groups[1].Value.Trim()
                # Find VN mapping for this subquest
                $enSqPage = Get-WikiPage $enSqTitle "en"
                if ($enSqPage -and $enSqPage.content -match "\[\[vi:(.*?)\]\]") {
                    $subquests += $Matches[1].Trim()
                }
            }
        }
    }
    
    Write-Host "Found $($subquests.Count) subquests in Vietnamese: $($subquests -join ', ')" -ForegroundColor DarkGreen
    
    $safeViTitle = Escape-FileName $viTitle
    $seriesSourceDir = "$outputSourcesDir\$safeViTitle"
    New-Item -ItemType Directory -Force -Path $seriesSourceDir | Out-Null
    
    $questFilesList = @()
    
    foreach ($sq in $subquests) {
        $viSqPage = Get-WikiPage $sq "vi"
        if ($null -eq $viSqPage) { continue }
        
        Write-Host "Processing subquest: $($viSqPage.title)" -ForegroundColor Magenta
        
        $dialogueText = ""
        if ($viSqPage.content -match "==H.i Tho.i==([\s\S]*?)(?:==|$)") {
            $dialogueText = $Matches[1]
        } elseif ($viSqPage.content -match "\{\{Dialogue Start\}\}([\s\S]*?)\{\{Dialogue End\}\}") {
            $dialogueText = $Matches[0]
        }
        
        if ($dialogueText) {
            $cleanedDialogue = Clean-WikiText $dialogueText
            $safeSqTitle = Escape-FileName $viSqPage.title
            $dialogueFilePath = "$seriesSourceDir\$safeSqTitle.md"
            
            $dialogueMarkdown = @"
# ${strHoiThoaiHeader}: $viTitle - $sq

$cleanedDialogue
"@
            $dialogueMarkdown | Out-File -FilePath $dialogueFilePath -Encoding utf8
            Write-Host "Saved dialogue transcript to: $dialogueFilePath" -ForegroundColor Gray
            $questFilesList += [PSCustomObject]@{ Title = $viSqPage.title; Path = $dialogueFilePath }
        } else {
            Write-Host "No dialogue found for subquest: $sq" -ForegroundColor DarkYellow
        }
    }
    
    # Generate the Series Summary page
    $enRegion = "Other"
    if ($enPage.content -match '(?m)^[ \t]*\|[ \t]*region[ \t]*=[ \t]*(.*?)\r?$') {
        $enRegion = $Matches[1].Trim()
    }
    
    $viRegion = $enRegion
    if ($enRegion -eq "Mondstadt") { $viRegion = "Mondstadt" }
    elseif ($enRegion -eq "Liyue") { $viRegion = "Liyue" }
    elseif ($enRegion -eq "Inazuma") { $viRegion = "Inazuma" }
    elseif ($enRegion -eq "Sumeru") { $viRegion = "Sumeru" }
    elseif ($enRegion -eq "Fontaine") { $viRegion = "Fontaine" }
    elseif ($enRegion -eq "Natlan") { $viRegion = "Natlan" }
    elseif ($enRegion -eq "Snezhnaya") { $viRegion = "Snezhnaya" }
    elseif ($enRegion -match "Nod-Krai") { $viRegion = "Nod-Krai" }
    
    $regionFolder = $enRegion.ToLower().Replace(" ", "_")
    $regionQuestsDir = "$outputQuestsDir\$regionFolder"
    New-Item -ItemType Directory -Force -Path $regionQuestsDir | Out-Null
    
    $seriesSummaryPath = "$regionQuestsDir\$safeViTitle.md"
    
    $subquestsMD = ""
    foreach ($q in $questFilesList) {
        $relativePath = $q.Path.Replace("d:\LoreResseach\Genshin\", "").Replace("\", "/")
        $subquestsMD += "- [ ] [$($q.Title)](file:///$($q.Path.Replace('\', '/')))`n"
    }
    
    $yamlFrontmatter = @"
---
id: "wq_$(Escape-FileName $seriesTitle.ToLower())"
type: "world_quest"
name: "$viTitle"
english_name: "$seriesTitle"
region: "$regionFolder"
release_version: "1.0"
tags: ["world_quest", "$regionFolder"]
---

# Nhiệm Vụ Thế Giới: $viTitle

## Thông tin cơ bản
- **Tên tiếng Anh:** $seriesTitle
- **Khu vực:** $viRegion

## Danh sách hội thoại nhiệm vụ
$subquestsMD

## Tóm tắt cốt truyện
<!-- Tác giả fanfiction có thể bổ sung ghi chú cốt truyện tại đây -->
"@
    
    $yamlFrontmatter | Out-File -FilePath $seriesSummaryPath -Encoding utf8
    Write-Host "Saved World Quest Series summary page to: $seriesSummaryPath" -ForegroundColor Green
}

Write-Host "`nWorld Quest fetching task finished!" -ForegroundColor Green
