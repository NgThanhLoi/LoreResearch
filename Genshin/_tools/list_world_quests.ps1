[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$catUrl = "https://genshin-impact.fandom.com/api.php?action=query&list=categorymembers&cmtitle=Category:World_Quest_Series&cmlimit=150&format=json"
$res = Invoke-RestMethod -Uri $catUrl
$res.query.categorymembers | Select-Object -ExpandProperty title
