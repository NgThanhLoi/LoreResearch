# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$catUrl = "https://genshin-impact.fandom.com/api.php?action=query&list=categorymembers&cmtitle=Category:Book_Collections&cmlimit=150&format=json"
$res = Invoke-RestMethod -Uri $catUrl
$books = $res.query.categorymembers

Write-Host "Total Books: $($books.Count)"
foreach ($book in $books) {
    Write-Host $book.title
}
