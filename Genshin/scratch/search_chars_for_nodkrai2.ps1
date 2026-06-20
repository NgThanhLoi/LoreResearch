$files = Get-ChildItem -Path "d:\LoreResseach\Genshin\entities\characters" -Recurse -Filter "*.md"
$matched_chars = @()

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    if ($content -match 'Nod-Krai' -or $content -match 'Nasha' -or $content -match 'Lempo' -or $content -match 'Frostmoon' -or $content -match 'Voynich') {
        $matched_chars += $file.BaseName
    }
}

Write-Output "Matched characters:"
$matched_chars | Select-Object -Unique
