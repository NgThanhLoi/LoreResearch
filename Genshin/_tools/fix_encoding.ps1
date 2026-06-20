$utf8bom = New-Object System.Text.UTF8Encoding($true)
Get-ChildItem "d:\LoreResseach\Genshin\_tools\*.ps1" | ForEach-Object {
    $content = [System.IO.File]::ReadAllText($_.FullName, [System.Text.Encoding]::UTF8)
    [System.IO.File]::WriteAllText($_.FullName, $content, $utf8bom)
    Write-Host "Fixed encoding for $($_.Name)"
}
