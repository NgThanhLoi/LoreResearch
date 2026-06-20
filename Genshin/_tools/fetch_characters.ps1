# fetch_characters.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputCharsDir = "d:\LoreResseach\Genshin\entities\characters"
$outputSourcesDir = "d:\LoreResseach\Genshin\sources\voice_lines\characters"

# Create directories
New-Item -ItemType Directory -Force -Path $outputCharsDir | Out-Null
New-Item -ItemType Directory -Force -Path $outputSourcesDir | Out-Null

# Define Unicode strings to avoid script encoding corruption
$strCharType = "nh" + [char]0x00E2 + "n_v" + [char]0x1EAD + "t"
$strMondstadt = "Mondstadt"
$strLiyue = "Liyue"
$strInazuma = "Inazuma"
$strSumeru = "Sumeru"
$strFontaine = "Fontaine"
$strNatlan = "Natlan"
$strSnezhnaya = "Snezhnaya"

$strThongTinCoBan = "Th" + [char]0x00F4 + "ng tin c" + [char]0x01A1 + " b" + [char]0x1EA3 + "n"
$strTenTiengAnh = "T" + [char]0x00EA + "n ti" + [char]0x1EBF + "ng Anh"
$strDanhHieu = "Danh hi" + [char]0x1EC7 + "u"
$strThienHa = "Thi" + [char]0x00EA + "n h" + [char]0x00E0 + " (Affiliation)"
$strNguyenTo = "Nguy" + [char]0x00EA + "n t" + [char]0x1ED1
$strVuKhi = "V" + [char]0x0169 + " kh" + [char]0x00ED
$strDoHiem = [char]0x0110 + [char]0x1ED9 + " hi" + [char]0x1EBF + "m"
$strSinhNhat = "Sinh nh" + [char]0x1EAD + "t"
$strCungMenh = "Cung m" + [char]0x1EC7 + "nh"
$strDienVienLongTieng = "Di" + [char]0x1EC5 + "n vi" + [char]0x00EA + "n l" + [char]0x1ED3 + "ng ti" + [char]0x1EBF + "ng"
$strHoiThoaiHso = "H" + [char]0x1ED9 + "i tho" + [char]0x1EA1 + "i h" + [char]0x1ED3 + " s" + [char]0x01A1
$strLienKetHoiThoai = "Li" + [char]0x00EA + "n k" + [char]0x1EBF + "t h" + [char]0x1ED9 + "i tho" + [char]0x1EA1 + "i"
$strNoiDungHoiThoai = "N" + [char]0x1ED9 + "i dung h" + [char]0x1ED9 + "i tho" + [char]0x1EA1 + "i"

# CV translations
$strLangEN = "Ti" + [char]0x1EBF + "ng Anh"
$strLangCN = "Ti" + [char]0x1EBF + "ng Trung"
$strLangJA = "Ti" + [char]0x1EBF + "ng Nh" + [char]0x1EAD + "t"
$strLangKO = "Ti" + [char]0x1EBF + "ng H" + [char]0x00E0 + "n"

# Extra escaped strings to prevent encoding collision in here-strings
$strNgoaiLe = "- Kh" + [char]0x00F4 + "ng c" + [char]0x00F3 + " d" + [char]0x1EEF + " li" + [char]0x1EC7 + "u h" + [char]0x1ED9 + "i tho" + [char]0x1EA1 + "i h" + [char]0x1ED3 + " s" + [char]0x01A1 + "."
$strCvHeader = "| Ng" + [char]0x00F4 + "n ng" + [char]0x1EEF + " | Di" + [char]0x1EC5 + "n vi" + [char]0x00EA + "n |`n|---|---|`n"
$strThuocTinh = "Thu" + [char]0x1ED9 + "c t" + [char]0x00ED + "nh"
$strGiaTri = "Gi" + [char]0x00E1 + " tr" + [char]0x1ECB
$strNhanVatHeader = "Nh" + [char]0x00E2 + "n v" + [char]0x1EAD + "t"
$strGioiThieu = "Gi" + [char]0x1EDB + "i thi" + [char]0x1EC7 + "u"
$strCauChuyenNhanVat = "C" + [char]0x00E2 + "u chuy" + [char]0x1EC7 + "n nh" + [char]0x00E2 + "n v" + [char]0x1EAD + "t (Character Stories)"
$strLoreTrichXuat = "Lore tr" + [char]0x00ED + "ch xu" + [char]0x1EA5 + "t & Ph" + [char]0x00E2 + "n t" + [char]0x00ED + "ch"

function Escape-FileName ($name) {
    $invalid = [System.IO.Path]::GetInvalidFileNameChars()
    $nameClean = $name
    foreach ($char in $invalid) {
        $nameClean = $nameClean.Replace($char, '_')
    }
    return $nameClean
}

# Fetch all characters from Vercel API in Vietnamese (verbose list)
Write-Host "Fetching characters database in Vietnamese..." -ForegroundColor Green
$url = "https://genshin-db-api.vercel.app/api/v5/characters?query=names&matchCategories=true&verboseCategories=true&resultLanguage=vi"
try {
    $chars = Invoke-RestMethod -Uri $url
} catch {
    Write-Host "Failed to fetch characters from Vercel API. Check connection." -ForegroundColor Red
    exit 1
}

Write-Host "Found $($chars.Count) characters in database." -ForegroundColor Green

# Fetch English names for mapping and wiki crawing
Write-Host "Fetching English names for mapping..." -ForegroundColor Green
$enUrl = "https://genshin-db-api.vercel.app/api/v5/characters?query=names&matchCategories=true&verboseCategories=true&resultLanguage=en"
$enChars = Invoke-RestMethod -Uri $enUrl

