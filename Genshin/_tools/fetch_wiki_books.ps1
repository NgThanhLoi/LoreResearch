# fetch_wiki_books.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputBooksDir = "d:\LoreResseach\Genshin\entities\books"
$outputSourcesDir = "d:\LoreResseach\Genshin\sources\book_texts"

# Create directories
New-Item -ItemType Directory -Force -Path "$cacheDir\en" | Out-Null
New-Item -ItemType Directory -Force -Path "$cacheDir\vi" | Out-Null
New-Item -ItemType Directory -Force -Path $outputBooksDir | Out-Null
New-Item -ItemType Directory -Force -Path $outputSourcesDir | Out-Null

# Define Unicode strings to avoid script encoding corruption
$strQuyenHeader = "Quy" + [char]0x1EC3 + "n"
$strTapHeader = "T" + [char]0x1EAD + "p"
$strBookType = "s" + [char]0x00E1 + "ch_in_game"
$strTuyenTapHeader = "Tuy" + [char]0x1EC3 + "n t" + [char]0x1EAD + "p"
$strThongTinCoBan = "Th" + [char]0x00F4 + "ng tin c" + [char]0x01A1 + " b" + [char]0x1EA3 + "n"
$strTenTiengAnh = "T" + [char]0x00EA + "n ti" + [char]0x1EBF + "ng Anh"
$strSoQuyen = "S" + [char]0x1ED1 + " quy" + [char]0x1EC3 + "n"
$strNguonGoc = "Ngu" + [char]0x1ED3 + "n g" + [char]0x1ED1 + "c"
$strCacQuyenTap = "C" + [char]0x00E1 + "c quy" + [char]0x1EC3 + "n/t" + [char]0x1EAD + "p"
$strLienKetNoiDung = "Li" + [char]0x00EA + "n k" + [char]0x1EBF + "t n" + [char]0x1ED9 + "i dung"
$strNoiDungChiTiet = "N" + [char]0x1ED9 + "i dung v" + [char]0x0103 + "n b" + [char]0x1EA3 + "n chi ti" + [char]0x1EBF + "t"
$strSachHeader = "S" + [char]0x00E1 + "ch"
$strNguonGocVal = "V" + [char]0x0103 + "n b" + [char]0x1EA3 + "n trong game"

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
    
    # Clean wiki links [[Page Name|Display Name]] -> Display Name
    $text = $text -replace '\[\[[^|\]]+\|([^\]]+)\]\]', '$1'
    # Clean wiki links [[Page Name]] -> Page Name
    $text = $text -replace '\[\[([^\]]+)\]\]', '$1'
    
    # Clean HTML tags like <br>, <br/>, <p>
    $text = $text -replace '<br\s*/?>', "`n"
    $text = $text -replace '</?p>', "`n"
    
    # Clean bold and italics
    $text = $text -replace "'''", ""
    $text = $text -replace "''", ""
    
    return $text.Trim()
}

# Fetch all Book Collections from English wiki
Write-Host "Fetching list of Book Collections..." -ForegroundColor Green
$catUrl = "https://genshin-impact.fandom.com/api.php?action=query&list=categorymembers&cmtitle=Category:Book_Collections&cmlimit=150&format=json"
$catRes = Invoke-RestMethod -Uri $catUrl
$books = $catRes.query.categorymembers

Write-Host "Found $($books.Count) Book Collections." -ForegroundColor Green

