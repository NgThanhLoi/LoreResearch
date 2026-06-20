$utf8bom = New-Object System.Text.UTF8Encoding($true)

$entitiesBase = "d:\LoreResseach\Genshin\entities"
$nationsDir = "$entitiesBase\nations"
$orgsDir = "$entitiesBase\organizations\regional"
$godsDir = "$entitiesBase\gods_and_archons"
$dragonsDir = "$entitiesBase\dragon_sovereigns"
$histDir = "$entitiesBase\historical_figures"

New-Item -ItemType Directory -Force -Path $nationsDir | Out-Null
New-Item -ItemType Directory -Force -Path $orgsDir | Out-Null
New-Item -ItemType Directory -Force -Path $godsDir | Out-Null
New-Item -ItemType Directory -Force -Path $dragonsDir | Out-Null
New-Item -ItemType Directory -Force -Path $histDir | Out-Null

$profiles = @()

function Add-Profile($dir, $fileName, $id, $type, $name, $region) {
    $script:profiles += [PSCustomObject]@{
        Path = "$dir\$fileName.md"
        Id = $id
        Type = $type
        Name = $name
        Region = $region
    }
}

# Nations
Add-Profile $nationsDir "Liyue" "nation_liyue" "nation" "Liyue" "liyue"
Add-Profile $nationsDir "Inazuma" "nation_inazuma" "nation" "Inazuma" "inazuma"
Add-Profile $nationsDir "Sumeru" "nation_sumeru" "nation" "Sumeru" "sumeru"
Add-Profile $nationsDir "Fontaine" "nation_fontaine" "nation" "Fontaine" "fontaine"
Add-Profile $nationsDir "Natlan" "nation_natlan" "nation" "Natlan" "natlan"
Add-Profile $nationsDir "Nod_Krai" "nation_nod_krai" "nation" "Nod-Krai" "nod-krai"

# Organizations
Add-Profile $orgsDir "Liyue_Qixing" "org_liyue_qixing" "organization" "Thất Tinh Liyue" "liyue"
Add-Profile $orgsDir "Millelith" "org_millelith" "organization" "Thiên Nham Quân" "liyue"
Add-Profile $orgsDir "Crux_Fleet" "org_crux_fleet" "organization" "Đội Thuyền Nam Thập Tự" "liyue"
Add-Profile $orgsDir "Tri_Commission" "org_tri_commission" "organization" "Hiệp Hội San Sát" "inazuma"
Add-Profile $orgsDir "Sangonomiya_Resistance" "org_sangonomiya_resistance" "organization" "Quân Kháng Chiến Sangonomiya" "inazuma"
Add-Profile $orgsDir "Akademiya" "org_akademiya" "organization" "Giáo Viện Sumeru" "sumeru"
Add-Profile $orgsDir "Forest_Rangers" "org_forest_rangers" "organization" "Kiểm Lâm" "sumeru"
Add-Profile $orgsDir "Maison_Gardiennage" "org_maison_gardiennage" "organization" "Tòa Án Fontaine" "fontaine"
Add-Profile $orgsDir "Spina_di_Rosula" "org_spina_di_rosula" "organization" "Hội Hoa Hồng Gai" "fontaine"
Add-Profile $orgsDir "Narzissenkreuz_Ordo" "org_narzissenkreuz_ordo" "organization" "Hội Narzissenkreuz" "fontaine"
Add-Profile $orgsDir "Six_Tribes" "org_six_tribes" "organization" "Sáu Bộ Tộc Natlan" "natlan"
Add-Profile $orgsDir "Nod_Krai_Factions" "org_nod_krai_factions" "organization" "Các Thế Lực Nod-Krai" "nod-krai"

