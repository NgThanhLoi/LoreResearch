$json = Get-Content -Path "d:\LoreResseach\Genshin\_data\wiki_cache\vi\Công Chúa Heo Rừng.json" -Raw -Encoding utf8 | ConvertFrom-Json
$content = $json.content

# Check the exact regex used in the script
$headerRegex = '==([^=]+)==\s*\r?\n'
$matches = [regex]::Matches($content, $headerRegex)

"Matches found: " + $matches.Count
for ($i = 0; $i -lt $matches.Count; $i++) {
    $matches[$i].Groups[1].Value.Trim() + " (Index: " + $matches[$i].Index + ")"
}

