import 'product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

List<Cart> demoCarts = [
  Cart(product: products[0], numOfItem: 2),
  Cart(product: products[1], numOfItem: 1),
  Cart(product: products[3], numOfItem: 1),
];
