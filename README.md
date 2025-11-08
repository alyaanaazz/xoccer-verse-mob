# xoccer_verse

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# PBP GANJIL 2025/2026

```
Nama :  Nisrina Alya Nabilah
Kelas : C
NPM : 2406425924
```

<details>
<summary><b>Tugas Individu 7</b></summary>

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
- `Hot Reload` adalah fitur unggulan Flutter yang memungkinkan saya menyuntikkan perubahan kode ke aplikasi yang sedang berjalan tanpa kehilangan state (status) saat ini, sehingga perubahan UI dan logika akan langsung terlihat dalam waktu kurang dari satu detik. Ini sangat cepat karena hanya membangun kembali widget tree yang terpengaruh. Sementara itu, `Hot Restart` menghentikan Dart Virtual Machine (VM) sepenuhnya dan memulai ulang aplikasi dari awal (metode `main()`), sehingga semua state aplikasi akan hilang. Hot Restart lebih lambat, namun dibutuhkan untuk perubahan yang lebih fundamental, seperti perubahan pada variabel tinal atau kode di initState() yang tidak bisa ditangani oleh Hot Reload.

tugas individu 7 done :p
</details>

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

### 1.  Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
1. `Navigator.push()`
    - Fungsi utama : Menambahkan halaman baru di atas tumpukan yang sudah ada.
    - Stack : Halaman lama tetap ada.
    - Back : Pengguna dapat kembali ke halaman sebelumnya dengan tombol back (di AppBar atau fisik).
2. `Navigator.pushReplacement()`
    - Fungsi utama : Mengganti halaman saat ini dengan halaman baru, dan menghapus halaman saat ini dari stack.
    - Stack : Halaman lama dihilangkan..
    - Back : Pengguna tidak dapat kembali ke halaman yang diganti/dihapus.
- Dalam aplikasi Xoccer Verse, pemilihan antara `Navigator.push()` dan `Navigator.pushReplacement()` sangat penting untuk mengelola riwayat navigasi (stack). `Navigator.push()` digunakan ketika developer ingin membawa user ke halaman baru, namun tetap mengizinkan mereka untuk kembali ke halaman sebelumnya. Contohnya adalah saat user beralih dari daftar produk ke halaman detail produk atau ketika membuka formulir add product (NewsFormPage) dari halaman utama. Dalam kasus-kasus ini, halaman lama tetap berada di stack, memungkinkan navigasi kembali yang mulus, seperti yang ditunjukkan dalam kode LeftDrawer untuk "Add Product": Navigator.push(...). Sebaliknya, `Navigator.pushReplacement()` digunakan ketika saya ingin mengganti halaman yang sedang aktif dengan halaman baru dan menghapus halaman lama secara permanen dari stack. Ini sangat krusial untuk skenario reset navigasi atau mencegah pengguna kembali ke halaman yang sudah tidak relevan. Aplikasi Xoccer Verse menggunakannya dalam LeftDrawer untuk navigasi kembali ke halaman "Home" juga menggunakan N`avigator.pushReplacement()`, yang efektif mereset tumpukan halaman agar halaman utama selalu berada di posisi paling atas, seperti yang tertera dalam kode LeftDrawer untuk `"Home": Navigator.pushReplacement(...)`.

### 2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
- Scaffold :
    - Berfungsi sebagai kanvas dasar untuk setiap halaman. Menyediakan slot struktural standar seperti appBar, body, drawer, dan bottomNavigationBar.
    - Konsistensi: Memastikan setiap halaman memiliki latar belakang, area aman, dan kerangka yang terstruktur, memudahkan penerapan global theme.

- AppBar:
    - Menampilkan judul halaman, tombol navigasi (leading icon seperti tombol back atau menu), dan aksi (seperti ikon keranjang atau search).
    - Konsistensi: Menjaga agar judul dan warna header tetap seragam di semua halaman. Ketika tombol back muncul secara otomatis, ini mengindikasikan navigasi yang jelas.

- Drawer (Menu Samping):
    - Menyediakan navigasi utama aplikasi (seperti Home, Add Product, dll.) di satu tempat yang tersembunyi.
    - Konsistensi: Karena saya membuat LeftDrawer sebagai widget terpisah, saya hanya perlu memanggilnya di setiap Scaffold (drawer: LeftDrawer(),). Ini memastikan semua halaman yang menggunakan Drawer memiliki daftar menu navigasi yang sama persis, meningkatkan pengalaman pengguna.

### 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
1. Padding
    - Kelebihan : Memberikan jarak spasi yang konsisten di sekitar elemen (misalnya, `TextFormField`).
    - Contoh Penggunaan : Digunakan di sekitar setiap `TextFormField` dan `DropdownButtonFormField` untuk memisahkannya secara visual dan mencegah elemen menempel ke tepi layar atau elemen lain.
2. SingleChildScrollView :
    - Kelebihan : Mencegah overflow error (kesalahan pixel) ketika formulir diisi dan keyboard muncul atau ketika konten formulir melebihi ukuran layar.
    - Contoh Penggunaan : Harus membungkus Column utama di dalam Form saya. Ini memungkinkan pengguna untuk menggulir (scroll) formulir ke atas/bawah.
3. Column / Row :
    - Kelebihan : Menata elemen-elemen secara vertikal (Column) atau horizontal (Row) secara terstruktur.
    - Contoh Penggunaan : Saya menggunakan Column untuk menata semua Padding, TextFormField, dan tombol secara vertikal dari atas ke bawah.

### 4.  Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop (Xoccer Verse) memiliki identitas visual yang konsisten dengan brand toko?
- Untuk memberikan identitas visual yang konsisten pada aplikasi Football Shop (Xoccer Verse) saya, saya perlu mendefinisikan schema warna utama dan menerapkannya secara strategis menggunakan ThemeData.
- Langkah Penyesuaian Tema:
    - mendefinisikan Brand Color: Pilih satu atau dua warna utama yang merepresentasikan brand saya (misalnya, pink dalam aplikasi saya).
    - Menggunakan `ThemeData` di `MaterialApp`: Ubah warna global di file utama saya (`main.dart`).
    - menerapkan Warna Aksen Strategis: menggunakan warna aksen (`Colors.pinkAccent`) untuk:
        - Aksi Utama: Tombol "Save" (ElevatedButton).
        - Header: `DrawerHeader` dan `AppBar` (dengan `backgroundColor: Theme.of(context).primaryColor` atau `Theme.of(context).colorScheme.secondary`).
        - Ikon Input: Ikon di dalam `TextFormField` (`prefixIcon`).
- Dengan cara ini, aplikasi saya akan memiliki palet warna yang kohesif, di mana warna utama (Pink) memberikan stabilitas dan warna aksen (Pink Accent) memberikan daya tarik visual pada elemen interaktif.