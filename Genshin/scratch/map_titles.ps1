$en_files = Get-ChildItem -Path "d:\LoreResseach\Genshin\_data\wiki_cache\en" -Filter "*.json"
$vi_files = Get-ChildItem -Path "d:\LoreResseach\Genshin\_data\wiki_cache\vi" -Filter "*.json"

$en_map = @{}
foreach ($file in $en_files) {
    $json = Get-Content $file.FullName -Raw | ConvertFrom-Json
    $en_map[$file.Name] = $json.title
}

$vi_map = @{}
foreach ($file in $vi_files) {
    $json = Get-Content $file.FullName -Raw | ConvertFrom-Json
    $vi_map[$file.Name] = $json.title
}

Write-Output "=== English Files ==="
foreach ($key in $en_map.Keys) {
    Write-Output "$key -> $($en_map[$key])"
}

Write-Output "`n=== Vietnamese Files ==="
foreach ($key in $vi_map.Keys) {
    Write-Output "$key -> $($vi_map[$key])"
}
