# fetch_manga.ps1
# Setup console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$cacheDir = "d:\LoreResseach\Genshin\_data\wiki_cache"
$outputMangaDir = "d:\LoreResseach\Genshin\sources\manga_transcripts"

# Create directories
New-Item -ItemType Directory -Force -Path "$cacheDir\en" | Out-Null
New-Item -ItemType Directory -Force -Path "$cacheDir\vi" | Out-Null
New-Item -ItemType Directory -Force -Path $outputMangaDir | Out-Null

function Escape-FileName ($name) {
    $invalid = [System.IO.Path]::GetInvalidFileNameChars()
    $nameClean = $name
    foreach ($char in $invalid) {
        $nameClean = $nameClean.Replace($char, '_')
    }
    return $nameClean
}

function Get-WikiPage ($title, $wiki = "en") {
    $safeTitle = Escape-FileName $title
    $cacheFile = "$cacheDir\$wiki\$safeTitle.json"
    
    if (Test-Path $cacheFile) {
        $cacheJson = Get-Content -Path $cacheFile -Raw -Encoding utf8 | ConvertFrom-Json
        return $cacheJson
    }
    
    Start-Sleep -Milliseconds 150
    
    $encodedTitle = [uri]::EscapeDataString($title)
    $domain = if ($wiki -eq "vi") { "genshin-impact.fandom.com/vi" } else { "genshin-impact.fandom.com" }
    $url = "https://$domain/api.php?action=query&prop=revisions&titles=$encodedTitle&rvprop=content&rvslots=main&redirects=1&format=json"
    
    try {
        Write-Host "Fetching $wiki Wiki page: $title" -ForegroundColor Cyan
        $res = Invoke-RestMethod -Uri $url
        
        $pages = $res.query.pages
        $properties = ($pages | Get-Member -MemberType NoteProperty).Name
        $pageId = if ($properties -is [array]) { $properties[0] } else { $properties }
        
        if ($pageId -eq "-1") {
            Write-Host "Page not found: $title" -ForegroundColor Yellow
            return $null
        }
        
        $page = $pages.$pageId
        $resolvedTitle = $page.title
        $content = $page.revisions[0].slots.main.'*'
        
        $result = [PSCustomObject]@{
            pageid = $pageId
            title = $resolvedTitle
            content = $content
        }
        
        # Save to cache
        $result | ConvertTo-Json -Depth 5 | Out-File -FilePath $cacheFile -Encoding utf8
        return $result
    } catch {
        Write-Host "Error fetching page: $title - $_" -ForegroundColor Red
        return $null
    }
}

$mangaChapters = @(
    @{ Title = "Songs of the Wind"; Num = "00"; ChapterName = "Prologue" },
    @{ Title = "Bad Wine"; Num = "01"; ChapterName = "Chapter 1" },
    @{ Title = "Flame Born"; Num = "02"; ChapterName = "Chapter 2" },
    @{ Title = "Lost and Found"; Num = "03"; ChapterName = "Chapter 3" },
    @{ Title = "Surprise Finding"; Num = "04"; ChapterName = "Chapter 4" },
    @{ Title = "Dangerous Grounds"; Num = "05"; ChapterName = "Chapter 5" },
    @{ Title = "Wind and Fyre"; Num = "06"; ChapterName = "Chapter 6" },
    @{ Title = "Dusty Chest"; Num = "07"; ChapterName = "Chapter 7" },
    @{ Title = "Final Clue"; Num = "08"; ChapterName = "Chapter 8" },
    @{ Title = "Ludi Harpastum (Manga)"; Num = "09"; ChapterName = "Chapter 9" },
    @{ Title = "Fools Trick"; Num = "10"; ChapterName = "Chapter 10" },
    @{ Title = "Serpent's Dance"; Num = "11"; ChapterName = "Chapter 11" },
    @{ Title = "Unshrouded Resolution"; Num = "12"; ChapterName = "Chapter 12" },
    @{ Title = "Dual Recurrence"; Num = "13"; ChapterName = "Chapter 13" },
    @{ Title = "Malignant Illness"; Num = "14"; ChapterName = "Chapter 14" },
    @{ Title = "Talks Over a Drink"; Num = "15"; ChapterName = "Chapter 15" },
    @{ Title = "Conclusion"; Num = "16"; ChapterName = "Chapter 16" }
)

