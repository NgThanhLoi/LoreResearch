$files = Get-ChildItem -Path "d:\LoreResseach\Genshin\entities\characters" -Recurse -Filter "*.md"
$matches = @()

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    if ($content -match 'Nod-Krai' -or $content -match 'Nasha' -or $content -match 'Lempo' -or $content -match 'Frostmoon' -or $content -match 'Voynich') {
        $matches += $file.BaseName
    }
}

Write-Output "Matched characters:"
$matches | Unique
