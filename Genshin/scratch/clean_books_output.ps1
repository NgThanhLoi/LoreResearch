# PowerShell script to clean and format all Nod-Krai books and quests
$utf8bom = New-Object System.Text.UTF8Encoding($true)

function Clean-WikiText($text) {
    if (-not $text) { return "" }
    # Remove comments
    $text = $text -replace '(?s)<!--.*?-->', ''
    # Replace HTML line breaks with newlines
    $text = $text -replace '<br\s*/?>', "`n"
    # Replace [[Link|Display]] with Display
    $text = $text -replace '\[\[[^\]|]+\|([^\]]+)\]\]', '$1'
    # Replace [[Link]] with Link
    $text = $text -replace '\[\[([^\]]+)\]\]', '$1'
    # Replace Description template with blockquote
    $text = $text -replace '(?s)\{\{Description\|(.*?)\}\}', "> $1"
    # Remove other templates
    $text = $text -replace '\{\{[^|]+\|([^}]+)\}\}', '$1'
    $text = $text -replace '\{\{[^}]+\}\}', ''
    # Replace bullet points
    $text = $text -replace '\*', '-'
    # Clean multiple newlines
    $text = $text -replace '(?m)^\s+$', ''
    $text = $text -replace '\n{3,}', "`n`n"
    return $text.Trim()
}