$bookRegionMap = @{
    # Mondstadt
    "A Drunkard's Tale" = "mondstadt"
    "Ballads of the Squire" = "mondstadt"
    "Breeze Amidst the Forest" = "mondstadt"
    "Draft Hilichurl Ballads" = "mondstadt"
    "Flowers for Princess Fischl" = "mondstadt"
    "Heart of Clear Springs" = "mondstadt"
    "Heart's Desire" = "mondstadt"
    "Hex & Hound" = "mondstadt"
    "Hilichurl Ballad Selection" = "mondstadt"
    "Hilichurl Cultural Customs" = "mondstadt"
    "Someone's Diary" = "mondstadt"
    "Tales Carried by the Northwind" = "mondstadt"
    "The Boar Princess" = "mondstadt"
    "The Fox in the Dandelion Sea" = "mondstadt"
    "The Legend of Vennessa" = "mondstadt"
    "The Mondstadt Tower" = "mondstadt"
    "The Pale Princess and the Six Pygmies" = "mondstadt"
    "Vera's Melancholy" = "mondstadt"

    # Liyue
    "A Legend of Sword" = "liyue"
    "Customs of Liyue" = "liyue"
    "Diary of Roald the Adventurer" = "liyue"
    "Legend of the Lone Sword" = "liyue"
    "Legend of the Shattered Halberd" = "liyue"
    "Men of Lithin" = "liyue"
    "Moonlit Bamboo Forest" = "liyue"
    "Mt. Lingmeng Gossip" = "liyue"
    "Records of Jueyun" = "liyue"
    "Records of the Gallant" = "liyue"
    "Rex Incognito" = "liyue"
    "Springs of Hidden Jade" = "liyue"
    "String of Pearls" = "liyue"
    "Tales From the Waves" = "liyue"

    # Inazuma
    "Glimpses of Mysterious Inazuma" = "inazuma"
    "New Chronicles of the Six Kitsune" = "inazuma"
    "Princess Mina of the Fallen Nation" = "inazuma"
    "The Byakuyakoku Collection" = "inazuma"
    "Toki Alley Tales" = "inazuma"
    "Treasured Tales of the Chouken Shinkageuchi" = "inazuma"

    # Sumeru
    "A Thousand Nights" = "sumeru"
    "Kompore the Cunning" = "sumeru"
    "The Folio of Foliage" = "sumeru"
    "The Saga of Hamavaran" = "sumeru"
    "The Tale of Shiruyeh and Shirin" = "sumeru"

    # Fontaine
    "Fables de Fontaine" = "fontaine"
    "La Chanson d'Erinnyes" = "fontaine"
    "Robben versus Chesterton: Iridescent Brooch" = "fontaine"
    "The Fall of the Faded Castle" = "fontaine"
    "The History of the Decline and Fall of Remuria" = "fontaine"
    "The Two Musketeers" = "fontaine"

    # Natlan
    "Maawe and Monetoo" = "natlan"
    "Rangi Nui's End" = "natlan"
    "Records of Hanan Pacha" = "natlan"
    "Scroll of Streaming Song" = "natlan"
    "Sundjatta's First Foray" = "natlan"
    "Tales of a Snow-Winged Goose" = "natlan"
    "The Headless Coquitao" = "natlan"
    "The Legends of Reed Miller, Thief Extraordinaire" = "natlan"
    "The Little Witch and the Undying Fire" = "natlan"
    "The Tale of Kuntur" = "natlan"
    "The Tale of Qoyllor and Ukuku" = "natlan"
    "The Volcano Lord and the Shadow Pins" = "natlan"

    # Other / Global / Snezhnaya / Khaenri'ah
    "A Brief History of the Pale Starborn" = "global"
    "Anecdota Septentrionalis" = "snezhnaya"
    "Conch Echoes" = "global"
    "Fires of Autumn Twilight" = "global"
    "Hymns of the Far North" = "snezhnaya"
    "Night Murmurs From the Far Border" = "global"
    "Perinheri" = "khaenriah"
    "Teyvat Travel Guide" = "global"
    "The Feline Firm" = "global"
    "Time Trekker" = "global"
}

$allowedBooks = $bookRegionMap.Keys

