[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($true)
$rootDir = "d:\LoreResseach\Genshin"
$mdFiles = Get-ChildItem -Path $rootDir -Filter "*.md" -Recurse

$brokenLinksCount = 0

Write-Host "Bắt đầu quét và xác thực các liên kết (file:///) trong toàn bộ cơ sở dữ liệu..." -ForegroundColor Cyan

foreach ($file in $mdFiles) {
    $lines = Get-Content $file.FullName -Encoding UTF8
    $lineNumber = 1
    foreach ($line in $lines) {
        # Match pattern: [](file:///path/to/file)
        $matches = [regex]::Matches($line, '\]\(file:///([^)]+)\)')
        foreach ($match in $matches) {
            $linkPath = $match.Groups[1].Value
            # URL decoding (%20 -> space)
            $linkPathDecoded = [System.Uri]::UnescapeDataString($linkPath)
            
            # Check if file exists
            if (-not (Test-Path $linkPathDecoded)) {
                Write-Host "BROKEN LINK in '$($file.Name)' at line $lineNumber`: $linkPathDecoded" -ForegroundColor Red
                $brokenLinksCount++
            }
        }
        $lineNumber++
    }
}

Write-Host "Quét hoàn tất!"
if ($brokenLinksCount -eq 0) {
    Write-Host "Tuyệt vời! Không tìm thấy liên kết hỏng. Tất cả liên kết file:/// đều hợp lệ." -ForegroundColor Green
} else {
    Write-Host "Phát hiện $brokenLinksCount liên kết hỏng. Vui lòng kiểm tra lại." -ForegroundColor Yellow
}
