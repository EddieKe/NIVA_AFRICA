class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = true,
    required this.title,
    required this.price,
    required this.description,
  });

  void toggleFavorite() {}
}

// class ProductDetailsArguments {
  // final Product product;

  // ProductDetailsArguments({required this.product});
// }

List<Product> products = [
  Product(
    id: 1,
    images: [
      "assets/image/makeup1.jpg",
      "assets/image/makeup2.jpg",
      "assets/image/makeup3.jpg",
      "assets/image/makeup4.jpg",
    ],
    title: "Makeup",
    price: 1500.00,
    description: "Makeup is passion",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    
  ),
  Product(
    id: 2,
    images: [
      "assets/image/locs.jpg",
      "assets/image/locs1.jpg",
      "assets/image/locs3.jpg",
      "assets/image/locs4.jpg",
    ],
    title: "Artificial locs",
    price: 5000.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/image/nail1.jpg",
      "assets/image/nail2.jpg",
      "assets/image/nail3.jpg",
      "assets/image/nail4.jpg",
    ],
    title: "Nails",
    price: 2500.00,
    description: "Well crafted nails perfect for your personality",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/image/laroche1.jpg",
      "assets/image/laroche2.jpg",
      "assets/image/laroche3.jpg",
    ],
    title: "Lipstick",
    price: 1500.00,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Enjoy the quality makeup services at the comfort of your convenience \n We offer house call services to our clients so that you don't have to worry …";