foreach ($book in $books) {
    if ($allowedBooks -notcontains $book.title) {
        continue
    }
    
    Write-Host "`n=== Processing Book: $($book.title) ===" -ForegroundColor Green
    
    # 1. Fetch English book page to get Vietnamese title mapping
    $enBookPage = Get-WikiPage $book.title "en"
    if ($null -eq $enBookPage) { continue }
    
    $viTitle = $null
    if ($enBookPage.content -match "\[\[vi:(.*?)\]\]") {
        $viTitle = $Matches[1].Trim()
    }
    
    if ($null -eq $viTitle) {
        if ($enBookPage.content -match '(?m)^[ \t]*\|[ \t]*vi[ \t]*=[ \t]*(.*?)\r?$') {
            $viTitle = ($Matches[1] -replace '\{\{tt\|([^|]+)\|[^}]+\}\}', '$1').Trim()
        }
    }
    
    if ($null -eq $viTitle) {
        Write-Host "Could not find Vietnamese title for book: $($book.title)" -ForegroundColor Yellow
        continue
    }
    
    Write-Host "Vietnamese Title: $viTitle" -ForegroundColor Green
    
    # 2. Fetch Vietnamese book page
    $viWikiTitleMap = @{
        "Legend of the Lone Sword" = "Hiệp Khách Ký"
    }
    $viWikiTitle = $viWikiTitleMap[$book.title]
    if ($null -eq $viWikiTitle) { $viWikiTitle = $viTitle }
    
    $viBookPage = Get-WikiPage $viWikiTitle "vi"
    
    $content = $null
    $isEnglishFallback = $false
    if ($null -ne $viBookPage) {
        $content = $viBookPage.content
    } else {
        Write-Host "Vietnamese page not found for book: $viWikiTitle. Falling back to English page." -ForegroundColor Yellow
        $content = $enBookPage.content
        $isEnglishFallback = $true
    }
    
    # 3. Parse volumes/chapters from wikitext
    
    # Use $headerMatches instead of $matches to avoid collision with automatic $Matches variable!
    $headerRegex = '==([^=]+)==\s*\r?\n'
    $headerMatches = [regex]::Matches($content, $headerRegex)
    
    $volumes = @()
    for ($i = 0; $i -lt $headerMatches.Count; $i++) {
        $headerName = $headerMatches[$i].Groups[1].Value.Trim()
        
        # ASCII-safe regex matching for Quyển, Tập, Vol, Chương, Book, Chapter
        if ($headerName -match "Quy|T.p|Vol|Ch..ng|Book|Chapter") {
            $startIdx = $headerMatches[$i].Index + $headerMatches[$i].Length
            $endIdx = $content.Length
            if ($i -lt ($headerMatches.Count - 1)) {
                $endIdx = $headerMatches[$i+1].Index
            }
            
            $volumeBlock = $content.Substring($startIdx, $endIdx - $startIdx).Trim()
            
            $volTitle = $headerName
            $volText = ""
            
            # Check for Readable template in volumeBlock
            if ($volumeBlock -match "\{\{Readable([\s\S]*?)\}\}") {
                $readableBlock = $Matches[1] # Matches is safe here since we just matched
                
                # Extract title parameter
                if ($readableBlock -match "title\s*=\s*(.*?)(?:\||\r?\n|$)") {
                    $volTitle = $Matches[1].Trim()
                }
                
                # Extract text parameter
                if ($readableBlock -match "text\s*=\s*([\s\S]*?)$") {
                    $volText = $Matches[1].Trim()
                }
            } else {
                $volText = $volumeBlock
            }
            
            if ($volText) {
                $volumes += [PSCustomObject]@{
                    Volume = $headerName
                    Title = $volTitle
                    Text = Clean-WikiText $volText
                }
            }
        }
    }
    
    if ($volumes.Count -eq 0) {
        # Fallback: look for any Readable templates
        $readableMatches = [regex]::Matches($content, "\{\{Readable([\s\S]*?)\}\}")
        $vNum = 1
        foreach ($rm in $readableMatches) {
            $readableBlock = $rm.Groups[1].Value
            $volTitle = "$viTitle - Quy$([char]0x1EC3)n $vNum"
            $volText = ""
            
            if ($readableBlock -match "title\s*=\s*(.*?)(?:\||\r?\n|$)") {
                $volTitle = $Matches[1].Trim()
            }
            if ($readableBlock -match "text\s*=\s*([\s\S]*?)$") {
                $volText = $Matches[1].Trim()
            }
            
            if ($volText) {
                $volumes += [PSCustomObject]@{
                    Volume = "Quy$([char]0x1EC3)n $vNum"
                    Title = $volTitle
                    Text = Clean-WikiText $volText
                }
                $vNum++
            }
        }
    }
    
    if ($volumes.Count -gt 0) {
        # Save raw book text
        $safeViTitle = Escape-FileName $viTitle
        $bookSourcePath = "$outputSourcesDir\$safeViTitle.md"
        
        $sourceMarkdown = "# ${strTuyenTapHeader}: $viTitle`n`n"
        foreach ($vol in $volumes) {
            $sourceMarkdown += "## $($vol.Volume): $($vol.Title)`n`n$($vol.Text)`n`n"
        }
        
        $sourceMarkdown | Out-File -FilePath $bookSourcePath -Encoding utf8
        Write-Host "Saved book text to: $bookSourcePath" -ForegroundColor Gray
        
        # Save entity profile
        $bookEntityPath = "$outputBooksDir\$safeViTitle.md"
        
        $volumesListMD = ""
        foreach ($vol in $volumes) {
            $volumesListMD += "- **$($vol.Volume):** $($vol.Title)`n"
        }
        
        $bookRegion = $bookRegionMap[$book.title]
        if ($null -eq $bookRegion) { $bookRegion = "global" }
        
        $yamlFrontmatter = @"
---
id: "book_$(Escape-FileName $book.title.ToLower())"
type: "$strBookType"
name: "$viTitle"
english_name: "$($book.title)"
volumes_count: $($volumes.Count)
release_version: "1.0"
tags: ["book", "lore", "$bookRegion"]
---

# ${strSachHeader}: $viTitle

## ${strThongTinCoBan}
- **${strTenTiengAnh}:** $($book.title)
- **${strSoQuyen}:** $($volumes.Count)
- **${strNguonGoc}:** ${strNguonGocVal}

## ${strCacQuyenTap}
$volumesListMD

## ${strLienKetNoiDung}
- [${strNoiDungChiTiet}](file:///$($bookSourcePath.Replace('\', '/')))

## Lore trích xuất & Phân tích
<!-- Tác giả fanfiction có thể bổ sung ghi chú phân tích lore từ sách tại đây -->
"@
        
        $yamlFrontmatter | Out-File -FilePath $bookEntityPath -Encoding utf8
        Write-Host "Saved book entity profile to: $bookEntityPath" -ForegroundColor Green
    } else {
        Write-Host "No readable volume texts found for book: $viTitle" -ForegroundColor Yellow
    }
}

Write-Host "`nBook fetching task finished!" -ForegroundColor Green




