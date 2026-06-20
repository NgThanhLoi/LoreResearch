---
id: "lore_knowledge_graph"
type: "chủ_đề"
name: "Đồ Thị Tri Thức Genshin"
english_name: "Knowledge Graph"
tags: ["graph", "relationships", "lore"]
---

# Đồ Thị Tri Thức Lõi Genshin Impact

Dưới đây là sơ đồ mạng lưới biểu diễn các mối quan hệ quyền lực, đối kháng và nguồn gốc của các thế lực tối cao trong lục địa Teyvat.

## 1. Sơ đồ Quyền Lực & Đối Kháng (Core Power Graph)

```mermaid
graph TD
    %% Định nghĩa các Nodes
    Phanes["Vị Đầu Tiên (Phanes)"]:::god
    Celestia["Đảo Thiên Không (Celestia)"]:::nation
    TheSeven["Thất Thần (The Seven)"]:::god
    Nibelung["Bảy Vị Long Vương (Nibelung)"]:::dragon
    Neuvillette["Thủy Long Vương (Neuvillette)"]:::dragon
    Khaenriah["Vương quốc Khaenri'ah"]:::nation
    Abyss["Vực Sâu (The Abyss)"]:::abyss
    AbyssOrder["Giáo Hội Vực Sâu"]:::org
    Fatui["Tổ chức Fatui"]:::org
    Tsaritsa["Băng Thần (Tsaritsa)"]:::god
    Hexenzirkel["Hội Phù Thủy"]:::org

    %% Mối quan hệ kiến tạo thế giới
    Phanes -- Đánh bại / Tước đoạt quyền năng --> Nibelung
    Phanes -- Thiết lập trật tự --> Celestia
    Celestia -- Chế tạo Gnosis & Kiểm soát --> TheSeven
    TheSeven -- Mượn sức mạnh nguyên thủy --> Neuvillette

    %% Mối quan hệ xung đột
    Celestia -- Thả Đinh Thần Phạt / Hủy diệt --> Khaenriah
    Khaenriah -- Bị nguyền rủa, trở thành --> AbyssOrder
    AbyssOrder -- Tôn sùng & Mượn sức mạnh --> Abyss
    AbyssOrder -- Lên kế hoạch trả thù --> Celestia

    %% Fatui & Các thế lực khác
    TheSeven -. Bao gồm .-> Tsaritsa
    Tsaritsa -- Thành lập & Dẫn dắt --> Fatui
    Fatui -- Thu thập Gnosis nhằm lật đổ --> Celestia
    Hexenzirkel -- Hoạt động bí mật / Trung lập --> Celestia
    Nibelung -- Mang sức mạnh cấm kỵ về Teyvat --> Abyss

    %% Class styles
    classDef god fill:#f9f0ce,stroke:#d4af37,stroke-width:2px,color:#000;
    classDef nation fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#000;
    classDef dragon fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px,color:#000;
    classDef org fill:#ffebee,stroke:#c62828,stroke-width:2px,color:#000;
    classDef abyss fill:#37474f,stroke:#000000,stroke-width:2px,color:#fff;
```

## 2. Giải thích các mối liên kết chính
- **Màu sắc sơ đồ:**
  - `Màu Vàng (God):` Các thực thể Thần linh và Cấp cao nhất.
  - `Màu Xanh Biển (Nation):` Các khu vực, quốc gia.
  - `Màu Xanh Lá (Dragon):` Các thực thể Long Vương nguyên thủy.
  - `Màu Đỏ (Organization):` Các tổ chức và hội nhóm.
  - `Màu Đen (Abyss):` Vực sâu và các khái niệm bóng tối.
  
- **Xung đột 3 phe:** Sơ đồ chỉ rõ Teyvat hiện tại đang bị giằng xé bởi cuộc chiến ngầm giữa **Celestia** (phe bảo thủ duy trì trật tự cũ), **Fatui** (muốn lật đổ Celestia bằng chiến tranh Gnosis), và **Giáo Hội Vực Sâu** (muốn tái lập thế giới bằng sức mạnh hắc ám hủy diệt).
- **Quyền năng nguyên thủy:** Sự tuần hoàn quyền lực giữa Long Vương -> Bị tước đoạt làm Gnosis -> Thất Thần cai trị -> Focalors tự sát -> Neuvillette lấy lại quyền năng.
