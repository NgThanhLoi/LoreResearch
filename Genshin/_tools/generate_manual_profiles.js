const fs = require('fs');
const path = require('path');

const utf8bom = Buffer.from([0xEF, 0xBB, 0xBF]);

const profiles = [
    // Nations
    ["nations", "Liyue", "nation_liyue", "nation", "Liyue", "liyue"],
    ["nations", "Inazuma", "nation_inazuma", "nation", "Inazuma", "inazuma"],
    ["nations", "Sumeru", "nation_sumeru", "nation", "Sumeru", "sumeru"],
    ["nations", "Fontaine", "nation_fontaine", "nation", "Fontaine", "fontaine"],
    ["nations", "Natlan", "nation_natlan", "nation", "Natlan", "natlan"],
    ["nations", "Nod_Krai", "nation_nod_krai", "nation", "Nod-Krai", "nod-krai"],
    
    // Organizations
    ["organizations/regional", "Liyue_Qixing", "org_liyue_qixing", "organization", "Thất Tinh Liyue", "liyue"],
    ["organizations/regional", "Millelith", "org_millelith", "organization", "Thiên Nham Quân", "liyue"],
    ["organizations/regional", "Crux_Fleet", "org_crux_fleet", "organization", "Đội Thuyền Nam Thập Tự", "liyue"],
    ["organizations/regional", "Tri_Commission", "org_tri_commission", "organization", "Hiệp Hội San Sát", "inazuma"],
    ["organizations/regional", "Sangonomiya_Resistance", "org_sangonomiya_resistance", "organization", "Quân Kháng Chiến Sangonomiya", "inazuma"],
    ["organizations/regional", "Akademiya", "org_akademiya", "organization", "Giáo Viện Sumeru", "sumeru"],
    ["organizations/regional", "Forest_Rangers", "org_forest_rangers", "organization", "Kiểm Lâm", "sumeru"],
    ["organizations/regional", "Maison_Gardiennage", "org_maison_gardiennage", "organization", "Tòa Án Fontaine", "fontaine"],
    ["organizations/regional", "Spina_di_Rosula", "org_spina_di_rosula", "organization", "Hội Hoa Hồng Gai", "fontaine"],
    ["organizations/regional", "Narzissenkreuz_Ordo", "org_narzissenkreuz_ordo", "organization", "Hội Narzissenkreuz", "fontaine"],
    ["organizations/regional", "Six_Tribes", "org_six_tribes", "organization", "Sáu Bộ Tộc Natlan", "natlan"],
    ["organizations/regional", "Nod_Krai_Factions", "org_nod_krai_factions", "organization", "Các Thế Lực Nod-Krai", "nod-krai"],

    // Gods
    ["gods_and_archons", "Morax", "god_morax", "god", "Morax", "liyue"],
    ["gods_and_archons", "Guizhong", "god_guizhong", "god", "Guizhong", "liyue"],
    ["gods_and_archons", "Havria", "god_havria", "god", "Havria", "liyue"],
    ["gods_and_archons", "Raiden_Ei", "god_raiden_ei", "god", "Raiden Ei", "inazuma"],
    ["gods_and_archons", "Raiden_Makoto", "god_raiden_makoto", "god", "Raiden Makoto", "inazuma"],
    ["gods_and_archons", "Orobashi", "god_orobashi", "god", "Orobashi", "inazuma"],
    ["gods_and_archons", "Nahida", "god_nahida", "god", "Nahida", "sumeru"],
    ["gods_and_archons", "Rukkhadevata", "god_rukkhadevata", "god", "Rukkhadevata", "sumeru"],
    ["gods_and_archons", "King_Deshret", "god_king_deshret", "god", "Vua Deshret", "sumeru"],
    ["gods_and_archons", "Goddess_of_Flowers", "god_goddess_of_flowers", "god", "Nữ Thần Hoa", "sumeru"],
    ["gods_and_archons", "Focalors", "god_focalors", "god", "Focalors", "fontaine"],
    ["gods_and_archons", "Egeria", "god_egeria", "god", "Egeria", "fontaine"],
    ["gods_and_archons", "Mavuika", "god_mavuika", "god", "Mavuika", "natlan"],

    // Dragons
    ["dragon_sovereigns", "Apep", "dragon_apep", "dragon_sovereign", "Apep", "sumeru"],
    ["dragon_sovereigns", "Neuvillette", "dragon_neuvillette", "dragon_sovereign", "Neuvillette", "fontaine"],
    ["dragon_sovereigns", "Azhdaha", "dragon_azhdaha", "dragon_sovereign", "Nhược Đà Long Vương", "liyue"],
    ["dragon_sovereigns", "Dvalin", "dragon_dvalin", "dragon_sovereign", "Dvalin", "mondstadt"],

    // Historical Figures
    ["historical_figures", "Marchosius", "historical_marchosius", "historical_figure", "Marchosius", "liyue"],
    ["historical_figures", "Sasayuri", "historical_sasayuri", "historical_figure", "Sasayuri", "inazuma"],
    ["historical_figures", "Chiyo", "historical_chiyo", "historical_figure", "Chiyo", "inazuma"],
    ["historical_figures", "Kitsune_Saiguu", "historical_kitsune_saiguu", "historical_figure", "Kitsune Saiguu", "inazuma"],
    ["historical_figures", "Three_Magi", "historical_three_magi", "historical_figure", "Ba Nhà Thông Thái", "sumeru"],
    ["historical_figures", "Remus", "historical_remus", "historical_figure", "Vua Remus", "fontaine"],
    ["historical_figures", "Rene_de_Petrichor", "historical_rene", "historical_figure", "Rene de Petrichor", "fontaine"]
];

for (const [dir, fname, id_, type_, name, region] of profiles) {
    const dirPath = path.join("d:/LoreResseach/Genshin/entities", dir);
    fs.mkdirSync(dirPath, { recursive: true });
    
    const filePath = path.join(dirPath, `${fname}.md`);
    if (!fs.existsSync(filePath)) {
        const content = `---
id: "${id_}"
type: "${type_}"
name: "${name}"
region: "${region}"
tags: ["${type_}", "${region}", "manual_profile"]
---

# ${name}

## Thông tin chung
- **Tên:** ${name}
- **Khu vực:** ${region}

## Lịch sử & Tiểu sử
<!-- Viết lịch sử và nguồn gốc tại đây -->

## Vai trò trong cốt truyện
<!-- Viết vai trò trong cốt truyện tại đây -->

## Liên kết và Tham chiếu
<!-- Tham chiếu đến các trang wiki, sách in-game, hoặc nhân vật liên quan -->
`;
        const buffer = Buffer.concat([utf8bom, Buffer.from(content, 'utf8')]);
        fs.writeFileSync(filePath, buffer);
        console.log(`Created profile: ${filePath}`);
    } else {
        console.log(`Profile already exists: ${filePath}`);
    }
}
console.log("Done generating manual profiles.");
