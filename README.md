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

<details>
<summary><b>Tugas Individu 8</b></summary>

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
</details>

## Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

 ### Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan `Map<String, dynamic>` tanpa model (terkait validasi tipe, null-safety, maintainability)?
- kita perlu membuat model dart sata mengambil atau mengirim data JSON karena model tersebut berfungsi sebagai schema untuk data, jika dipetakan langsung ke Map<String, dynamic> tanpa model akan memiliki konsekuensi serius, terutama terkait:
    - Type Safety : dengan model Dart, tipe setiap properti akan didefinisikan secara eksplisit, sehingga kesalahan tipe akan terdeteksi saat compile time, bukan saat aplikasi berjalan.
    - Null Safety : dengan model Dart, kita dapat secara jelas menandai properti sebagai `required` atau nullable, ini akan memaksa developer untuk emnangani null case dengan benar, sesuai prinsip null safety Darr, yang membuat kode lebih aman dan lebih stabil.
    - Maintainability : dengan model dart akan bersifat object-oriented, yang jauh lebih mudah dibaca dan di refactor, sehingga jika ada perubahan struktur data, developer hanya perlu memperbarui definisi kelas model, dan tooling Dart / Flutter akan menunjukkan dimana model tersebut digunakan.

 ### Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
 - Fungsi Utama :
    - Package `http`: Merupakan library standar untuk melakukan HTTP request (GET, POST, dll.) ke web service. Ia bertugas menangani komunikasi jaringan tingkat rendah, seperti membuka koneksi, mengirim payload, dan menerima raw response (biasanya dalam bentuk string atau byte).
    - CookieRequest (dari `pbp_django_auth`): Ini adalah wrapper atau perpanjangan dari client HTTP dasar (seperti http atau Dio) yang secara spesifik dirancang untuk menangani autentikasi berbasis session cookie dengan backend Django.
 - perbedaan peran http vs CookieRequest :
    - Package `http`: 
        - melakukan genel http request
        - tidak meng-handle cookie secara otomatis, harus diimplementasikan manual (dengan mengambil dari response dan menambahkannya ke request berikutnya)
        - berfokus ke komunikasi jaringan
        - key method nya `http.get()`, `http.post()`.
    - CookieRequest (dari `pbp_django_auth`):
        - Melakukan request HTTP sekaligus mengelola cookies (khususnya Django session).
        - Secara otomatis menyimpan session cookie dari response (misalnya setelah login) dan menyertakannya di semua request berikutnya (misalnya saat fetch data atau logout).
        - berfokus pada authentication dan authorization berbasis session
        - key method nya `request.login()`, `request.logout()`, `request.get()`, `request.postJson()`.

 ### Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
 - Instance CookieRequest perlu dibagikan (shared) ke semua komponen di aplikasi Flutter (menggunakan Provider) karena instance tersebut bertanggung jawab untuk mempertahankan state sesi pengguna.
    - Penyimpanan Sesi: Setelah pengguna berhasil login, CookieRequest menyimpan session cookie yang dikirim oleh Django.
    - Otorisasi Lanjutan: Setiap kali aplikasi melakukan request ke endpoint yang memerlukan otorisasi (misalnya, mengambil data produk, membuat produk baru, atau logout), request tersebut harus menyertakan session cookie yang sama.
    - Mekanisme Sharing: Dengan membagikan satu instance CookieRequest melalui Provider di root widget (MyApp), semua child widget (seperti halaman login, daftar produk, atau formulir tambah) dapat mengakses instance yang sama. Ini memastikan cookie sesi yang sama digunakan untuk semua komunikasi, yang memungkinkan Django mengenali pengguna yang sedang logged in.
- Jika setiap komponen membuat instance CookieRequest yang berbeda, sesi pengguna tidak akan ditransfer, dan request akan selalu dianggap sebagai pengguna anonim.
 
 ### Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
 - ALLOWED_HOSTS dengan `10.0.2.2`:
    - Ketika developer menjalankan emulator Android di computer device, address localhost (127.0.0.1 atau localhost:8000) dari host computer / host device (tempat Django berjalan) tidak sama dengan localhost di dalam emulator. Jika tidak ditambahkan, Django akan menolak request dari emulator Android dengan kesalahan "Invalid HTTP_HOST header" atau "Forbidden (403)" karena alamat host (10.0.2.2 atau alamat IP lokal lainnya) tidak diizinkan.
 - Mengaktifkan CORS (`CORS_ALLOW_ALL_ORIGINS = True`):
    - CORS (Cross-Origin Resource Sharing) adalah mekanisme keamanan yang mencegah web browser atau client dari domain yang berbeda mengakses resource. Karena Flutter (terutama ketika mengakses dari alamat host atau port yang berbeda) dianggap sebagai origin yang berbeda, Django harus secara eksplisit mengizinkan request ini. Jika tidak diaktifkan, request dari Flutter (misalnya untuk fetch data) akan diblokir oleh Django dengan kesalahan CORS Policy (terutama jika menggunakan browser atau tools tertentu).
