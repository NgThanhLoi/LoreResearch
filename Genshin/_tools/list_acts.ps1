# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$catUrl = "https://genshin-impact.fandom.com/api.php?action=query&list=categorymembers&cmtitle=Category:Archon_Quest_Acts&cmlimit=150&format=json"
$res = Invoke-RestMethod -Uri $catUrl
$acts = $res.query.categorymembers

Write-Host "Total Acts: $($acts.Count)"
foreach ($act in $acts) {
    Write-Host $act.title
}
