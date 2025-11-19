# Portal Berita Kalavel
Nama: Muhammad Haikal
NIM: 24302027
Kelas: 3B

## Cara Menjalankan Aplikasi
1. Clone repositori ini.
2. Masuk ke folder project: `cd portal_berita_kalavel`
3. Install dependency: `composer install`
4. Copy file env: `cp .env.example .env`
5. Generate key: `php artisan key:generate`
6. Setup Database:
   - Buat database baru di phpMyAdmin.
   - Import file `portalweb.sql` yang ada di folder luar, ATAU jalankan `php artisan migrate`.
7. Jalankan server: `php artisan serve`
