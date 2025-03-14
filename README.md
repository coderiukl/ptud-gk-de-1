# 🏆 Thi giữa kỳ - Phát triển Ứng dụng (PTUD)

## 📝 **Thông tin sinh viên**
- **Họ và Tên:** Nguyễn Hữu Phúc
- **MSSV:** 22676511
- **Môn học:** Phát triển Ứng dụng (PTUD)
- **Nội dung:** Xây dựng ứng dụng Blog với Django

---

## 📌 **Mô tả bài làm**
### 🅰 **Xây dựng ứng dụng Blog**
Ứng dụng Blog cho phép người dùng thực hiện các chức năng sau:
- Xem danh sách bài viết.
- Viết bài mới.
- Chỉnh sửa và xóa bài viết (theo quyền hạn).
- Bình luận trên bài viết.

### 🅱 **Áp dụng Layout 5: Sidebar (Thanh điều hướng)**
Ứng dụng sử dụng **Layout 5**, trong đó:
- **Sidebar (Thanh điều hướng)** ở bên trái giúp người dùng dễ dàng truy cập:
  - Tất cả bài viết.
  - Bài viết của tôi.
  - Tạo bài viết mới.
  - Đăng xuất.
- **Nội dung chính** nằm bên phải, hiển thị danh sách bài viết.

### 🅲 **Thiết kế trang theo chuẩn Layout 5**
Trang web được thiết kế với:
- **Header** chứa tên blog và thông tin người dùng.
- **Sidebar (Thanh điều hướng trái)** để di chuyển giữa các trang.
- **Main content (Nội dung chính)** hiển thị bài viết và bình luận.

### 🅳 **Thực hiện Option 3: Phân loại người dùng**
Chức năng **phân loại user** thành các nhóm quyền hạn:
1. **Viewer** → Chỉ có thể **xem bài viết**.
2. **Collaborator** → Có thể **chỉnh sửa bài viết**, nhưng **không thể xóa**.
3. **Editor** → Có thể **chỉnh sửa và xóa bài viết**.

💡 **Admin có thể thay đổi quyền của User từ trang quản trị.**  

---

## 🚀 **Hướng dẫn cài đặt và chạy ứng dụng**
### 1️⃣ **Clone repository**
Mở terminal hoặc command prompt và chạy lệnh:
```sh
 git clone https://github.com/coderiukl/ptud-gk-de-1.git
```

### 2️⃣ **Di chuyển vào thư mục dự án**
```sh
 cd todo_project
```

### 3️⃣ **Tạo môi trường ảo (`venv`)**
```sh
 python -m venv venv
```

### 4️⃣ **Kích hoạt môi trường ảo**
- **Windows:**
  ```sh
  ./venv/Scripts/Activate.ps1
  ```
- **Mac/Linux:**
  ```sh
  source venv/bin/activate
  ```

### 5️⃣ **Cài đặt dependencies**
```sh
 pip install -r requirements.txt
```

### 6️⃣ **Thiết lập database**
```sh
 python manage.py makemigrations
 python manage.py migrate
```

### 7️⃣ **Chạy ứng dụng**
```sh
 python manage.py runserver
```

Sau đó, mở trình duyệt và truy cập **[http://127.0.0.1:8000](http://127.0.0.1:8000)** để sử dụng ứng dụng.
