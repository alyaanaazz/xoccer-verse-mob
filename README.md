# PBP GANJIL 2025/2026

```
Nama :  Nisrina Alya Nabilah
Kelas : C
NPM : 2406425924
```

## Tugas 7: Elemen Dasar Flutter

### 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
- `Widget tree` adalah representasi hierarkis dari semua user interface dari flutter app, yang dimana setiap element yang menyusun tampilan app adalah sebuah Widget, dan ketika widget widget ini digabungkan, mereka akan membentuk struktur pohon yang disebut Widget Tree yang kemudian digunakan untuk menentukan struktur user interface, konfigurasi dan tampilan setiap elemen, dan cara menggambar elemen-elemen tersebut ke layar secara efisien. Hubungan parent-child nya sendiri terdiri dari:
    - `Parent widget`: widget yang bertanggung jawab untuk menetukan dimana dan bagaimana child akan diletakkan di layar, contohnya mengatur row dan column nya, parent juga akan memberikan constraints kepada child tentang seberapa besar child tersebut bisa bertumbuh.
    - `Child widget` : widget yang bertanggung jawab untuk mennetukan tampilan dan ukuran yang diinginkan, dimana child akan mencoba menentukan ukuran dan penampilannya sendiri berdasarkan constraints yang sudah ditentukan oleh parent widget, child juga akan bertanggung jawab untuk menampilkan content seperti icon dan text.

### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- `MyApp` : `./main.dart`
    widget untama app, widget ini berfungsi sebagai root dari flutter app ini, widget ini akan mengonfigurasi tema aplikasi dan mendefinisikan halaman awal
- `MaterialApp` : `./main.dart`
    menyediakan fungsionalitas dan tema design material yang diperlukan untuk aplikasi, juga mendefinisikan judul aplikasi dan schema app.
- `ThemeData` : `./main.dart`
    objek konfigurasi yang menentukan dan menerapkan schema warna dan property tema lainnya ke seluruh aplikasi.
- `MyHomePage` : `./menu.dart`
    widget yang merepresentasikan halaman utama aplikasi. widget ini memegang data statis (nama, NPM, kelas) dan mengatur tata letak keseluruhan halaman (scaffold)
- `Scaffold` : `./menu.dart`
    menyediakan struktur tata letak visual dasar untuk halaman, termasuk tempat untuk app bar dan body (isi utama).
- `AppBar` : `./menu.dart`
    bilah aplikasi yang muncul di bagian atas halaman, menampilkan judul aplikasi (Xoccer Verse) dan menggunakan warna tema primer.
- `Text` : `./menu.dart`
    menampilkan teks di layar yang digunakan untuk judul AppBar konten informasi, welcome message, nama button, dan SnackBar
- `Padding` : `./menu.dart`
    menambahkan ruang kosong (padding) di sekitar widget child nya, digunakan untuk memberi jarak antara elemen.
- `Column` : `./menu.dart`
    Mengatur widget anak-anaknya secara vertikal (dari atas ke bawah).
- `Row` : `./menu.dart`
    Mengatur widget anak-anaknya secara horizontal (dari kiri ke kanan), digunakan untuk menempatkan tiga InfoCard.
- `SizedBox` : `./menu.dart`
    Menciptakan ruang kosong dengan dimensi tetap, digunakan untuk memberikan jarak vertikal antar elemen.
- `Center` : `./menu.dart`
    Menempatkan widget anaknya tepat di tengah area yang tersedia.
- `GridView.count` : `./menu.dart`
    Menampilkan widget anak-anaknya dalam susunan grid dengan jumlah kolom tetap (3 kolom), digunakan untuk menampilkan ItemCard.
- `InfoCard` : `./menu.dart`
    Widget kustom yang menampilkan informasi statis (NPM, Name, Class) dalam format Card.
- `Card` : `./menu.dart`
    Widget wadah yang menerapkan desain Material dengan sudut membulat dan bayangan (elevation).
- `MediaQuery` : `./menu.dart`
    Digunakan untuk mendapatkan informasi ukuran layar (seperti lebar perangkat), memastikan InfoCard memiliki lebar yang responsif secara proporsional.
