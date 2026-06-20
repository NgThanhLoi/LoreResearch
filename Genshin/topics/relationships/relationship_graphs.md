# ĐỒ THỊ MỐI QUAN HỆ NHÂN VẬT (RELATIONSHIP GRAPHS)
*Trực quan hóa các mối liên kết, điểm số tin tưởng, luồng cảm xúc, và dòng thời gian quan hệ giữa các nhân vật bằng sơ đồ Mermaid.*

---

## 1. Bản Đồ Mạng Lưới Quan Hệ Tổng Thể (Character Relationship Graph)
Sơ đồ mạng lưới biểu diễn các mối quan hệ đa dạng (Gia đình, Bạn bè, Đối thủ, Cấp trên/dưới) phân theo từng vùng.

```mermaid
graph TD
    subgraph Mondstadt ["Vùng Mondstadt"]
        Diluc["Diluc Ragnvindr"]
        Kaeya["Kaeya Alberich"]
        Albedo["Albedo"]
        Klee["Klee"]
        Jean["Jean Gunnhildr"]
        Lisa["Lisa Minci"]
    end

    subgraph Liyue ["Vùng Liyue"]
        Ningguang["Ningguang"]
        Beidou["Beidou"]
        Zhongli["Zhongli (Nham Thần)"]
        HuTao["Hu Tao"]
        Xingqiu["Xingqiu"]
        Chongyun["Chongyun"]
    end

    subgraph Inazuma ["Vùng Inazuma"]
        Ei["Raiden Shogun (Ei)"]
        Miko["Yae Miko"]
        Ayato["Kamisato Ayato"]
        Ayaka["Kamisato Ayaka"]
        Itto["Arataki Itto"]
        Sara["Kujou Sara"]
    end

    subgraph Sumeru ["Vùng Sumeru"]
        Alhaitham["Alhaitham"]
        Kaveh["Kaveh"]
        Cyno["Cyno"]
        Tighnari["Tighnari"]
        Nahida["Nahida (Thảo Thần)"]
        Wanderer["Kẻ Lang Thang"]
    end

    subgraph Fontaine ["Vùng Fontaine"]
        Neuvillette["Neuvillette (Thủy Long)"]
        Furina["Furina (Cựu Thần)"]
        Lyney["Lyney"]
        Lynette["Lynette"]
        Freminet["Freminet"]
        Wriothesley["Wriothesley"]
        Clorinde["Clorinde"]
    end

    subgraph Natlan ["Vùng Natlan"]
        Mavuika["Mavuika (Hỏa Thần)"]
        Capitano["Capitano (Harbinger #1)"]
        Kinich["Kinich"]
        Ajaw["K'uhul Ajaw"]
    end

    subgraph Nod_Krai ["Vùng Nod-Krai & Snezhnaya"]
        Dottore["Dottore (Harbinger #2)"]
        Columbina["Columbina (Harbinger #3)"]
        Aino["Aino"]
        Ineffa["Ineffa"]
    end

    subgraph Global ["Không Gian Khác"]
        Traveler["Traveler (Nhà Lữ Hành)"]
        Sibling["Sibling (Anh Em Sinh Đôi)"]
        Nicole["Nicole (Hexenzirkel)"]
    end

    %% Các mối liên kết chính
    Diluc -- "Anh em nuôi / Đối thủ" --> Kaeya
    Albedo -- "Người bảo hộ" --> Klee
    Jean -- "Đồng nghiệp thân thiết" --> Lisa
    Ningguang -- "Đồng minh chính trị / Đối thủ" --> Beidou
    Zhongli -- "Khách khanh" --> HuTao
    Xingqiu -- "Bạn thân chí cốt" --> Chongyun
    Ei -- "Bạn thân ngàn năm" --> Miko
    Ayato -- "Anh trai / Gia chủ" --> Ayaka
    Itto -- "Đối thủ tự phong" --> Sara
    Alhaitham -- "Bạn cùng phòng / Đối thủ" --> Kaveh
    Cyno -- "Bạn thân" --> Tighnari
    Nahida -- "Người bảo hộ / Chủ quản" --> Wanderer
    Neuvillette -- "Đồng nghiệp 500 năm" --> Furina
    Lyney -- "Anh cả" --> Lynette
    Lyney -- "Anh cả" --> Freminet
    Wriothesley -- "Đồng minh tác chiến" --> Clorinde
    Mavuika -- "Đối thủ đáng kính" --> Capitano
    Kinich -- "Khế ước cộng sinh" --> Ajaw
    Columbina -- "Đối địch sinh tử" --> Dottore
    Aino -- "Bạn thân / Người chế tạo" --> Ineffa
    Traveler -- "Anh em sinh đôi" --> Sibling
    Nicole -- "Chỉ dẫn định mệnh" --> Traveler

    %% Class Styles
    classDef mondstadt fill:#e1f5fe,stroke:#0288d1,stroke-width:1px;
    classDef liyue fill:#fff9c4,stroke:#fbc02d,stroke-width:1px;
    classDef inazuma fill:#e1bee7,stroke:#7b1fa2,stroke-width:1px;
    classDef sumeru fill:#e8f5e9,stroke:#2e7d32,stroke-width:1px;
    classDef fontaine fill:#e0f7fa,stroke:#0097a7,stroke-width:1px;
    classDef natlan fill:#ffe0b2,stroke:#f57c00,stroke-width:1px;
    classDef nodkrai fill:#ffebee,stroke:#c62828,stroke-width:1px;
    classDef global fill:#f3e5f5,stroke:#8e24aa,stroke-width:1px;

    class Diluc,Kaeya,Albedo,Klee,Jean,Lisa mondstadt;
    class Ningguang,Beidou,Zhongli,HuTao,Xingqiu,Chongyun liyue;
    class Ei,Miko,Ayato,Ayaka,Itto,Sara inazuma;
    class Alhaitham,Kaveh,Cyno,Tighnari,Nahida,Wanderer sumeru;
    class Neuvillette,Furina,Lyney,Lynette,Freminet,Wriothesley,Clorinde fontaine;
    class Mavuika,Capitano,Kinich,Ajaw natlan;
    class Dottore,Columbina,Aino,Ineffa nodkrai;
    class Traveler,Sibling,Nicole global;
```

