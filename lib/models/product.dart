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

  // Newly added factory constructor to initialize Product from a Map
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      images: List<String>.from(json['images']),
      isFavourite: json['isFavourite'] ?? false,
      isPopular: json['isPopular'] ?? false,
      rating: json['rating'].toDouble() ?? 0.0,
      description: json['description'],
    );
  }
}
