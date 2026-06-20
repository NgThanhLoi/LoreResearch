$en_files = Get-ChildItem -Path "d:\LoreResseach\Genshin\_data\wiki_cache\en" -Filter "*.json"
$nod_krai_books = @()

foreach ($file in $en_files) {
    try {
        $json = Get-Content $file.FullName -Raw -ErrorAction Stop | ConvertFrom-Json -ErrorAction Stop
        if ($json.content -like "*Nod-Krai*" -or $json.content -like "*Nasha*" -or $json.content -like "*Frostmoon*" -or $json.content -like "*Voynich*" -or $json.content -like "*Kuuvahki*") {
            $nod_krai_books += [PSCustomObject]@{
                FileName = $file.Name
                Title    = $json.title
            }
        }
    } catch {
        # ignore parse errors
    }
}

$nod_krai_books | Format-Table -AutoSize
