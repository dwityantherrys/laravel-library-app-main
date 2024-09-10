# Laravel CCTV

Webiste untuk Sheet Data CCTV

## Instalasi

Untuk menjalankan aplikasi ini, anda memerlukan:

- PHP versi 8.2 atau lebih tinggi
- Composer
- MySQL
- Node.js dan NPM

Langkah-langkah instalasi adalah sebagai berikut:

1. Clone repositori ini ke direktori lokal anda dengan perintah `git clone https://github.com/username/laravel-library-app.git`
2. Masuk ke direktori aplikasi dengan perintah `cd laravel-library-app`
3. Jalankan perintah `composer install` untuk menginstal dependensi PHP
4. Jalankan perintah `cp .env.example .env` untuk membuat file konfigurasi
5. Edit file .env sesuai dengan konfigurasi database anda
6. Jalankan perintah `php artisan key:generate` untuk membuat kunci aplikasi
7. Jalankan perintah `php artisan migrate --seed` untuk membuat tabel database dan mengisi data awal
8. Jalankan perintah `npm install` untuk menginstal dependensi JavaScript
9. Jalankan perintah `npm run dev` untuk mengkompilasi aset
10. Jalankan perintah `php artisan serve` untuk menjalankan server lokal

## Penggunaan

Setelah menjalankan server lokal, anda dapat mengakses aplikasi di http://localhost:8000
Untuk sementara ini fitur user saja yang masih tersedia.
Contohnya anda dapat login sebagai user dengan menggunakan email dan password berikut:

- User: user@example.com / password

Sebagai user, anda dapat melakukan hal-hal berikut:

- Melihat daftar buku yang tersedia di perpustakaan
- Meminjam buku dengan memasukkan jumlah buku dan tanggal pengembalian
- Melihat daftar buku yang dipinjam
- Mengembalikan buku yang sudah dipinjam
- Melihat profil dan mengubah password

## Lisensi
Aplikasi ini dilisensikan di bawah [MIT License].
