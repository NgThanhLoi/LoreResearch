# fetch_wiki_quests.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputQuestsDir = "d:\LoreResseach\Genshin\quests\archon_quests"
$outputSourcesDir = "d:\LoreResseach\Genshin\sources\voice_lines\archon_quests"

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
    
    # Replace {{A|filename.ogg}} with empty (it is just an audio link)
    $text = $text -replace '\{\{A\|[^}]+\}\}', ''
    
    # Clean wiki links [[Page Name|Display Name]] -> Display Name
    $text = $text -replace '\[\[[^|\]]+\|([^\]]+)\]\]', '$1'
    # Clean wiki links [[Page Name]] -> Page Name
    $text = $text -replace '\[\[([^\]]+)\]\]', '$1'
    
    # Clean bold and italics
    $text = $text -replace "'''", ""
    $text = $text -replace "''", ""
    
    # Clean templates like {{Quest|QuestName}} -> QuestName
    $text = $text -replace '\{\{Quest\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    $text = $text -replace '\{\{Enemy\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    $text = $text -replace '\{\{Item\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    $text = $text -replace '\{\{Character\|([^|}]+)(?:\|[^}]+)?\}\}', '$1'
    
    # Clean dialogue start/end templates using Unicode strings
    $text = $text -replace '\{\{Dialogue Start\}\}', $strBatDauHoiThoai
    $text = $text -replace '\{\{Dialogue End\}\}', $strKetThucHoiThoai
    $text = $text -replace '\{\{DIcon\}\}', '  - ' # Player choice indicator
    
    return $text.Trim()
}

# Fetch all Archon Quest Acts from English wiki
Write-Host "Fetching list of Archon Quest Acts..." -ForegroundColor Green
$catUrl = "https://genshin-impact.fandom.com/api.php?action=query&list=categorymembers&cmtitle=Category:Archon_Quest_Acts&cmlimit=150&format=json"
$catRes = Invoke-RestMethod -Uri $catUrl
$acts = $catRes.query.categorymembers

Write-Host "Found $($acts.Count) Archon Quest Acts." -ForegroundColor Green

# Allowed Archon Quest Acts for all regions (Phase 1 to Phase 6 + Nod-Krai + Interludes)
$allowedActs = @(
    "The Outlander Who Caught the Wind",
    "For a Tomorrow Without Tears",
    "Song of the Dragon and Freedom",
    "Of the Land Amidst Monoliths",
    "Farewell, Archaic Lord",
    "A New Star Approaches",
    "We Will Be Reunited",
    
    "Autumn Winds, Scarlet Leaves",
    "The Immovable God and the Eternal Euthymia",
    "Stillness, the Sublimation of Shadow",
    "Omnipresence Over Mortals",
    "Requiem of the Echoing Depths",
    
    "Through Mists of Smoke and Forests Dark",
    "The Morn a Thousand Roses Brings",
    "Dreams, Emptiness, Deception",
    "King Deshret and the Three Magi",
    "Akasha Pulses, the Kalpa Flame Rises",
    "Caribert",
    
    "Prelude of Blancheur and Noirceur",
    "As Light Rain Falls Without Reason",
    "To the Stars Shining in the Depths",
    "Cataclysm's Quickening",
    "Masquerade of the Guilty",
    "Bedtime Story",
    
    "Flowers Resplendent on the Sun-Scorched Sojourn",
    "Black Stone Under a White Stone",
    "Beyond the Smoke and Mirrors",
    "The Rainbow Destined to Burn",
    "Incandescent Ode of Resurrection",
    
    "A Dance of Snowy Tides and Hoarfrost Groves",
    "A Nation That Doesn't Exist",
    
    "The Crane Returns on the Wind",
    "Perilous Trail",
    "Inversion of Genesis"
)

