import 'package:niva/models/product.dart';
class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      product: Product.fromJson(json['product']),
      numOfItem: json['numOfItem'],
    );
  }
}
