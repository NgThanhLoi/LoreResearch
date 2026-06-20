# Power System Governance

Tài liệu này đóng vai trò khóa van an toàn cho hệ thống sức mạnh trong mọi dự án fanfic, ngăn chặn tình trạng lạm dụng sức mạnh (power creep), mất cân bằng scaling, và bảo vệ tính logic nguyên bản của game.

## Power System Summary Table

| Power | Summary Label | Source confidence | Narrator-safe? | Needs claim audit? | Notes |
| :--- | :--- | :---: | :---: | :---: | :--- |
| **Vision** | CANON | Medium | Conditional | Yes | Nguyên tố tiêu tốn stamina, giới hạn phạm vi. |
| **Elemental Power** | CANON | Medium | Conditional | No | Bám sát tương tác nguyên tố làm chiến thuật. |
| **Delusion** | CANON | High | Yes | Yes | **Bắt buộc phải backfire** hút sinh lực và gây lão hóa. |
| **Gnosis** | CANON | Medium | Conditional | Yes | Thiết bị cộng hưởng, không phải nguồn duy nhất của thần. |
| **Archon Power** | CANON | Medium | Conditional | No | Thần vẫn có giới hạn thể chất, bị thương và mài mòn. |
| **Dragon Sovereign Authority** | CANON | Medium | Conditional | Yes | Quyền năng độc lập và đối lập hoàn toàn với Celestia. |
| **Abyss Power** | CANON | High | Yes | No | Cực kỳ độc hại, ăn mòn thể xác, cấm thanh tẩy dễ dàng. |
| **Khemia** | CANON | High | Yes | No | Đòi hỏi nguyên liệu hiếm và tri thức sâu, cấm tạo ma vật bừa bãi. |
| **Irminsul** | CANON | Medium | Conditional | Yes | **Không thể thay đổi sự kiện vật lý**, chỉ sửa đổi ký ức/văn bản. |
| **Forbidden Knowledge** | CANON | Medium | Conditional | No | Gây điên loạn, eleazar. Cấm dùng làm combat ma thuật thường. |
| **Kuuvahki** | THEORY / UNVERIFIED | Low | No | Yes | Chỉ giới hạn giải đố cơ khí ở Nod-Krai, cấm đem ra ngoài. |
| **Celestia / Heavenly Principles** | CANON | Medium | Conditional | No | Răn đe thụ động, im lặng. Tấn công là tự sát lập tức. |
| **Descender Logic** | CANON | High | Yes | Yes | Miễn nhiễm xóa ký ức Irminsul. Chỉ áp dụng cho Descender. |

---

## Claim-Level Power Notes

### Vision

- [PWR-VISION-001] Vision được ban cho phàm nhân có khát vọng cháy bỏng thu hút sự chú ý của Celestia.
  - label: CANON
  - source: `sources/voice_lines/characters/` (character stories and vision lore)
  - source_status: needs_file_level_source
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Sử dụng nguyên tố tiêu tốn thể lực, cần thời gian hồi phục và giới hạn phạm vi.
  - notes: Nguyên lý cơ bản được xác nhận trong hồ sơ tiểu sử chính thức của toàn bộ dàn nhân vật game. Dữ liệu nguồn đang ở dạng thư mục, cần đối chiếu chi tiết từng file nhân vật.
- [PWR-VISION-002] Vision đóng vai trò là thiết bị giám sát phàm nhân của Celestia.
  - label: THEORY
  - source: source_missing
  - source_status: source_missing
  - confidence: low
  - narrator_safe: no
  - fanfic_rule: Cấm narrator khẳng định đây là sự thật; chỉ để nhân vật (như Fatui hay các học giả nghi ngờ) đồn đoán hoặc hoài nghi.
  - notes: Giả thuyết cộng đồng rất phổ biến dựa trên tính kiểm soát của Celestia nhưng chưa được game xác nhận trực tiếp.

### Elemental Power