foreach ($act in $acts) {
    if ($allowedActs -notcontains $act.title) {
        continue
    }
    
    Write-Host "`n=== Processing Act: $($act.title) ===" -ForegroundColor Green
    
    # 1. Fetch English act page to get Vietnamese title mapping
    $enActPage = Get-WikiPage $act.title "en"
    if ($null -eq $enActPage) { continue }
    
    $viTitle = $null
    if ($enActPage.content -match "\[\[vi:(.*?)\]\]") {
        $viTitle = $Matches[1].Trim()
    }
    
    if ($null -eq $viTitle) {
        if ($enActPage.content -match '(?m)^[ \t]*\|[ \t]*vi[ \t]*=[ \t]*(.*?)\r?$') {
            $viTitle = ($Matches[1] -replace '\{\{tt\|([^|]+)\|[^}]+\}\}', '$1').Trim()
        }
    }
    
    if ($null -eq $viTitle) {
        Write-Host "Could not find Vietnamese title for act: $($act.title)" -ForegroundColor Yellow
        continue
    }
    
    Write-Host "Vietnamese Title: $viTitle" -ForegroundColor Green
    
    # 2. Fetch Vietnamese act page
    $viActPage = Get-WikiPage $viTitle "vi"
    if ($null -eq $viActPage) { continue }
    
    # Extract subquests from ==Danh Sách Nhiệm Vụ== (ASCII-safe pattern)
    $subquests = @()
    if ($viActPage.content -match "==Danh S.ch Nhi.m V.==([\s\S]*?)(?:==|$)") {
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
    Write-Host "Found $($subquests.Count) subquests in Vietnamese: $($subquests -join ', ')" -ForegroundColor DarkGreen
    
    $safeViTitle = Escape-FileName $viTitle
    $actSourceDir = "$outputSourcesDir\$safeViTitle"
    New-Item -ItemType Directory -Force -Path $actSourceDir | Out-Null
    
    $questFilesList = @()
    
    # 3. Fetch each subquest and extract dialogue
    foreach ($sq in $subquests) {
        $viSqPage = Get-WikiPage $sq "vi"
        if ($null -eq $viSqPage) { continue }
        
        Write-Host "Processing subquest: $($viSqPage.title)" -ForegroundColor Magenta
        
        # Extract Dialogue (ASCII-safe pattern)
        $dialogueText = ""
        if ($viSqPage.content -match "==H.i Tho.i==([\s\S]*?)(?:==|$)") {
            $dialogueText = $Matches[1]
        } elseif ($viSqPage.content -match "\{\{Dialogue Start\}\}([\s\S]*?)\{\{Dialogue End\}\}") {
            $dialogueText = $Matches[0]
        }
        
        if ($dialogueText) {
            $cleanedDialogue = Clean-WikiText $dialogueText
            $safeSqTitle = Escape-FileName $viSqPage.title
            $dialogueFilePath = "$actSourceDir\$safeSqTitle.md"
            
            # Save dialogue transcript with braced variable to avoid colon parser error
            $dialogueMarkdown = @"
# ${strHoiThoaiHeader}: $viTitle - $sq

$cleanedDialogue
"@
            $dialogueMarkdown | Out-File -FilePath $dialogueFilePath -Encoding utf8
            Write-Host "Saved dialogue transcript to: $dialogueFilePath" -ForegroundColor Gray
            $questFilesList += [PSCustomObject]@{
                Title = $viSqPage.title
                Path = $dialogueFilePath
            }
        } else {
            Write-Host "No dialogue found for subquest: $sq" -ForegroundColor DarkYellow
        }
    }
    
    # 4. Generate the Act Summary page in quests/archon_quests
    $safeActTitle = Escape-FileName $act.title
    
    # Extract chapter and region from English page infobox
    $enChapter = "Other"
    if ($enActPage.content -match '(?m)^[ \t]*\|[ \t]*chapter[ \t]*=[ \t]*(.*?)\r?$') {
        $enChapter = $Matches[1].Trim()
    }
    
    $enRegion = "Other"
    if ($enActPage.content -match '(?m)^[ \t]*\|[ \t]*region[ \t]*=[ \t]*(.*?)\r?$') {
        $enRegion = $Matches[1].Trim()
    }
    
    # Map chapter and region to Vietnamese names and folders
    $viChapter = $enChapter
    $chapterFolder = "other"
    
    if ($enChapter -eq "Prologue") {
        $viChapter = "Mở Đầu"
        $chapterFolder = "prologue_mondstadt"
    } elseif ($enChapter -eq "Chapter I") {
        $viChapter = "Chương I"
        $chapterFolder = "ch1_liyue"
    } elseif ($enChapter -eq "Chapter II") {
        $viChapter = "Chương II"
        $chapterFolder = "ch2_inazuma"
    } elseif ($enChapter -eq "Chapter III") {
        $viChapter = "Chương III"
        $chapterFolder = "ch3_sumeru"
    } elseif ($enChapter -eq "Chapter IV") {
        $viChapter = "Chương IV"
        $chapterFolder = "ch4_fontaine"
    } elseif ($enChapter -eq "Chapter V") {
        $viChapter = "Chương V"
        $chapterFolder = "ch5_natlan"
    } elseif ($enChapter -eq "Chapter VI") {
        $viChapter = "Chương VI"
        $chapterFolder = "ch6_snezhnaya"
    } elseif ($enChapter -match "Interlude") {
        $viChapter = "Chương Hồi Ký"
        $chapterFolder = "interludes"
    } elseif ($enChapter -match "Welkin|Nod-Krai") {
        $viChapter = "Khúc Ca Ánh Trăng"
        $chapterFolder = "song_of_the_welkin_moon_nod_krai"
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
    
    # Create chapter directory
    $chapterQuestsDir = "$outputQuestsDir\$chapterFolder"
    New-Item -ItemType Directory -Force -Path $chapterQuestsDir | Out-Null
    
    $actSummaryPath = "$chapterQuestsDir\$safeViTitle.md"
    
    $subquestsMD = ""
    foreach ($q in $questFilesList) {
        $relativePath = $q.Path.Replace("d:\LoreResseach\Genshin\", "").Replace("\", "/")
        $subquestsMD += "- [ ] [$($q.Title)](file:///$($q.Path.Replace('\', '/')))`n"
    }
    
    $yamlFrontmatter = @"
---
id: "aq_$(Escape-FileName $act.title.ToLower())"
type: "archon_quest"
name: "$viTitle"
english_name: "$($act.title)"
chapter: "$viChapter"
region: "$($enRegion.ToLower())"
release_version: "1.0"
tags: ["archon_quest", "$($enRegion.ToLower())", "$($enChapter.ToLower().Replace(' ', '_'))"]
---

# Nhiệm Vụ Ma Thần: $viTitle

## Thông tin cơ bản
- **Tên tiếng Anh:** $($act.title)
- **Khu vực:** $viRegion
- **Chương:** $viChapter

## Danh sách hội thoại nhiệm vụ
$subquestsMD

## Tóm tắt cốt truyện
<!-- Tác giả fanfiction có thể bổ sung ghi chú cốt truyện tại đây -->
"@
    
    $yamlFrontmatter | Out-File -FilePath $actSummaryPath -Encoding utf8
    Write-Host "Saved Act summary page to: $actSummaryPath" -ForegroundColor Green
}

Write-Host "`nQuest fetching task finished!" -ForegroundColor Green


