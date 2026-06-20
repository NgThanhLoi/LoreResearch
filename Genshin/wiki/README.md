# Genshin Fanfic LLM Wiki

## Purpose

* Đây là LLM-readable knowledge base cho fanfic Genshin Impact.
* Dùng để quản trị lore, canon, theory, headcanon, nhân vật, thế lực, vùng đất, power system, timeline, AU, style và QA.
* Không phải story plan.
* Không phải outline.
* Không phải nơi viết chương truyện.

## Core principles

* **Source-first:** Mọi tuyên bố (claim) quan trọng phải dẫn về nguồn sơ cấp thực tế.
* **Claim-level reliability:** Mức độ tin cậy được gán nhãn cho từng tuyên bố cụ thể thay vì toàn bộ tài liệu.
* **Markdown pages over rigid database tables:** Cấu trúc trang markdown thân thiện với LLM thay vì bảng cơ sở dữ liệu cứng nhắc.
* **LLM-readable structure:** Tối ưu hóa tính dễ đọc và xử lý thông tin cho LLM/Agent.
* **Every major claim needs a source:** Thiếu nguồn sơ cấp sẽ bị gắn nhãn thiếu nguồn.
* **Theory is allowed but must never masquerade as canon:** Các giả thuyết phải được làm rõ và không được coi là sự thật hiển nhiên.
* **Headcanon is allowed but must be isolated:** Các chi tiết tự chế phải được giữ trong phần riêng biệt để tránh OOC.
* **AU is allowed but must be declared:** Khai báo thay đổi thế giới song song một cách rõ ràng.
* **Unverified lore must not be used as plot foundation:** Lore chưa được xác minh không được làm cột trụ chính cho cốt truyện.

## Folder map

* [sources/](sources/README.md): Bản đồ nguồn thô và báo cáo chất lượng nguồn của workspace.
* [entities/](entities/README.md): Hồ sơ thực thể mẫu (nhân vật, thế lực, địa danh, sức mạnh, sự kiện, vật phẩm, khái niệm).
* [synthesis/](synthesis/README.md): Hệ điều hành cốt lõi (Lore OS) gồm các chính sách canon, sức mạnh, timeline, phong cách và QA.
* [workflows/](workflows/README.md): Quy trình thao tác, kiểm duyệt và cập nhật wiki cho LLM.
* [projects/](projects/_template/Project_Profile.md): Các tệp cấu hình dự án fanfic trong tương lai.

## How an LLM should use this wiki

Quy trình sử dụng:
1. Đọc [SCHEMA.md](SCHEMA.md) để hiểu cấu trúc và các nhãn độ tin cậy.
2. Đọc [index.md](index.md) để xác định vị trí tài liệu cần tìm.
3. Tìm kiếm các trang entity hoặc synthesis liên quan đến yêu cầu.
4. Đối chiếu mã nguồn (`sources/`) và Claim ID để kiểm chứng tính xác thực.
5. Kiểm tra nhãn độ tin cậy của thông tin (chỉ sử dụng nhãn được phép theo chính sách).
6. Kiểm tra danh sách mâu thuẫn tại [contradiction-register.md](synthesis/contradiction-register.md) để tránh sử dụng dữ liệu lỗi.
7. Thực hiện phản hồi hoặc viết dựa trên các dữ liệu đã được làm sạch và phê duyệt.