# Hardcoded official Vietnamese titles mapping
$viTitleMap = @{
    "00" = "Bài Ca Của Gió"
    "01" = "Nếm Rượu"
    "02" = "Viêm Sinh"
    "03" = "Mất Đồ"
    "04" = "Biến Động"
    "05" = "Hiểm Địa"
    "06" = "Phong Hỏa"
    "07" = "Chiếc Hộp"
    "08" = "Manh Mối"
    "09" = "Lễ Đánh Cầu"
    "10" = "Vở Kịch"
    "11" = "Xà Âm"
    "12" = "Mây Đen"
    "13" = "Giáng Lâm"
    "14" = "Căn Bệnh Kỳ Quái"
    "15" = "Đại Hội Tiệc Trà"
    "16" = "Kết Thúc"
}

# Hardcoded Vietnamese translations for descriptions and summaries to ensure high quality and official terms
$viMangaData = @{
    "00" = @{
        Desc = "Sau khi Phong Thần Barbatos tạo dựng thành Mondstadt để giúp dân chúng ổn định cuộc sống, ngài mang theo cây đàn yêu thích đi về phương xa. Ngàn năm sau, thành Mondstadt lại một lần nữa rơi vào cảnh hiểm nguy. Đám quý tộc do Lawrence cầm đầu lạm dụng quyền lực, khiến người dân rơi vào cảnh lầm than. Khi Lễ Đánh Cầu tổ chức mỗi năm một lần gần bắt đầu, một người khách thần bí đến Mondstadt..."
        Summary = "Vào ngày Lễ Đánh Cầu diễn ra, nô lệ Vennessa đã đến Mondstadt để mua thuốc cho cô em gái ốm yếu của mình - Lind. Trong rừng sâu, Barbatos - Phong Thần - đã tỉnh dậy sau giấc ngủ ngàn thu.`n`nKể từ khi Barbatos rời khỏi Mondstadt, Thành Phố Tự Do giờ chịu sự thống trị của đám quý tộc. Mang thân phận mới là một nhà thơ lang thang với cái tên Venti, cậu dạo quanh thành phố và biểu diễn ca hát. Sau khi nhận được trái táo từ người bán hàng ven đường, chủ tiệm đã nói cho cậu biết về Lễ Đánh Cầu tổ chức vào ngày hôm đó. Venti đến nơi tổ chức lễ hội, nhưng rồi biết được rằng lễ hội giờ đã bị Barca Lawrence - người thừa kế của Gia Tộc Lawrence thao túng. Việc cậu bước lên nhặt lấy quả cầu đã khiến Barca tức giận, ra lệnh binh lính bắt cậu lại. Trong lúc rượt đuổi, Venti vô tình đụng phải Vennessa. Do cô đã có tiếng là một chiến binh mạnh mẽ, Barca buộc phải lui bước và đòi bố hắn mua lại Vennessa và cả bộ tộc của cô rồi nhốt vào lao.`n`nĐêm đó, Venti đến thăm Vennessa trong nhà lao, cả hai làm quen với nhau. Venti tỏ mong muốn giúp đỡ Vennessa trốn thoát nhưng cô lại từ chối, nói rằng tự do phải do bản thân giành lấy, nếu không nó cũng chỉ như đeo thêm xiềng xích khác. Sau đó Venti rời đi mang theo một kế hoạch bí mật. Sáng ngày hôm sau, Vennessa cùng tộc nhân của cô được đưa tới đấu trường, chiến đấu với chính Ma Long Ursa để đổi lấy quyền điều khiển Mondstadt nếu giành được chiến thắng. Cô đã chiến đấu với các hilichurl và con rồng quyết liệt cho đến khi Barbatos đột nhiên xuất hiện, dùng ngọn gió của mình để tăng sức chiến đấu cho cô, giúp cô đánh bại con rồng. Sau khi Vennessa chiến thắng, Barbatos đã yêu cầu Ngài Lawrence trao lại quyền kiểm soát thành phố cho cô. Vennessa nhận ra ngài chính là Venti và cảm ơn ngài.`n`nMột nghìn năm sau, Venti ở lại Mondstadt. Cậu kể lại câu chuyện này cho Nhà Lữ Hành, cùng với linh hồn của Vennessa sẽ mãi dõi theo thành phố này."
    }
    "01" = @{
        Desc = "Nhiều năm qua đi, dưới sự bảo vệ của Đội Kỵ Sĩ Tây Phong, thành Mondstadt đã được yên bình, người dân an cư lạc nghiệp. Nhưng, từ một góc tối nơi ánh mặt trời khó chiếu tới được, một âm mưu to lớn đang bắt đầu..."
        Summary = "Tại hầm ngầm của Fatui, Krupp đang thử nghiệm đưa các đối tượng thử nghiệm đấu với ma thú. Thử nghiệm thất bại khiến Dottore thất vọng và đe dọa dùng Krupp làm vật thí nghiệm tiếp theo. Để thoát thân, Krupp đề xuất tuyển mộ người từ Mondstadt.`n`nTại Lãnh Địa Rượu Dawn, Diluc tổ chức một bữa tiệc rượu. Dottore và Krupp đến thương lượng với Seamus Pegg và Cavalry Captain Kaeya về việc tuyển mộ người Mondstadt làm gián điệp và lính Fatui dưới danh nghĩa bảo hộ Mondstadt. Diluc từ chối thẳng thừng.`n`nKrupp sau đó bị Kaeya lừa xuống hầm rượu của trang biệt thự và bị Diluc (trong vai Anh Hùng Bóng Đêm) bắt giữ tra khảo. Trước khi Krupp kịp khai ra bí mật của Fatui, Dottore xuất hiện và thủ tiêu hắn."
    }
    "02" = @{
        Desc = "Tuyên bố khi bọn người Fatui rời đi khiến cho thành phố không thể yên bình, bóng tối đang ngủ yên bỗng chốc xao động. Mà những người bảo vệ trẻ tuổi của thành Mondstadt lại không hề hay biết."
        Summary = "Dottore rời Mondstadt sau khi thương thảo thất bại. Amber trong lúc tuần tra bên ngoài thành Mondstadt đã phát hiện ra một cỗ xe vận chuyển của Fatui bị phá hủy bởi ngọn lửa màu đen kỳ lạ (Hắc Hỏa). Đội Kỵ Sĩ Tây Phong bắt đầu cuộc điều tra về sự cố này."
    }
    "03" = @{
        Desc = "Trước tượng Nữ Thần, Kỵ Sĩ Trinh Thám Amber gặp một người khách mình quấn đầy băng trông rất khả nghi. Ý đồ của cô ấy, rốt cuộc là...?"
        Summary = "Amber bắt gặp Collei, một cô bé quấn băng khắp người đang lẩn trốn trong thành phố. Nhận thấy cô bé đang đói và cảnh giác, Amber đã dẫn cô bé đi ăn và tham quan Mondstadt, cố gắng giúp cô bé cảm nhận sự ấm áp của thành phố tự do."
    }
    "04" = @{
        Desc = "Vụ án Hắc Hỏa vẫn không có chút tiến triển nào, hai người mà Kỵ Sĩ Trinh Thám Amber vô tình gặp được, lại mang đến sự chuyển biến cho vụ án."
        Summary = "Amber đưa Collei lên đỉnh thành Mondstadt để trải nghiệm cảm giác bay lượn bằng phong cầm. Trong khi đó, Kaeya nghi ngờ Collei là thủ phạm đứng sau vụ án Hắc Hỏa thiêu rụi cỗ xe của Fatui."
    }
    "05" = @{
        Desc = "Để kiểm tra thân phận của Collei, Kaeya đã giăng ra một cái bẫy nguy hiểm."
        Summary = "Kaeya cố tình giăng bẫy đẩy Collei vào nguy hiểm nhằm ép cô bé bộc lộ sức mạnh Hắc Hỏa của mình. Amber phát hiện và kịp thời can thiệp bảo vệ Collei, phản đối hành vi tàn nhẫn của Kaeya."
    }
    "06" = @{
        Desc = "Khi ngọn lửa hận thù bùng cháy, chỉ có ngọn gió ấm áp mới có thể xoa dịu vết thương."
        Summary = "Collei mất kiểm soát sức mạnh do xúc cảm phẫn uất, khiến ngọn lửa đen bùng phát dữ dội. Amber sử dụng Vision Hỏa của mình kết hợp với ngọn gió của Mondstadt để bao bọc và xoa dịu ngọn lửa hắc hỏa, cứu thoát Collei khỏi sự tự hủy diệt."
    }
    "07" = @{
        Desc = "Bí mật đằng sau sức mạnh của Collei dần được hé lộ qua các tài liệu y tế cũ của Đội Kỵ Sĩ."
        Summary = "Lisa nghiên cứu tình trạng của Collei và phát hiện cô bé là nạn nhân của cuộc thí nghiệm tàn khốc từ Fatui, bị tiêm tế bào thần linh (Archon Residue). Amber quyết tâm bảo vệ Collei và tìm cách chữa trị triệt để."
    }
    "08" = @{
        Desc = "Anh Hùng Bóng Đêm đụng độ Đội Trưởng Kỵ Sĩ trong đêm tối Mondstadt."
        Summary = "Diluc trong vai Anh Hùng Bóng Đêm đi điều tra các manh mối về Fatui. Anh chạm trán Kaeya. Hai người đối thoại về quá khứ của cha họ (Crepus) và cách bảo vệ Mondstadt theo con đường riêng của mỗi người."
    }
    "09" = @{
        Desc = "Lễ hội vui vẻ nhất Mondstadt bắt đầu, mang lại tiếng cười cho cô bé bất hạnh."
        Summary = "Lễ hội Ludi Harpastum diễn ra nhộn nhịp. Amber đưa Collei đi chơi các trò chơi dân gian, giúp cô bé lần đầu tiên trải nghiệm niềm vui và sự tự do thực sự của một đứa trẻ bình thường."
    }
    "10" = @{
        Desc = "Kẻ thù cũ tìm đến lễ hội Mondstadt nhằm bắt lại vật thí nghiệm."
        Summary = "Barnabas - thuộc hạ của Dottore - lẻn vào Mondstadt trong lễ hội để bắt giữ Collei. Hắn dùng ma thú đột kích phá hoại lễ hội nhằm tạo hỗn loạn."
    }
    "11" = @{
        Desc = "Cuộc chiến bảo vệ lễ hội chống lại sức mạnh của tàn dư ma thần."
        Summary = "Amber và Diluc phối hợp chiến đấu chống lại Barnabas. Barnabas giải phóng sức mạnh ma thần biến hình thành một sinh vật dạng rắn khổng lồ đầy uy lực."
    }
    "12" = @{
        Desc = "Quyết tâm bảo vệ người bạn thân nhất của Collei."
        Summary = "Nhìn thấy Amber bị Barnabas dồn vào nguy hiểm, Collei quyết định phá bỏ phong ấn sức mạnh Hắc Hỏa trong cơ thể mình để chiến đấu cứu Amber, chấp nhận rủi ro bị nuốt chửng bởi tế bào ma thần."
    }
    "13" = @{
        Desc = "Sự xuất hiện của học giả từ Sumeru đem đến hy vọng cứu mạng Collei."
        Summary = "Cyno - đại diện từ Giáo Viện Sumeru - xuất hiện kịp thời. Anh sử dụng thuật phong ấn sa mạc cổ xưa để trấn áp và khóa chặt sức mạnh ma thần trong người Collei, cứu cô bé khỏi cái chết cận kề."
    }
    "14" = @{
        Desc = "Giải quyết hậu quả vụ án và bảo vệ sự yên bình của thành Mondstadt."
        Summary = "Diluc chấp nhận nhận trách nhiệm về vụ án Hắc Hỏa và việc tiêu diệt thuộc hạ Fatui để Đội Kỵ Sĩ Tây Phong có thể bảo vệ Collei hợp pháp trước sự truy cứu của ngoại giao Snezhnaya."
    }
    "15" = @{
        Desc = "Lời chia tay đầy lưu luyến của cô bé Collei để đến vùng đất mới."
        Summary = "Cyno quyết định đưa Collei về Sumeru học tập và điều trị phong ấn định kỳ. Collei viết một bức thư cảm động gửi lại cho Amber, cảm ơn cô vì đã dạy cho mình biết thế nào là tình bạn và tự do."
    }
    "16" = @{
        Desc = "Mondstadt trở lại những ngày yên bình, hướng tới những cuộc hành trình mới."
        Summary = "Collei lên đường đến Sumeru cùng Cyno. Diluc và Kaeya đạt được sự đồng thuận ngầm trong việc bảo vệ Mondstadt. Amber tiếp tục công việc Kỵ Sĩ Trinh Thám dưới bầu trời tự do."
    }
}