- Pengaturan SameSite/Cookie Secure (`CSRF_COOKIE_SAMESITE = 'None', SESSION_COOKIE_SAMESITE = 'None', dll.`):
    - Settings ini penting untuk memungkinkan pertukaran cookie session antara Django dan client non-browser seperti aplikasi Flutter (yang diwakili oleh CookieRequest).
    - SameSite='None' menginstruksikan browser (atau klien seperti CookieRequest) untuk mengirim cookie dalam konteks cross-site.
    - CSRF_COOKIE_SECURE = True dan SESSION_COOKIE_SECURE = True sering kali menjadi syarat jika SameSite='None' digunakan.
    - Jika tidak ditangani pengaturan ini, authentication akan gagal karena session cookie atau CSRF token tidak dapat disimpan atau dikirim kembali dengan benar oleh CookieRequest ke Django, sehingga setiap request (setelah login) dianggap tidak terautentikasi.
- Izin Akses Internet Android (`<uses-permission android:name="android.permission.INTERNET" />`):
    - By default, aplikasi Android (termasuk yang dibuat dengan Flutter) tidak diizinkan mengakses jaringan eksternal. Izin ini harus ditambahkan ke AndroidManifest.xml agar aplikasi dapat membuka koneksi HTTP/HTTPS.
    - Jika tidak ditambahkan izin ini, maka aplikasi akan mengalami kesalahan jaringan (Socket Exception) atau Connection Refused saat mencoba melakukan request ke Django, karena sistem operasi Android memblokir akses internet.

 ### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
 - Mekanisme pengiriman data (misalnya formulir tambah produk) dari input Flutter hingga dapat ditampilkan adalah sebagai berikut:
    - Input Data di Flutter: Pengguna memasukkan data produk (name, description, dll.) pada formulir di `productlist_form`.dart (sekarang harusnya product_form.dart). Kemudian data ditangkap oleh `TextFormField` dan disimpan dalam variabel state (misalnya `_title`, `_description`).
    - Pembuatan Request dan JSON Encoding: Saat tombol "Tambah" ditekan, data disatukan ke dalam objek Dart (yaitu `Map<String, dynamic>`). Kemudian objek Dart ini kemudian diubah menjadi string JSON menggunakan dart:convert (jsonEncode(...)), selanjutnya CookieRequest yang diakses melalui Provider digunakan untuk mengirim data, misalnya dengan await request.postJson("[URL]/create-flutter/", jsonEncode({...})).
    - Pengiriman Request ke Django: `CookieRequest` mengirim request POST ke endpoint Django (`/create-flutter/`), menyertakan payload JSON sebagai body dan otomatis menyertakan session cookie pengguna yang logged in.
    - Penerimaan dan Pemrosesan di Django: View Django (`create_product_flutter`) menerima request POST. Karena menggunakan `CookieRequest`, Django dapat mengidentifikasi pengguna (`request.user`). View mengambil raw body request dan menggunakan `json.loads(request.body)` untuk mengubah string JSON kembali menjadi objek Python (dictionary). Data diproses, divalidasi, dan objek model baru (`Product`) dibuat dan disimpan ke database (`new_products.save()`). Django mengirimkan response JSON sukses ({"status": "success"}).
    - Pembaruan Tampilan di Flutter: Response diterima oleh CookieRequest di Flutter. Jika status sukses, aplikasi menampilkan `SnackBar` ("Product successfully saved!") dan melakukan navigasi penggantian (`Navigator.pushReplacement`) kembali ke halaman utama (`MyHomePage`), yang memicu reload data.
    - Pemisahan Fetch Data: Untuk menampilkan data produk yang baru ditambahkan, halaman daftar produk (`ProductListPage`) melakukan request terpisah: await request.get(`'http://[URL]/json/'`). Response JSON dari Django diterima, diubah menjadi `List<Product>` (menggunakan `Product.fromJson`), dan ditampilkan di UI menggunakan `FutureBuilder` dan `ListView.builder`.
 
 ### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Proses autentikasi antara aplikasi Flutter dan backend Django sangat mengandalkan package pbp_django_auth dan kelas kuncinya, CookieRequest, yang bertindak sebagai klien HTTP yang sadar sesi.
    - Register: Register dimulai ketika pengguna memasukkan kredensial pada RegisterPage. Aplikasi Flutter mengirimkan data tersebut sebagai JSON melalui metode request.postJson() ke endpoint registrasi Django (/auth/register/). Di sisi Django, view yang bersangkutan akan memvalidasi data dan, jika berhasil, membuat objek pengguna baru di database. Django kemudian mengirimkan response sukses, dan aplikasi Flutter menavigasi pengguna ke halaman login untuk memulai sesi.
    - Login : Login adalah tahapan krusial di mana sesi dibuat. Pengguna mengirim username dan password menggunakan metode khusus request.login() dari instance CookieRequest ke endpoint Django (/auth/login/). Django memverifikasi kredensial melalui fungsi authenticate(). Jika valid, Django memanggil auth_login(), yang menghasilkan session cookie pada response HTTP. Peran vital CookieRequest di sini adalah menangkap dan secara internal menyimpan session cookie ini. Setelah cookie disimpan, properti request.loggedIn di Flutter akan bernilai true, dan aplikasi dapat menavigasi ke halaman utama, di mana request selanjutnya ke endpoint yang terlindungi akan secara otomatis menyertakan session cookie yang tersimpan, memungkinkan Django mengenali dan mengotorisasi pengguna.
    - Logout : Proses logout session terjadi ketika pengguna click tombol logout. Aplikasi Flutter memanggil metode request.logout() ke endpoint Django (/auth/logout/). Karena ini adalah request yang sah, CookieRequest secara otomatis menyertakan session cookie yang saat ini aktif. View Django memanggil auth_logout(), yang menghancurkan sesi di sisi server. Setelah menerima response sukses dari Django, CookieRequest di Flutter menghapus session cookie yang tersimpan dari dirinya sendiri, secara efektif mengakhiri sesi di sisi klien, dan aplikasi kemudian mengarahkan pengguna kembali ke LoginPage.
 
 ### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
 1. Setup Autentikasi Django & Konektivitas
