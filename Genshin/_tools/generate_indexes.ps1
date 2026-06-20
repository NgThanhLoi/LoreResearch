[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($true)
$rootDir = "d:\LoreResseach\Genshin"

$outputFile = "$rootDir\_Index.md"
$outContent = @()
$outContent += "# Bách Khoa Toàn Thư Genshin Lore - Mục Lục Trung Tâm"
$outContent += ""
$outContent += "Đây là mục lục được tạo tự động chứa liên kết đến tất cả các bài viết, thực thể và tóm tắt nhiệm vụ trong dự án."
$outContent += ""

$outContent += "## 1. Các Thực Thể & Chủ Đề Chuyên Sâu (Entities)"
$entitiesFiles = Get-ChildItem -Path "$rootDir\entities" -Filter "*.md" -Recurse | Sort-Object Name
foreach ($file in $entitiesFiles) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    if ($content -match '(?sm)^---\s*(.*?)\s*---') {
        $yaml = $matches[1]
        $name = ""
        $type = ""
        if ($yaml -match '(?m)^name:\s*"(.*?)"') { $name = $matches[1] }
        if ($yaml -match '(?m)^type:\s*"(.*?)"') { $type = $matches[1] }
        if ($name -eq "") { $name = $file.BaseName }
        $relativePath = $file.FullName.Replace("\", "/").Replace(" ", "%20")
        $outContent += "- **[$name](file:///$($relativePath))** (Phân loại: *$type*)"
    }
}

$outContent += ""
$outContent += "## 2. Nhật Ký & Tóm Tắt Nhiệm Vụ (Quests)"
$questsFiles = Get-ChildItem -Path "$rootDir\quests" -Filter "*.md" -Recurse | Sort-Object Name
foreach ($file in $questsFiles) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    if ($content -match '(?sm)^---\s*(.*?)\s*---') {
        $yaml = $matches[1]
        $name = ""
        $type = ""
        if ($yaml -match '(?m)^name:\s*"(.*?)"') { $name = $matches[1] }
        if ($yaml -match '(?m)^type:\s*"(.*?)"') { $type = $matches[1] }
        if ($name -eq "") { $name = $file.BaseName }
        $relativePath = $file.FullName.Replace("\", "/").Replace(" ", "%20")
        $outContent += "- [$name](file:///$($relativePath)) (Phân loại: *$type*)"
    }
}

[System.IO.File]::WriteAllLines($outputFile, $outContent, [System.Text.UTF8Encoding]::new($true))
Write-Host "Đã tạo xong mục lục trung tâm tại $outputFile" -ForegroundColor Cyan
