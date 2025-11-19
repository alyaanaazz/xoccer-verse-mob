import 'package:flutter/material.dart';
import 'package:xoccer_verse/models/product_entry.dart';
import 'package:google_fonts/google_fonts.dart'; 
import 'package:intl/intl.dart'; 

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});
  
  // Fungsi untuk memformat mata uang (misal: 1400000 -> Rp 1.400.000)
  String _formatCurrency(num amount) {
    // Karena price dan discount bisa berupa int, kita gunakan num
    final formatter = NumberFormat.currency(
      locale: 'id_ID', 
      symbol: 'Rp',   
      decimalDigits: 0, 
    );
    return formatter.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    // Hitung harga diskon jika diskon > 0
    final isDiscounted = product.discount > 0;
    
    // Pastikan perhitungan menggunakan double/num untuk akurasi, lalu dibulatkan
    final discountedPriceValue = (product.price * (100 - product.discount)) / 100;
    
    // Format harga
    final formattedOriginalPrice = _formatCurrency(product.price);
    final formattedDiscountedPrice = _formatCurrency(discountedPriceValue.round());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Detail',
          style: GoogleFonts.plusJakartaSans(color: Colors.white),
        ),
        backgroundColor: Colors.pink[300],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail image
            if (product.thumbnail.isNotEmpty)
              Image.network(
                'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 250,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.broken_image, size: 50),
                  ),
                ),
              ),
            
            // Konten Utama dengan Padding
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BRAND, CATEGORY, dan FEATURED
                  Row(
                    children: [
                      // 1. BRAND
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300, 
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Text(
                          product.brand.toUpperCase(),
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8), 

                      // 2. CATEGORY
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 218, 222, 249),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Text(
                          product.category.toUpperCase(),
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8), 

                      // 3. FEATURED BADGE (Jika isFeatured true)
                      if (product.isFeatured)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 233, 209, 137), 
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(
                            'FEATURED',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.brown[600],
                            ),
                          ),
                        ),
                      const SizedBox(width: 8), 

                      // VIEWS COUNT
                      Row(
                        children: [
                          if (product.itemViews > 20)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 245, 171, 114), 
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                'HOT🔥',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.red[900],
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                  const SizedBox(height: 12), 

                  // Title
                  Text(
                    product.name,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8), 

                  if (isDiscounted)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          formattedOriginalPrice,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough, 
                            decorationColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Harga Diskon + Badge Diskon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start, 
                          children: [
                            // Harga Diskon
                            Text(
                              formattedDiscountedPrice,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.red.shade700,
                              ),
                            ),
                            const SizedBox(width: 8),

                            // badge diskon
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.red.shade700, // Warna latar belakang merah
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Text(
                                '-${product.discount}%', 
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white, // Warna teks putih
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  else
                    // Harga Normal kalo gada diskon
                    Text(
                      formattedOriginalPrice,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                  const Divider(height: 32),

                  // Full Description)
                  Text(
                    product.description,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16.0,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}