import 'package:flutter/material.dart';
import 'package:xoccer_verse/widgets/left_drawer.dart';
import 'package:xoccer_verse/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String nama = "Nisrina Alya Nabilah"; //nama
  final String npm = "2406425924"; //npm
  final String kelas = "C"; //kelas
  
  final List<ItemHomepage> items = [
    // Tambahkan properti warna ke ItemHomepage
    ItemHomepage("All Products", Icons.shopping_cart, const Color.fromARGB(255, 81, 128, 165)), // Biru
    ItemHomepage("My Products", Icons.list_alt, const Color.fromARGB(255, 115, 172, 117)), // Hijau
    ItemHomepage("Add Product", Icons.add, const Color.fromARGB(255, 159, 84, 78)), // Merah
  ];

  @override
  Widget build(BuildContext context) {
  // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
  return Scaffold(
    // AppBar adalah bagian atas halaman yang menampilkan judul.
    appBar: AppBar(
      // Judul aplikasi "Xoccer Verse" dengan teks putih dan tebal.
      title: const Text(
        'Xoccer Verse',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      // Warna latar belakang AppBar diambil dari skema warna tema aplikasi
      backgroundColor: Theme.of(context).colorScheme.primary,
    ),
    drawer: LeftDrawer(),
    // Body halaman dengan padding di sekelilingnya.
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      // Menyusun widget secara vertikal dalam sebuah kolom.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Row untuk menampilkan 3 InfoCard secara horizontal.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoCard(title: 'NPM', content: npm),
              InfoCard(title: 'Name', content: nama),
              InfoCard(title: 'Class', content: kelas),
            ],
          ),

          // Memberikan jarak vertikal 16 unit.
          const SizedBox(height: 16.0),

          // Menempatkan widget berikutnya di tengah halaman.
          Center(
            child: Column(
              // Menyusun teks dan grid item secara vertikal.

              children: [
                // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Discover our latest and most updated collection.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),

                // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                GridView.count(
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  // Agar grid menyesuaikan tinggi kontennya.
                  shrinkWrap: true,

                  // Menampilkan ItemCard untuk setiap item dalam list items.
                  children: items.map((ItemHomepage item) {
                    // Meneruskan objek ItemHomepage yang kini memiliki properti warna
                    return ItemCard(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Properti baru untuk warna latar belakang

  ItemHomepage(this.name, this.icon, this.color); // Konstruktor diubah
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title; 	// Judul kartu.
  final String content; 	// Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              textAlign: TextAlign.center, // Menambahkan alignment ke tengah
            ), 
          ],
        ),
      ),
    );
  }
}