Write-Host "Starting to fetch Manga chapters..." -ForegroundColor Green

foreach ($ch in $mangaChapters) {
    Write-Host "`n=== Processing Chapter $($ch.Num): $($ch.Title) ===" -ForegroundColor Green
    
    # 1. Fetch English page to find info
    $enPage = Get-WikiPage $ch.Title "en"
    if ($null -eq $enPage) { continue }
    
    # Use hardcoded Vietnamese title mapping
    $viTitle = $viTitleMap[$ch.Num]
    Write-Host "Vietnamese Title: $viTitle" -ForegroundColor Green
    
    # 2. Extract characters list from Infobox of English page
    $characters = @()
    if ($enPage.content -match '(?m)^[ \t]*\|[ \t]*characters[ \t]*=[ \t]*(.*?)\r?$') {
        $charsStr = $Matches[1].Trim()
        $characters = $charsStr.Split(";") | ForEach-Object { $_.Trim() } | Where-Object { $_ }
    }
    
    $mappedChars = @()
    foreach ($char in $characters) {
        $mc = $char
        if ($char -eq "Traveler") { $mc = "Nhà Lữ Hành" }
        elseif ($char -eq "Ursa the Drake") { $mc = "Ma Long Ursa" }
        elseif ($char -eq "Lord Lawrence") { $mc = "Ngài Lawrence" }
        $mappedChars += $mc
    }
    
    # 3. Retrieve description and summary from our high-quality Vietnamese dictionary
    $chData = $viMangaData[$ch.Num]
    $description = $chData.Desc
    $summary = $chData.Summary
    
    # Format list
    $charsListMD = ""
    foreach ($char in $mappedChars) {
        $charsListMD += "- $char`n"
    }
    
    $charsJson = $mappedChars | ConvertTo-Json -Compress
    
    $yamlFrontmatter = @"
---
id: "manga_chapter_$($ch.Num)"
type: "manga"
chapter_number: "$($ch.Num)"
title: "$viTitle"
english_title: "$($ch.Title)"
characters: $charsJson
release_version: "1.0"
tags: ["manga", "mondstadt", "lore"]
---

# Manga Chương $($ch.Num): $viTitle

## Mô tả
$description

## Nhân vật xuất hiện
$charsListMD
## Tóm tắt cốt truyện
$summary
"@
    
    $safeViTitle = Escape-FileName $viTitle
    $outputPath = "$outputMangaDir\$($ch.Num)_$safeViTitle.md"
    
    $yamlFrontmatter | Out-File -FilePath $outputPath -Encoding utf8
    Write-Host "Saved chapter $($ch.Num) to: $outputPath" -ForegroundColor Green
}

Write-Host "`nManga processing completed!" -ForegroundColor Green



