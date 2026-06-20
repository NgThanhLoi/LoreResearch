param(
    [string]$FileName
)

$path = "d:\LoreResseach\Genshin\_data\wiki_cache\en\$FileName"
if (Test-Path $path) {
    $json = Get-Content $path -Raw | ConvertFrom-Json
    Write-Output "Title: $($json.title)"
    Write-Output "Content:"
    Write-Output $json.content
} else {
    Write-Output "File not found: $path"
}