$filesToProcess = @(
    @{
        File = "A Brief History of the Pale Starborn.json"
        ViName = "Lược Sử Fae Sao Nhạt"
        Type = "Book Collection · Lược sử Snezhnaya & Nod-Krai"
        Summary = "Lược sử ghi chép về tộc Fae Snezhnaya, thời kỳ của Belyi Tsar (White Tsar) Monomakh và sự chuyển giao quyền lực sang Tsaritsa Anastasya. Sách có giá trị lịch sử to lớn về thời kỳ Cataclysm và sự thành lập của Fatui."
        Lore = @(
            @{ Name = "Belyi Tsar (Monomakh)"; Type = "Nhân vật lịch sử"; Desc = "Vị Sa Hoàng Trắng của Snezhnaya thời cổ đại, được phong thần tộc Fae, người đã thống nhất các bộ tộc Fae."; Label = "✅ Confirmed Canon" }
            @{ Name = "Tsaritsa Anastasya"; Type = "Nhân vật lịch sử / Thần"; Desc = "Tsaritsa hiện tại của Snezhnaya, lên ngôi sau cái chết của Belyi Tsar, bãi bỏ chế độ lãnh chúa Fae và thành lập Fatui."; Label = "✅ Confirmed Canon" }
            @{ Name = "Port Belovodye"; Type = "Địa danh"; Desc = "Cảng thương mại tự trị nổi dậy sau cái chết của Belyi Tsar."; Label = "✅ Confirmed Canon" }
            @{ Name = "Glupov"; Type = "Địa danh"; Desc = "Thành lũy mới được xây dựng bởi Fatui, nghĩa là 'Thành phố của những kẻ khờ' (City of Fools)."; Label = "✅ Confirmed Canon" }
        )
    },
    @{
        File = "Night Murmurs From the Far Border.json"
        ViName = "Chuyện Đêm Vùng Biên - Varcolac"
        Type = "Book Collection · Truyền thuyết Nod-Krai"
        Summary = "Truyện kể về cuộc săn lùng quái vật Varcolac (người sói) của thợ săn Czcibor từ doanh trại Frostmoon Scions. Tiết lộ đặc tính sinh học của Varcolac (có 2 trái tim và 2 dạng hình dạng Fae/người) và tin đồn Duchess Evlampiya Orlova là một Varcolac."
        Lore = @(
            @{ Name = "Czcibor"; Type = "Nhân vật"; Desc = "Thợ săn từ bộ tộc Frostmoon Scions, người đã tiêu diệt một Varcolac bằng cách đâm vào tim nó."; Label = "✅ Confirmed Canon" }
            @{ Name = "Varcolac"; Type = "Thực thể / Tộc"; Desc = "Sinh vật giống người sói có 2 trái tim, có thể chuyển hóa giữa dạng người và Fae. Rất nhạy cảm với tỏi và hạt tiêu."; Label = "✅ Confirmed Canon" }
            @{ Name = "Evlampiya Orlova"; Type = "Nhân vật"; Desc = "Nữ công tước Snezhnaya, bị đồn là một Varcolac còn sống sót."; Label = "🟡 Strongly Implied" }
            @{ Name = "Frostlamp Flower"; Type = "Vật phẩm"; Desc = "Hoa phát sáng dùng để trị thương và hấp thụ ánh trăng trong rừng tuyết."; Label = "✅ Confirmed Canon" }
        )
    },
    @{
        File = "Tales Carried by the Northwind.json"
        ViName = "Tuyển Tập Gió Bắc"
        Type = "Book Collection · Thơ ca lịch sử"
        Summary = "Tuyển tập thơ ca ghi lại chiến tích của các Starshyna (Thủ lĩnh Lightkeepers) qua các thế hệ chống lại thảm họa Cataclysm."
        Lore = @(
            @{ Name = "Silvestr Petrovich Solovei"; Type = "Nhân vật lịch sử"; Desc = "Thủ lĩnh đầu tiên của Lightkeepers (Nightingale), người đã thắp sáng ngọn hải đăng chống lại lũ quái vật Cataclysm."; Label = "✅ Confirmed Canon" }
            @{ Name = "Sergei Semyonovich Mayakov"; Type = "Nhân vật lịch sử"; Desc = "Thủ lĩnh tiền nhiệm của Lightkeepers, người đã ở lại giữ ngọn hải đăng sụp đổ và hi sinh."; Label = "✅ Confirmed Canon" }
            @{ Name = "Starshyna"; Type = "Chức danh"; Desc = "Thủ lĩnh tối cao của tổ chức Lightkeepers."; Label = "✅ Confirmed Canon" }
        )
    },
    @{
        File = "Beyond Silver and Fine Gold.json"
        ViName = "Hơn Cả Bạc Trắng Và Vàng Ròng"
        Type = "World Quest Series · Hội Ma Nữ"
        Summary = "Chuỗi nhiệm vụ thế giới liên quan đến Nicole (thành viên Hội Ma Nữ Hexenzirkel) và cuộc khảo sát các phòng ốc ẩn trong Witch's Lodge tại Nod-Krai."
        Lore = @(
            @{ Name = "Nicole"; Type = "Nhân vật / Hexenzirkel"; Desc = "Thành viên Hội Ma Nữ, người dẫn dắt Traveler khảo sát Witch's Lodge."; Label = "✅ Confirmed Canon" }
            @{ Name = "Witch's Lodge"; Type = "Địa danh"; Desc = "Tòa nhà/Nơi trú ẩn của Hội Ma Nữ đặt tại Nod-Krai."; Label = "✅ Confirmed Canon" }
        )
    },
    @{
        File = "Conch Echoes.json"
        ViName = "Tiếng Vọng Của Ốc Biển"
        Type = "Book Collection · Truyền thuyết khởi nguồn"
        Summary = "Câu chuyện ngụ ngôn cổ xưa về những đứa trẻ trốn chạy ách nô dịch của người lớn tại vùng đất hoang dã (Outlands). Đây chính là nguồn gốc lịch sử thành lập Nasha Town và Voynich Guild."
        Lore = @(
            @{ Name = "Shorty (Cậu Bé Lùn)"; Type = "Nhân vật lịch sử"; Desc = "Cậu bé thông minh giữ chiếc ốc biển đại diện cho quyền lực của tập thể, người sáng lập ra Nasha Town."; Label = "🟡 Strongly Implied" }
            @{ Name = "Nasha Town"; Type = "Địa danh"; Desc = "Thị trấn cảng được xây dựng trên triết lý tự trị của những đứa trẻ lưu vong."; Label = "✅ Confirmed Canon" }
            @{ Name = "Sampo Mill"; Type = "Cổ vật"; Desc = "Được đề cập như một biểu tượng của sự dư dả kinh tế phát triển từ thị trấn."; Label = "✅ Confirmed Canon" }
        )
    },
    @{
        File = "Hymns of the Far North.json"
        ViName = "Tập Thơ Nơi Cực Bắc"
        Type = "Book Collection · Thánh ca tôn giáo"
        Summary = "Tập hợp các bài thánh ca tôn kính cổ xưa của tộc Frostmoon Scions thờ phụng Nữ Thần Trăng Lạnh Huurrekuutar và Moon Maiden Kuutar (Columbina). Chứa các tiết lộ lớn về lịch sử Ba Mặt Trăng và việc tạo ra Gnosis."
        Lore = @(
            @{ Name = "Huurrekuutar"; Type = "Thần thoại"; Desc = "Nữ thần Trăng Lạnh nguyên bản, vị thần duy nhất dẫn dắt hậu duệ Hyperborea đến Hiisi Island."; Label = "✅ Confirmed Canon" }
            @{ Name = "Kuutar / Columbina"; Type = "Nhân vật / Thần"; Desc = "Moon Maiden, sứ giả trăng lạnh tái sinh thành Harbinger số 3 của Fatui."; Label = "✅ Confirmed Canon" }
            @{ Name = "Saarelainen"; Type = "Nhân vật thần thoại"; Desc = "Người hùng cưỡi ngựa qua Pohjola, bị Celestia (Lord of the Seven Calamities) phân rã thành 7 mảnh (nguồn gốc Gnosis)."; Label = "✅ Confirmed Canon" }
            @{ Name = "Hyperborea"; Type = "Địa danh cổ đại"; Desc = "Vương quốc Vàng cổ xưa bị Celestia hủy diệt."; Label = "✅ Confirmed Canon" }
        )
    },
    @{
        File = "Incandescent Ode of Resurrection.json"
        ViName = "Bài Thơ Về Sự Tái Sinh Rực Rỡ"
        Type = "Archon Quest Chapter V Act V · Cốt truyện chính"
        Summary = "Act cốt truyện chính kết thúc hành trình Natlan. Mavuika tiết lộ cho Traveler về địa điểm tiếp theo — Nod-Krai, nơi Dottore đang thu thập Ancient Moon's Remnants và nghiên cứu nguồn năng lượng Kuuvahki cổ đại."
        Lore = @(
            @{ Name = "Mavuika"; Type = "Nhân vật / Archon"; Desc = "Hỏa Thần Natlan, chỉ dẫn Traveler đến Nod-Krai."; Label = "✅ Confirmed Canon" }
            @{ Name = "Dottore (The Doctor)"; Type = "Nhân vật / Fatui"; Desc = "Harbinger số 2 đang nghiên cứu tàn tích mặt trăng cổ đại ở Nod-Krai."; Label = "✅ Confirmed Canon" }
            @{ Name = "Kuuvahki"; Type = "Khái niệm / Năng lượng"; Desc = "Sức mạnh mặt trăng tiền-nguyên tố tối cổ tồn tại ở Nod-Krai."; Label = "✅ Confirmed Canon" }
        )
    }
)