---

## 2. Đồ Thị Tin Tưởng & Cảnh Giác Hai Chiều (Trust & Alertness Graph)
Trực quan hóa điểm số Tin tưởng và Cảnh giác hai chiều giữa các cặp tiêu biểu (thang điểm 0-10).

```mermaid
graph LR
    %% Diluc & Kaeya
    Diluc_N["Diluc"] -- "Tin: 8 / Cảnh: 6" --> Kaeya_N["Kaeya"]
    Kaeya_N -- "Tin: 8 / Cảnh: 6" --> Diluc_N

    %% Ningguang & Beidou
    Ning_N["Ningguang"] -- "Tin: 7 / Cảnh: 7" --> Beidou_N["Beidou"]
    Beidou_N -- "Tin: 7 / Cảnh: 7" --> Ning_N

    %% Alhaitham & Kaveh
    Al_N["Alhaitham"] -- "Tin: 9 / Cảnh: 4" --> Kaveh_N["Kaveh"]
    Kaveh_N -- "Tin: 9 / Cảnh: 4" --> Al_N

    %% Neuvillette & Furina
    Neu_N["Neuvillette"] -- "Tin: 9 / Cảnh: 2" --> Furi_N["Furina"]
    Furi_N -- "Tin: 9 / Cảnh: 2" --> Neu_N

    %% Columbina & Dottore
    Col_N["Columbina"] -- "Tin: 0 / Cảnh: 10" --> Dot_N["Dottore"]
    Dot_N -- "Tin: 0 / Cảnh: 10" --> Col_N

    style Diluc_N fill:#ffebee,stroke:#c62828
    style Kaeya_N fill:#e8eaf6,stroke:#3f51b5
    style Ning_N fill:#fffde7,stroke:#fbc02d
    style Beidou_N fill:#efebe9,stroke:#4e342e
    style Al_N fill:#e8f5e9,stroke:#2e7d32
    style Kaveh_N fill:#fff3e0,stroke:#f57c00
    style Neu_N fill:#e0f7fa,stroke:#0097a7
    style Furi_N fill:#f3e5f5,stroke:#8e24aa
    style Col_N fill:#ffebee,stroke:#b71c1c
    style Dot_N fill:#eceff1,stroke:#37474f
```

---

## 3. Đồ Thị Luồng Cảm Xúc Chủ Đạo (Emotional Graph)
Biểu thị các cảm xúc mạnh mẽ (Bảo vệ, Kính trọng, Căm ghét, Sợ hãi) một chiều giữa các nhân vật.