Setup Django: Buat app authentication, tambahkan ke INSTALLED_APPS, instal dan tambahkan django-cors-headers. Konfigurasi settings.py: Tambahkan middleware CORS, atur CORS_ALLOW_ALL_ORIGINS = True, atur semua cookie (CSRF_COOKIE_SECURE, SESSION_COOKIE_SECURE, SameSite) ke True/'None', dan tambahkan 10.0.2.2 ke ALLOWED_HOSTS. Implementasi View Autentikasi (Django): Buat view login, register, dan logout di authentication/views.py. Gunakan @csrf_exempt untuk request POST dari Flutter dan fungsi authenticate, auth_login, auth_logout dari Django. Routing URL (Django): Konfigurasi urls.py di app authentication dan tambahkan path auth/ ke project utama.

2. Integrasi Package Flutter & Provider. Instalasi Package: Jalankan flutter pub add provider pbp_django_auth. Konfigurasi Android: Tambahkan izin internet (<uses-permission android:name="android.permission.INTERNET" />) ke AndroidManifest.xml. Provider Setup: Di main.dart, bungkus MaterialApp dengan Provider<CookieRequest> untuk membagikan satu instance CookieRequest ke seluruh aplikasi. Ubah home: menjadi const LoginPage().

3. Implementasi Halaman Autentikasi
Halaman Login: Buat login.dart. Ambil instance CookieRequest menggunakan final request = context.watch<CookieRequest>();. Di tombol login, panggil await request.login("[URL]/auth/login/", {...}) dan tangani navigasi/pesan berdasarkan request.loggedIn. Halaman Register: Buat register.dart. Di tombol register, panggil await request.postJson("[URL]/auth/register/", jsonEncode({...})) dan tangani response sukses/gagal. Halaman Logout: Di news_card.dart (product_card.dart), tambahkan logika untuk tombol "Logout" yang memanggil await request.logout("[URL]/auth/logout/") dan navigasi kembali ke LoginPage jika sukses.

4. Fetch Data dan Model Kustom
Buat Model Dart: Gunakan Quicktype dengan data JSON dari endpoint produk (sebelumnya news) Django (/json/) untuk menghasilkan class Dart (ProductEntry) dengan fungsi fromJson dan toJson. Simpan di lib/models/product_entry.dart. Implementasi Proxy Gambar (Django): Tambahkan view proxy_image di Django dan path proxy-image/ untuk mengatasi masalah CORS pada gambar (jika gambar di-host eksternal).

5. Menampilkan Daftar Produk
Buat Widget Kartu: Buat product_entry_card.dart untuk menampilkan satu entri produk, menggunakan Image.network dengan URL proxy Django. Halaman Daftar: Buat product_entry_list.dart. Buat fungsi fetchProducts(CookieRequest request) yang memanggil await request.get('[URL]/json/'). Tampilan Data: Gunakan FutureBuilder untuk memanggil fetchProducts dan menampilkan hasilnya menggunakan ListView.builder yang berisi ProductEntryCard.

6. Integrasi Form Tambah Produk
View Tambah (Django): Buat view @csrf_exempt create_product_flutter di main/views.py yang menerima POST, menggunakan json.loads(request.body) untuk data, dan membuat/menyimpan objek Product baru. Pengiriman Data (Flutter): Di formulir tambah produk (product_form.dart), tambahkan CookieRequest ke widget menggunakan context.watch<CookieRequest>(). Aksi Tombol: Ubah onPressed tombol tambah untuk memanggil await request.postJson("[URL]/create-flutter/", jsonEncode({...})) dan tangani response sukses/gagal.