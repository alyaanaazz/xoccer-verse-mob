import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xoccer_verse/models/product_entry.dart';
import 'package:intl/intl.dart'; 

class ProductEntryCard extends StatelessWidget {
  final ProductEntry product;
  final VoidCallback onTap;

  const ProductEntryCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  String _formatCurrency(num amount) {
    final formatter = NumberFormat.currency(
      locale: 'id_ID', 
      symbol: 'Rp',   
      decimalDigits: 0, 
    );
    return formatter.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    final isDiscounted = product.discount > 0;
    final discountedPriceValue = (product.price * (100 - product.discount)) / 100;
    final formattedOriginalPrice = _formatCurrency(product.price);
    final formattedDiscountedPrice = _formatCurrency(discountedPriceValue.round());

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 150,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.broken_image)),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                Text(
                  product.name,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        product.category.toUpperCase(),
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),

                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey.shade300,
                    //     borderRadius: BorderRadius.circular(6),
                    //   ),
                    //   child: Text(
                    //     product.brand.toUpperCase(),
                    //     style: GoogleFonts.plusJakartaSans(
                    //       fontSize: 10,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.grey.shade800,
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(width: 8),

                    if (product.isFeatured)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.amber, 
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Text(
                          'FEATURED',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    const SizedBox(width: 8),

                    if (product.itemViews > 20) // Asumsi HOT juga terkait dengan isFeatured atau ada logika lain
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 171, 114), 
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Text(
                          'HOT🔥',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.red[900],
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 6),

                Text(
                  product.description.length > 100
                      ? '${product.description.substring(0, 100)}...'
                      : product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.plusJakartaSans(color: Colors.black54, fontSize: 13),
                ),
                const SizedBox(height: 6),

                if (isDiscounted)
                  Row(
                    children: [
                      Text(
                        formattedOriginalPrice,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough, 
                          decorationColor: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        formattedDiscountedPrice,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade700,
                        ),
                      ),
                    ],
                  )
                else
                  Text(
                    formattedOriginalPrice,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}