```mermaid
graph TD
    Albedo -- "Bảo vệ & Quan tâm" --> Klee
    Ei -- "Quan tâm & Lo lắng" --> Miko
    Miko -- "Bảo vệ & Trêu chọc" --> Ei
    Wanderer -- "Kính trọng & Trả ơn" --> Nahida
    Nahida -- "Bảo vệ & Hướng dẫn" --> Wanderer
    Furina -- "Sợ hãi tột độ (Ám ảnh)" --> Arlecchino["Arlecchino (The Knave)"]
    Arlecchino -- "Thừa nhận & Quan sát" --> Furina
    Columbina -- "Căm ghét & Phục hận" --> Dottore
    Dottore -- "Lợi dụng (Mẫu vật)" --> Columbina
    Traveler -- "Yêu thương & Tìm kiếm" --> Sibling
    Sibling -- "Yêu thương & Quan sát" --> Traveler

    style Klee fill:#ffebee,stroke:#ef5350
    style Miko fill:#f3e5f5,stroke:#ab47bc
    style Nahida fill:#e8f5e9,stroke:#66bb6a
    style Furina fill:#ede7f6,stroke:#5e35b1
    style Dottore fill:#cfd8dc,stroke:#37474f
    style Sibling fill:#fff9c4,stroke:#fbc02d
```

---

## 4. Đồ Thị Tuyến Tính Thời Gian (Relationship Timeline Graph)
Trực quan hóa sự phát triển mối quan hệ theo thời gian của cặp anh em Diluc ↔ Kaeya.

```mermaid
graph TD
    Step1["1. Tuổi thơ bình yên: Anh em nuôi gắn kết tại Dawn Winery"] --> Step2["2. Gia nhập Đội Kỵ Sĩ: Cùng cống hiến bảo vệ Mondstadt"]
    Step2 --> Step3["3. Đêm Giông Bão: Cha Crepus chết, Kaeya thú tội, Diluc rút kiếm giao chiến"]
    Step3 --> Step4["4. Chia cách: Diluc từ bỏ Thần Nhãn, du hành 3 năm tìm công lý"]
    Step4 --> Step5["5. Trùng phùng: Diluc trở về, giữ vẻ lạnh lùng bên ngoài nhưng hợp tác ngầm bảo vệ thành phố"]

    style Step1 fill:#e8f5e9,stroke:#2e7d32
    style Step2 fill:#e3f2fd,stroke:#2196f3
    style Step3 fill:#ffebee,stroke:#c62828
    style Step4 fill:#fff3e0,stroke:#f57c00
    style Step5 fill:#f3e5f5,stroke:#8e24aa
```

---

## 5. Đồ Thị Liên Kết Gián Tiếp (Hidden Connections Graph)
Biểu thị các mối quan hệ ẩn không thông qua gặp gỡ trực tiếp mà qua cùng tổ chức, mentor hoặc vận mệnh lịch sử.

```mermaid
graph TD
    %% Alice connection
    Alice["Alice (Ma Nữ quyền năng)"] -- "Mẹ ruột" --> Klee
    Alice -- "Nhận nuôi & Dạy dỗ" --> Albedo
    Alice -- "Đồng nghiệp Hexenzirkel" --> Nicole
    Nicole -- "Chỉ dẫn hành trình" --> Traveler
    
    %% Khaenri'ah connection
    Sibling -- "Dẫn dắt" --> AbyssOrder["Giáo Hội Vực Sâu"]
    AbyssOrder -- "Phục hận thảm họa" --> Celestia["Celestia (Đảo Thiên Không)"]
    Rotwang["Rotwang (Kỹ sư Khaenri'ah)"] -- "Xây tháp tại Nod-Krai" --> NodKrai["Lịch sử Nod-Krai"]
    Rotwang -. "Đồng hương Khaenri'ah" .-> Sibling
    Capitano -. "Bảo vệ di sản chống lại lời nguyền" .-> Sibling

    %% Irminsul connection
    Dottore -- "Muốn kiểm soát" --> Irminsul["Cây Thế Giới Irminsul"]
    Nahida -- "Avatar bảo vệ" --> Irminsul
    Wanderer -- "Tự xóa ký ức khỏi" --> Irminsul

    style Alice fill:#fce4ec,stroke:#d81b60
    style Irminsul fill:#e8f5e9,stroke:#2e7d32
    style Celestia fill:#fffde7,stroke:#fbc02d
    style Sibling fill:#fff9c4,stroke:#fbc02d
```
