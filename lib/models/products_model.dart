class Product {
  Product(
      {required totalSize,
      required typeId,
      required this.offset,
      required products}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json["type_id"];
    offset = json['offset'];

    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }

  int? offset;

  late List<ProductModel> _products;
  // ignore: unused_field
  int? _totalSize;

  // ignore: unused_field
  int? _typeId;

  List<ProductModel> get products => _products;
}

class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.typeId,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['price'];
    img = json['img'];
    location = json['location'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    typeId = json['typeId'];
  }

  String? createdAt;
  String? description;
  int? id;
  String? img;
  String? location;
  String? name;
  int? price;
  int? stars;
  int? typeId;
  String? updatedAt;
}