# Build English name map by ID
$enNameMap = @{}
foreach ($ec in $enChars) {
    $enNameMap[$ec.id] = $ec.name
}

# We will process Mondstadt characters for Phase 1
$mondstadtNames = @(
    "Albedo", "Amber", "Barbara", "Bennett", "Diluc", "Diona", "Eula", "Fischl", 
    "Jean", "Kaeya", "Klee", "Lisa", "Mika", "Mona", "Noelle", "Razor", 
    "Rosaria", "Sucrose", "Venti"
)

foreach ($c in $chars) {
    # Get English name
    $enName = $enNameMap[$c.id]
    if ($null -eq $enName) {
        $enName = $c.name # Fallback
    }
    
    # Get region folder name
    $regionFolder = "global"
    if ($c.region) {
        $regionLower = $c.region.ToLower()
        if ($regionLower -eq "mondstadt") { $regionFolder = "mondstadt" }
        elseif ($regionLower -eq "liyue") { $regionFolder = "liyue" }
        elseif ($regionLower -eq "inazuma") { $regionFolder = "inazuma" }
        elseif ($regionLower -eq "sumeru") { $regionFolder = "sumeru" }
        elseif ($regionLower -eq "fontaine") { $regionFolder = "fontaine" }
        elseif ($regionLower -eq "natlan") { $regionFolder = "natlan" }
        elseif ($regionLower -eq "snezhnaya") { $regionFolder = "snezhnaya" }
    }
    
    $safeViName = Escape-FileName $c.name
    $safeRegion = Escape-FileName $regionFolder
    
    # Create region directories
    $charRegionDir = "$outputCharsDir\$safeRegion"
    New-Item -ItemType Directory -Force -Path $charRegionDir | Out-Null
    
    # Get Voiceovers (friendLines)
    Write-Host "Fetching voiceovers for $enName..." -ForegroundColor Cyan
    $voUrl = "https://genshin-db-api.vercel.app/api/v5/voiceovers?query=$([uri]::EscapeDataString($enName))&resultLanguage=vi"
    $friendLines = @()
    try {
        $voRes = Invoke-RestMethod -Uri $voUrl
        if ($voRes -and $voRes.friendLines) {
            $friendLines = $voRes.friendLines
        }
    } catch {
        Write-Host "No voiceovers found for $enName or API failed." -ForegroundColor Yellow
    }
    
    # Save Voiceovers
    $voFilePath = ""
    if ($friendLines.Count -gt 0) {
        $voFilePath = "$outputSourcesDir\$safeViName.md"
        $voMarkdown = "# ${strHoiThoaiHso}: $($c.name)`n`n"
        
        foreach ($line in $friendLines) {
            $cleanedDesc = $line.description -replace '<br\s*/?>', "`n"
            $voMarkdown += "### $($line.title)`n`n$cleanedDesc`n`n"
        }
        
        $voMarkdown | Out-File -FilePath $voFilePath -Encoding utf8
        Write-Host "Saved voiceovers to: $voFilePath" -ForegroundColor Gray
    }
    
    # Create Character Entity Profile
    $charEntityPath = "$charRegionDir\$safeViName.md"
    
    # Format voice actors CV
    $cvTable = $strCvHeader
    if ($c.cv) {
        if ($c.cv.english) { $cvTable += "| $strLangEN | $($c.cv.english) |`n" }
        if ($c.cv.chinese) { $cvTable += "| $strLangCN | $($c.cv.chinese) |`n" }
        if ($c.cv.japanese) { $cvTable += "| $strLangJA | $($c.cv.japanese) |`n" }
        if ($c.cv.korean) { $cvTable += "| $strLangKO | $($c.cv.korean) |`n" }
    }
    
    $voLinkMD = ""
    if ($voFilePath) {
        $voLinkMD = "- [${strNoiDungHoiThoai}](file:///$($voFilePath.Replace('\', '/')))"
    } else {
        $voLinkMD = $strNgoaiLe
    }
    
    $yamlFrontmatter = @"
---
id: "char_$(Escape-FileName $enName.ToLower())"
type: "$strCharType"
name: "$($c.name)"
english_name: "$enName"
region: "$regionFolder"
element: "$($c.elementText)"
weapon: "$($c.weaponText)"
rarity: $($c.rarity)
birthday: "$($c.birthday)"
constellation: "$($c.constellation)"
release_version: "$($c.version)"
tags: ["character", "$regionFolder", "$($c.elementText.ToLower())"]
---

# ${strNhanVatHeader}: $($c.name)

## ${strThongTinCoBan}
| ${strThuocTinh} | ${strGiaTri} |
|---|---|
| **${strTenTiengAnh}** | $enName |
| **${strDanhHieu}** | $($c.title) |
| **${strThienHa}** | $($c.affiliation) |
| **${strNguyenTo}** | $($c.elementText) |
| **${strVuKhi}** | $($c.weaponText) |
| **${strDoHiem}** | $($c.rarity) sao |
| **${strSinhNhat}** | $($c.birthday) |
| **${strCungMenh}** | $($c.constellation) |

## ${strGioiThieu}
$($c.description)

## ${strDienVienLongTieng}
$cvTable

## ${strLienKetHoiThoai}
$voLinkMD

## ${strCauChuyenNhanVat}
<!-- Tác giả fanfiction có thể bổ sung hoặc cào thêm câu chuyện nhân vật từ Wiki tại đây -->

## ${strLoreTrichXuat}
<!-- Phân tích các dữ kiện lore nổi bật của nhân vật này -->
"@
    
    $yamlFrontmatter | Out-File -FilePath $charEntityPath -Encoding utf8
    Write-Host "Saved character profile to: $charEntityPath" -ForegroundColor Green
}

Write-Host "`nCharacter processing task finished!" -ForegroundColor Green


