Berikut adalah versi yang lebih rapi dan formal dari file README Anda:

---

# **PutarFilm**

PutarFilm adalah aplikasi web yang dirancang untuk mempermudah pengguna dalam mencari dan memberikan ulasan film. Aplikasi ini menghadirkan antarmuka yang ramah pengguna untuk menjelajahi detail film, memberikan komentar, serta memanfaatkan fitur manajemen akun yang terintegrasi.

Aplikasi ini dibangun menggunakan teknologi modern berikut:

- **React**: Untuk pengembangan antarmuka pengguna (frontend), yang menawarkan pengalaman pengguna responsif dan interaktif.
- **Laravel**: Sebagai backend API untuk pengelolaan data, logika aplikasi, dan layanan autentikasi.

Dengan arsitektur berbasis API, **PutarFilm** memisahkan frontend dan backend, memungkinkan keduanya bekerja secara independen namun tetap terhubung dengan baik.

---

## **Fitur Utama**

1. **Pencarian dan Filter Film**  
   Pengguna dapat mencari film berdasarkan judul atau kategori tertentu dengan data film yang lengkap.

2. **Detail Film**  
   Setiap film memiliki halaman detail yang menampilkan sinopsis, durasi, tahun rilis, dan rating.

3. **Manajemen Pengguna**  
   Pengguna dapat mendaftar akun, masuk (login), serta menambahkan komentar pada film.

4. **Keamanan dan Autentikasi**  
   Backend dilengkapi fitur autentikasi berbasis **Laravel JWT**, memastikan keamanan data pengguna.

5. **Manajemen Admin**  
   Admin memiliki akses untuk:
   - Memverifikasi pengguna.
   - Menambahkan data film baru.
   - Memoderasi komentar.
   - Menambah data baru seperti negara, genre, dan aktor.

---

## **Teknologi yang Digunakan**

- **React**  
  Framework JavaScript untuk membangun antarmuka dinamis, memberikan pengalaman yang lancar dan cepat.

- **Laravel**  
  Framework PHP untuk backend, yang menyediakan fitur seperti routing, middleware, validasi, dan autentikasi. Menggunakan **Eloquent ORM** untuk manajemen database.

- **MySQL**  
  Sistem manajemen basis data untuk menyimpan data film, informasi pengguna, dan data lainnya.

- **Tailwind CSS**  
  Library CSS yang mempermudah pembuatan antarmuka responsif dan modern.

---

## **Tujuan Proyek**

Proyek **PutarFilm** bertujuan untuk memberikan pengalaman pengguna yang menyenangkan dalam menjelajahi film. Dengan arsitektur berbasis API, aplikasi ini dirancang agar mudah diintegrasikan dengan fitur tambahan di masa depan.

---

## **Persyaratan Sistem**

Pastikan sistem Anda memenuhi spesifikasi berikut:

- **Sistem Operasi**: Windows 10 atau lebih baru, macOS, atau Linux.
- **Prosesor**: Intel i3 atau lebih tinggi.
- **RAM**: Minimal 4GB (disarankan 8GB atau lebih).
- **Penyimpanan**: Minimal 500MB ruang kosong.

### **Perangkat Lunak yang Dibutuhkan**

- Node.js (Versi >= 16.x)
- Composer (Versi >= 2.x)
- PHP (Versi >= 8.x)
- MySQL (atau MariaDB)
- Git
- XAMPP

---

## **Instalasi dan Setup**

Ikuti langkah-langkah berikut untuk menjalankan proyek di lingkungan lokal:

1. Clone repositori ini:  
   ```bash
   git clone <URL_REPOSITORY>
   ```

2. Import database:  
   - Buka **phpMyAdmin** melalui XAMPP.  
   - Import file `putar_putar_film.sql` ke database Anda.

3. Jalankan server database menggunakan XAMPP.

4. Install dependensi frontend dan backend:  
   - Backend:  
     ```bash
     composer install
     ```  
   - Frontend:  
     ```bash
     npm install
     ```

5. Konfigurasi file `.env` pada root proyek Laravel untuk menyesuaikan pengaturan database.

6. Jalankan server lokal:  
   - Untuk backend:  
     ```bash
     php artisan serve
     ```  
   - Untuk frontend:  
     ```bash
     npm run dev
     ```

---
