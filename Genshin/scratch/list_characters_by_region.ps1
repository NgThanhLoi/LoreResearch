$base_files = Get-ChildItem -Path "d:\LoreResseach\Genshin\entities\characters" -Recurse -Filter "*.md"
$results = @()

foreach ($file in $base_files) {
    $content = Get-Content $file.FullName -Raw
    $region = ""
    if ($content -match '(?m)^region:\s*"([^"]+)"' -or $content -match '(?m)^region:\s*([^\s\n\r]+)') {
        $region = $Matches[1]
    }
    
    $intel_path = "d:\LoreResseach\Genshin\entities\character_intelligence\$($file.BaseName).md"
    $has_intel = Test-Path $intel_path
    
    $results += [PSCustomObject]@{
        Name = $file.BaseName
        Region = $region
        HasIntel = $has_intel
        Path = $file.FullName
    }
}

$results | Where-Object { $_.Region -eq "nod-krai" -or $_.Region -like "*nod*" } | Format-Table -AutoSize