- [PWR-ELEMENT-001] Năng lượng nguyên tố chảy tự nhiên và tương tác theo các phản ứng đặc trưng (Bốc hơi, Đóng băng, Khuếch tán...).
  - label: CANON
  - source: `sources/weapon_stories/` (các vũ khí nguyên tố)
  - source_status: needs_file_level_source
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Bắt buộc các trận chiến phải sử dụng phản ứng nguyên tố làm chiến thuật chiến đấu thực tế.
  - notes: Cơ chế vật lý cơ bản của thế giới Teyvat. Chỉ mục nguồn hiện tại là cấp thư mục, cần gán mã file-level tương ứng.

### Delusion

- [PWR-DELUSION-001] Delusion do Fatui chế tạo từ hài cốt Ma Thần, ban phát sức mạnh nguyên tố nhưng hút sinh lực và gây phản phệ nặng.
  - label: CANON
  - source: `sources/voice_lines/characters/Diluc.md` (gián tiếp qua Delusion của Crepus), cốt truyện Inazuma AQ
  - source_status: primary_source_found
  - confidence: high
  - narrator_safe: yes
  - fanfic_rule: Bắt buộc phải mô tả triệu chứng phản phệ (lão hóa, suy kiệt thể xác, đau đớn dữ dội) khi nhân vật lạm dụng Delusion.
  - notes: Xác thực qua cái chết của Crepus và sự suy kiệt nhanh chóng của Teppei.

### Gnosis

- [PWR-GNOSIS-001] Gnosis là tàn dư (remains) của Kẻ Giáng Lâm Thứ Ba, kết nối Archon với Celestia và dùng để cộng hưởng nguyên tố cực mạnh.
  - label: CANON
  - source: `entities/dragon_sovereigns/Overview.md#L26` (Dẫn lời thoại Skirk trong Fontaine AQ)
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Gnosis là thiết bị cộng hưởng nguyên tố, không phải nguồn sức mạnh duy nhất của Archon. Không có nó Archon vẫn rất mạnh.
  - notes: Thiếu tệp thoại thô của Skirk trong repo, dẫn nguồn gián tiếp qua Overview.
- [PWR-GNOSIS-002] Gnosis hoạt động như một loại xiềng xích trói buộc quyền năng hoặc giam giữ tự do của các vị thần.
  - label: THEORY
  - source: `entities/dragon_sovereigns/Overview.md#L26`
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: low
  - narrator_safe: no
  - fanfic_rule: Chỉ dùng dưới dạng hoài nghi hoặc động cơ chống Celestia của các Archon hoặc Fatui, không viết như sự thật vật lý.
  - notes: Suy đoán từ lời thoại của Skirk gọi Gnosis là "tàn dư mang lại bất hạnh".

### Archon Power

- [PWR-ARCHON-001] Quyền năng thần thánh của Archon tích lũy từ đức tin và bản thể Ma Thần, có thể thay đổi địa hình quy mô lớn.
  - label: CANON
  - source: `entities/Timeline.md#L39`
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Archon vẫn bị kiệt sức, bị thương và chịu sự mài mòn (Erosion) tâm trí theo thời gian.
  - notes: Được chứng thực qua dấu vết chẻ đảo của Lôi Thần hoặc dựng núi đá của Nham Thần.

### Dragon Sovereign Authority

- [PWR-DRAGON-001] Quyền Hạn Nguyên Thủy của các Long Vương bị Celestia chiếm đoạt để tạo ra Gnosis; Long Vương luân hồi chỉ lấy lại đầy đủ quyền năng khi Gnosis tương ứng bị phá hủy.
  - label: CANON
  - source: `entities/dragon_sovereigns/Overview.md#L45` (Cốt truyện Focalors tự hủy ngai để trả quyền năng cho Neuvillette)
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Quyền năng Long Vương độc lập và đối lập trật tự Celestia. Bị tước đoạt một phần trừ khi Gnosis bị hủy.
  - notes: Trích lục gián tiếp qua Overview thực thể từ Fontaine AQ Ch.IV Act V.

### Abyss Power

- [PWR-ABYSS-001] Sức mạnh Vực Sâu ăn mòn thể xác và tinh thần cư dân Teyvat, có thể làm biến dạng Leylines và đi ngược quy luật nguyên tố.
  - label: CANON
  - source: `sources/artifact_descriptions/Kỵ Sĩ Đạo Nhuốm Máu.md`
  - source_status: primary_source_found
  - confidence: high
  - narrator_safe: yes
  - fanfic_rule: Cực kỳ độc hại, bắt buộc phản phệ và không thể thanh tẩy dễ dàng bằng phép thường.
  - notes: Nguyên lý cơ bản của sự ăn mòn Vực Sâu.

