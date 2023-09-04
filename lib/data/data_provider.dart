import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:niva/models/product.dart';
import 'package:niva/models/service.dart';
import 'package:niva/models/cart.dart';

class DataProvider {
  // Existing methods for fetching hard-coded data
  static List<Product> getProducts() {
    return [
      Product(
        id: 1,
        title: "Laroche Posay Moisturizer",
        price: 2250,
        images: [
          "assets/image/laroche3.jpg",
          "assets/image/laroche2.jpg",
          "assets/image/laroche1.jpg",
        ],
        isFavourite: true,
        description: 'Moisturize your face with our Laroche Moisturizer',
      ),
      Product(
        id: 2,
        title: "Lipstick",
        price: 1500,
        images: [
          "assets/image/lipstick2.jpg",
          "assets/image/lipstick1.jpg",
        ],
        isFavourite: true,
        description: 'Our hudah lipstick is superstay during the whole day',
      ),
    ];
  }

  static List<Service> getServices() {
    return [
      Service(
        id: 1,
        title: "Artificial Locs",
        price: 2500,
        images: ["assets/image/locs.jpg"],
        description: 'Artificial locs are protective hairstyles',
        location: 'Nairobi Machakos',
        provider: 'Eddie Makeup',
        isFavourite: true,
      ),
      Service(
        id: 2,
        title: "Nails",
        price: 1500,
        images: ["assets/image/nail2.jpg"],
        provider: 'Stylish nails',
        description: 'Beautifully and well-crafted nails.',
        location: 'Nairobi Cbd',
        isFavourite: true,
      ),
    ];
  }

  // The new method to fetch products from Firestore
  Stream<List<Product>> productsStream() {
    return FirebaseFirestore.instance
        .collection('products')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Product.fromJson(doc.data()))
            .toList());
  }
}
Stream<List<Cart>> cartStream() {
  return FirebaseFirestore.instance
      .collection('cart')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Cart.fromJson(doc.data()))
          .toList());
}

Stream<List<Product>> productsStream() {
  return FirebaseFirestore.instance
      .collection('products')
      .where('isPopular', isEqualTo: true)  // Add this line for filtering popular products
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Product.fromJson(doc.data()))
          .toList());
}
