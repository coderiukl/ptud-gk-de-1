# 🏆 Thi giữa kỳ - Phát triển Ứng dụng (PTUD)

## 📝 **Thông tin sinh viên**
- **Họ và Tên:** Nguyễn Hữu Phúc
- **MSSV:** 22676511
- **Môn học:** Phát triển Ứng dụng (PTUD)
- **Nội dung:** Xây dựng ứng dụng Blog với Django

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
