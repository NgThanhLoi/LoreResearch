$utf8bom = New-Object System.Text.UTF8Encoding($true)

function Clean-WikiText($text) {
    if (-not $text) { return "" }
    $text = $text -replace '(?s)<!--.*?-->', ''
    $text = $text -replace '<br\s*/?>', "`n"
    $text = $text -replace '\[\[[^\]|]+\|([^\]]+)\]\]', '$1'
    $text = $text -replace '\[\[([^\]]+)\]\]', '$1'
    $text = $text -replace '(?s)\{\{Description\|(.*?)\}\}', "> $1"
    $text = $text -replace '\{\{[^|]+\|([^}]+)\}\}', '$1'
    $text = $text -replace '\{\{[^}]+\}\}', ''
    $text = $text -replace '(?m)^\s+$', ''
    $text = $text -replace '\n{3,}', "`n`n"
    return $text.Trim()
}

$files = @(
    "A Brief History of the Pale Starborn.json",
    "Beyond Silver and Fine Gold.json",
    "Conch Echoes.json",
    "Hymns of the Far North.json",
    "Incandescent Ode of Resurrection.json",
    "Night Murmurs From the Far Border.json",
    "Tales Carried by the Northwind.json"
)

foreach ($f in $files) {
    $enPath = "d:\LoreResseach\Genshin\_data\wiki_cache\en\$f"
    if (Test-Path $enPath) {
        $json = Get-Content $enPath -Raw | ConvertFrom-Json
        $cleaned = Clean-WikiText $json.content
        $title = $json.title
        
        $md = "# $title`n`n"
        $md += "**Loại:** Book / Quest Text`n"
        $md += "**Xuất xứ lore:** Nod-Krai`n`n"
        $md += "---`n`n"
        $md += "## Nội Dung Đã Làm Sạch (Cleaned Content)`n`n"
        $md += $cleaned
        
        $outPath = "d:\LoreResseach\Genshin\sources\book_texts\nod-krai\$title.md"
        [System.IO.File]::WriteAllText($outPath, $md, $utf8bom)
        Write-Output "Wrote $outPath"
    }
}
