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
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

List<Product> newproducts = [
  Product(
    id: 1,
    images: [
      "assets/image/makeup1.jpg"
          "assets/image/makeup2.jpg"
          "assets/image/makeup3.jpg"
          "assets/image/makeup4.jpg",
    ],
    title: "Makeup",
    price: 15.00,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/image/locs.jpg"
          "assets/image/locs1.jpg"
          "assets/image/locs3.jpg"
          "assets/image/locs4.jpg",
    ],
    title: "Articial locs",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/image/nail1.jpg"
          "assets/image/nail2.jpg"
          "assets/image/nail3.jpg"
          "assets/image/nail4.jpg",
    ],
    title: "Nails",
    price: 25.00,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/image/laroche1.jpg"
          "assets/image/laroche2.jpg"
          "assets/image/laroche3.jpg",
    ],
    title: "Lipstick",
    price: 15.00,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Enjoy the quality makeup services at the comfort of your conviniece \n We offer house call services to our clients so that you don't have to worry …";
