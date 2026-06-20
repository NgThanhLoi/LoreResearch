$books = @(
    "A Brief History of the Pale Starborn.json",
    "Beyond Silver and Fine Gold.json",
    "Conch Echoes.json",
    "Hymns of the Far North.json",
    "Incandescent Ode of Resurrection.json",
    "Night Murmurs From the Far Border.json",
    "Tales Carried by the Northwind.json"
)

$vi_files = Get-ChildItem -Path "d:\LoreResseach\Genshin\_data\wiki_cache\vi" -Filter "*.json"

foreach ($book in $books) {
    $en_path = "d:\LoreResseach\Genshin\_data\wiki_cache\en\$book"
    $en_json = Get-Content $en_path -Raw | ConvertFrom-Json
    $en_title = $en_json.title
    
    $found = $false
    foreach ($vi_file in $vi_files) {
        $vi_json = Get-Content $vi_file.FullName -Raw | ConvertFrom-Json
        # Check if the title is similar or if there's any link
        if ($vi_json.title -eq $en_title -or $vi_json.title -like "*$en_title*") {
            Write-Output "$book -> $($vi_file.Name) (Title Match: $($vi_json.title))"
            $found = $true
            break
        }
    }
    if (-not $found) {
        # Check by content keywords or approximate translation
        Write-Output "$book -> (No exact title match)"
    }
}
