import 'package:flutter/material.dart';
import 'package:xoccer_verse/models/product_entry.dart';
import 'package:xoccer_verse/widgets/left_drawer.dart';
import 'package:xoccer_verse/Screens/product_detail.dart';
import 'package:xoccer_verse/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  final bool isMyProducts;

  const ProductEntryListPage({super.key, this.isMyProducts = false});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    // Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000
    String url = widget.isMyProducts
        ? 'http://localhost:8000/my-json/' // Endpoint untuk My Products
        : 'http://localhost:8000/json/';

    final response = await request.get(url);

    // Decode response to json format
    var data = response;

    // Convert json data to ProductEntry objects
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  Future<void> incrementViews(CookieRequest request, String productId) async {
    String url = 'http://localhost:8000/$productId/';
    try {
      await request.post(url, {});
    } catch (e) {
      print('Error incrementing views: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isMyProducts ? 'My Products' : 'All Products'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            // Jika Future gagal (mis. timeout, koneksi ditolak)
            print("Error fetching data: ${snapshot.error}");
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 50,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Gagal memuat data. Periksa koneksi atau server Django.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                    Text(
                      'Detail: ${snapshot.error}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            );
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'There are no products in the list yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () async {
                    final ProductEntry selectedProduct = snapshot.data![index];
                    await incrementViews(request, selectedProduct.id);
                    // Navigate to products detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailPage(product: selectedProduct),
                      ),
                    ).then((_) {
                      setState(() {});
                    });
                  },
                ),
              );
            }
          }
        },
      ),
    );
  }
}