foreach ($item in $filesToProcess) {
    $enPath = "d:\LoreResseach\Genshin\_data\wiki_cache\en\$($item.File)"
    if (Test-Path $enPath) {
        $json = Get-Content $enPath -Raw | ConvertFrom-Json
        $cleanedContent = Clean-WikiText $json.content
        
        $md = @"
# $($json.title)
*($($item.ViName))*

**Loại:** $($item.Type)  
**Xuất xứ lore:** Nod-Krai  
**Nguồn dữ liệu:** wiki_cache (English)  

---

## Tóm Tắt Nội Dung (Bằng Tiếng Việt)
$($item.Summary)

---

## Nội Dung Đã Làm Sạch (English Text)
$cleanedContent

---

## Trích Xuất Lore Chi Tiết

| Thực thể / Khái niệm | Loại | Mô tả chi tiết | Độ tin cậy |
|---|---|---|---|
"@
        
        foreach ($l in $item.Lore) {
            $md += "`n| **$($l.Name)** | $($l.Type) | $($l.Desc) | $($l.Label) |"
        }
        
        $outPath = "d:\LoreResseach\Genshin\sources\book_texts\nod-krai\$($json.title).md"
        [System.IO.File]::WriteAllText($outPath, $md, $utf8bom)
        Write-Output "Successfully wrote: $outPath"
    } else {
        Write-Warning "File not found: $enPath"
    }
}