- `ItemCard` : `./menu.dart`
    Widget kustom yang merepresentasikan tombol menu dalam GridView, menampilkan ikon, nama, dan memiliki warna latar belakang unik sesuai konfigurasi (biru, hijau, atau merah).
- `InkWell` : `./menu.dart`
    Membuat widget dapat merespons sentuhan (onTap) dan menampilkan efek visual riak (splash effect) saat ditekan.
- `Material` : `./menu.dart`
    Memberikan konteks desain Material (seperti warna latar belakang dan bentuk) untuk widget di dalamnya, memungkinkan efek interaktif seperti InkWell.
- `SnackBar` : `./menu.dart`
    Sebuah pesan pop-up ringan yang muncul sebentar di bagian bawah layar sebagai umpan balik aksi pengguna.
- `ScaffoldMessenger` : `./menu.dart`
    Digunakan untuk mengelola dan menampilkan pesan pop-up sementara (SnackBar) di dalam Scaffold.

### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
- Widget `MaterialApp` adalah widget dasar yang berfungsi sebagai kerangka kerja untuk aplikasi Flutter yang menggunakan pedoman material design. Fungsinya utamanya adalah menyediakan navigator untuk mengelola perpindahan antar halaman (routing), menetapkan tema (seperti schema warna, typography) secara global untuk semua child widget, dan menyediakan struktur dasar yang dibutuhkan oleh kebanyakan widget Material (seperti scaffold). Widget ini hampir selalu digunakan sebagai widget root (akar) dari widget tree karena ia memuat konteks yang penting ke dalam aplikasi. Tanpa MaterialApp di bagian atas, widget seperti scaffold dan sistem navigasi tidak akan dapat berfungsi dengan baik atau tidak akan mengandung tema aplikasi yang sudah dikonfigurasi sebelumnya.

### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
- Perbedaan utama antara `StatelessWidget` dan `StatefulWidget` adalah pada kemampuannya mengelola data yang dapat berubah (state). `StatelessWidget` adalah widget yang tampilannya tidak akan berubah setelah dibuat, mereka tidak memiliki mekanisme internal untuk memperbarui diri, saya memilih StatelessWidget ketika widget hanya perlu menampilkan data statis, seperti text atau icon dengan konfigurasi statis. Sebaliknya, `StatefulWidget` adalah widget yang tampilannya dapat berubah secara dinamis selama aplikasi running, seperti meresponse input user atau perubahan data, saya memilih StatefulWidget ketika widget perlu interaktif, seperti tombol yang berubah warna atau checkbox. Perubahan tampilan pada StatefulWidget dipicu secara eksplisit dengan memanggil metode setState

### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
- `BuildContext` adalah referensi ke address widget di dalam widget tree, seperti sebuah address, ini sangat penting karena memungkinkan sebuah widget untuk mengakses data dan layanan dari widget parent atau bahkan widget leluhurnya (wkwkw), seperti mengakses tema aplikasi melalui `Theme.of(context)`, mendapatkan ukuran layar melalui `MediaQuery.of(context)`, atau menampilkan `SnackBar` menggunakan `ScaffoldMessenger.of(context)`. Setiap metode build menerima BuildContext sebagai parameter (`Widget build(BuildContext context)`), dan widget harus menggunakan parameter context ini untuk "melihat ke atas" pada tree dan berinteraksi dengan layanan yang dibutuhkan dari widget lain di atasnya.

### 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
- `Hot Reloa`d adalah fitur unggulan Flutter yang memungkinkan Anda menyuntikkan perubahan kode ke aplikasi yang sedang berjalan tanpa kehilangan state (status) saat ini, sehingga perubahan UI dan logika akan langsung terlihat dalam waktu kurang dari satu detik. Ini sangat cepat karena hanya membangun kembali widget tree yang terpengaruh. Sementara itu, `Hot Restart` menghentikan Dart Virtual Machine (VM) sepenuhnya dan memulai ulang aplikasi dari awal (metode `main()`), sehingga semua state aplikasi akan hilang. Hot Restart lebih lambat, namun dibutuhkan untuk perubahan yang lebih fundamental, seperti perubahan pada variabel tinal atau kode di initState() yang tidak bisa ditangani oleh Hot Reload.

tugas individu 7 done :p