### Khemia

- [PWR-KHEMIA-001] Khemia là thuật giả kim tạo sự sống của Khaenri'ah, đòi hỏi nguyên liệu cực kỳ hiếm và tri thức vũ trụ học sâu rộng.
  - label: CANON
  - source: `sources/voice_lines/characters/Albedo.md`
  - source_status: primary_source_found
  - confidence: high
  - narrator_safe: yes
  - fanfic_rule: Cấm viết OC tự tạo ma vật khổng lồ dễ dàng không tốn tài nguyên hoặc không gặp phản phệ.
  - notes: Từng tạo ra ma vật thảm họa tàn phá Leylines như Durin.

### Irminsul

- [PWR-IRMINSUL-001] Irminsul lưu trữ ký ức Teyvat; việc sửa đổi Irminsul chỉ thay đổi nhận thức/ký ức/ghi chép của cư dân Teyvat chứ không thay đổi sự kiện vật lý thực tế đã xảy ra.
  - label: CANON
  - source: `entities/Timeline.md#L65` (Nahida cứu rỗi cây thế giới Irminsul)
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Các thay đổi lịch sử vật lý thực tế vẫn để lại dấu vết/hậu quả, chỉ có ký ức bị viết lại.
  - notes: Chứng thực qua việc Kẻ Lang Thang xóa bỏ sự tồn tại của mình nhưng các nạn nhân gia tộc rèn kiếm vẫn chết.

### Forbidden Knowledge

- [PWR-FORBIDDEN-001] Tri thức cấm từ ngoài Teyvat gây ô nhiễm Irminsul, bệnh dịch Eleazar và làm điên loạn tâm trí.
  - label: CANON
  - source: `entities/Timeline.md#L65`
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Gây dịch bệnh và điên loạn, cấm dùng làm phép thuật combat thông thường.
  - notes: Rukkhadevata đã phải xóa bản thân khỏi Irminsul để thanh tẩy hoàn toàn tri thức này.

### Kuuvahki

- [PWR-KUUVAHKI-001] Năng lượng mặt trăng rơi xuống đất Nod-Krai hoạt động dưới dạng từ tính đỏ/xanh dùng để giải đố cơ khí.
  - label: THEORY / UNVERIFIED
  - source: `topics/nod-krai/mythology.md#L16`
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: low
  - narrator_safe: no
  - fanfic_rule: Chỉ giới hạn ở vùng tự trị Nod-Krai để giải đố, cấm mang ra ngoài hoặc dùng làm combat ma thuật.
  - notes: Giả thuyết unverified dựa trên tóm tắt của nhà nghiên cứu, thiếu raw dialogue.

### Celestia / Heavenly Principles

- [PWR-CELESTIA-001] Thiên Lý duy trì trật tự Teyvat và sẵn sàng ném Đinh Thần hủy diệt các quốc gia chống đối.
  - label: CANON
  - source: `entities/Timeline.md#L49`
  - source_status: indirect_source_only
  - needs_primary_source: true
  - confidence: high
  - narrator_safe: conditional
  - fanfic_rule: Thiên Lý đang ngủ yên/im lặng. Tấn công Celestia ở những chương đầu là tự sát lập tức.
  - notes: Quyền năng răn đe tối cao mang tính thụ động.

### Descender Logic

- [PWR-DESCENDER-001] Thực thể ngoài thế giới (Descenders) có ý chí mạnh mẽ và hoàn toàn miễn nhiễm với việc xóa ký ức của Irminsul.
  - label: CANON
  - source: `sources/weapon_stories/Kiếm Giáng Lâm.md`
  - source_status: primary_source_found
  - confidence: high
  - narrator_safe: yes
  - fanfic_rule: Chỉ Descender mới immune với Irminsul. Nhân vật phàm nhân bản địa bắt buộc phải bị ảnh hưởng.
  - notes: Được chứng thực qua việc Lữ Hành nhớ về những người đã bị Irminsul xóa ký ức.