# Gods
Add-Profile $godsDir "Morax" "god_morax" "god" "Morax" "liyue"
Add-Profile $godsDir "Guizhong" "god_guizhong" "god" "Guizhong" "liyue"
Add-Profile $godsDir "Havria" "god_havria" "god" "Havria" "liyue"
Add-Profile $godsDir "Raiden_Ei" "god_raiden_ei" "god" "Raiden Ei" "inazuma"
Add-Profile $godsDir "Raiden_Makoto" "god_raiden_makoto" "god" "Raiden Makoto" "inazuma"
Add-Profile $godsDir "Orobashi" "god_orobashi" "god" "Orobashi" "inazuma"
Add-Profile $godsDir "Nahida" "god_nahida" "god" "Nahida" "sumeru"
Add-Profile $godsDir "Rukkhadevata" "god_rukkhadevata" "god" "Rukkhadevata" "sumeru"
Add-Profile $godsDir "King_Deshret" "god_king_deshret" "god" "Vua Deshret" "sumeru"
Add-Profile $godsDir "Goddess_of_Flowers" "god_goddess_of_flowers" "god" "Nữ Thần Hoa" "sumeru"
Add-Profile $godsDir "Focalors" "god_focalors" "god" "Focalors" "fontaine"
Add-Profile $godsDir "Egeria" "god_egeria" "god" "Egeria" "fontaine"
Add-Profile $godsDir "Mavuika" "god_mavuika" "god" "Mavuika" "natlan"

# Dragons
Add-Profile $dragonsDir "Apep" "dragon_apep" "dragon_sovereign" "Apep" "sumeru"
Add-Profile $dragonsDir "Neuvillette" "dragon_neuvillette" "dragon_sovereign" "Neuvillette" "fontaine"
Add-Profile $dragonsDir "Azhdaha" "dragon_azhdaha" "dragon_sovereign" "Nhược Đà Long Vương" "liyue"
Add-Profile $dragonsDir "Dvalin" "dragon_dvalin" "dragon_sovereign" "Dvalin" "mondstadt"

# Historical Figures
Add-Profile $histDir "Marchosius" "historical_marchosius" "historical_figure" "Marchosius" "liyue"
Add-Profile $histDir "Sasayuri" "historical_sasayuri" "historical_figure" "Sasayuri" "inazuma"
Add-Profile $histDir "Chiyo" "historical_chiyo" "historical_figure" "Chiyo" "inazuma"
Add-Profile $histDir "Kitsune_Saiguu" "historical_kitsune_saiguu" "historical_figure" "Kitsune Saiguu" "inazuma"
Add-Profile $histDir "Three_Magi" "historical_three_magi" "historical_figure" "Ba Nhà Thông Thái" "sumeru"
Add-Profile $histDir "Remus" "historical_remus" "historical_figure" "Vua Remus" "fontaine"
Add-Profile $histDir "Rene_de_Petrichor" "historical_rene" "historical_figure" "Rene de Petrichor" "fontaine"

foreach ($p in $profiles) {
    if (-not (Test-Path $p.Path)) {
        $content = @"
---
id: "$($p.Id)"
type: "$($p.Type)"
name: "$($p.Name)"
region: "$($p.Region)"
tags: ["$($p.Type)", "$($p.Region)", "manual_profile"]
---

# $($p.Name)

## Thông tin chung
- **Tên:** $($p.Name)
- **Khu vực:** $($p.Region)

## Lịch sử & Tiểu sử
<!-- Viết lịch sử và nguồn gốc tại đây -->

## Vai trò trong cốt truyện
<!-- Viết vai trò trong cốt truyện tại đây -->

## Liên kết và Tham chiếu
<!-- Tham chiếu đến các trang wiki, sách in-game, hoặc nhân vật liên quan -->
"@
        [System.IO.File]::WriteAllText($p.Path, $content, $utf8bom)
        Write-Host "Created profile: $($p.Path)" -ForegroundColor Green
    } else {
        Write-Host "Profile already exists: $($p.Path)" -ForegroundColor DarkGray
    }
}
Write-Host "Done generating manual profiles." -ForegroundColor Cyan
