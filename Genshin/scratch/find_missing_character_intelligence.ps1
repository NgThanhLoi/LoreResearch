$base_files = Get-ChildItem -Path "d:\LoreResseach\Genshin\entities\characters" -Recurse -Filter "*.md"
$missing = @()

foreach ($file in $base_files) {
    $intel_path = "d:\LoreResseach\Genshin\entities\character_intelligence\$($file.BaseName).md"
    if (-not (Test-Path $intel_path)) {
        $content = Get-Content $file.FullName -Raw
        $region = ""
        if ($content -match '(?m)^region:\s*"([^"]+)"' -or $content -match '(?m)^region:\s*([^\s\n\r]+)') {
            $region = $Matches[1]
        }
        $missing += [PSCustomObject]@{
            Name = $file.BaseName
            Region = $region
            Path = $file.FullName
        }
    }
}

Write-Output "Missing Character Intelligence Profiles:"
$missing | Format-Table -AutoSize
