class Product {
  int? _totalSize;
  int? _typeId;
  int? offset;

  late List<ProductModel> products;

  Product({this._totalSize, this._typeId, this.offset, this.products});
  Product.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    typeId = json["type_id"];
    offset = json['offset'];

    if (json['products'] != null) {
      products = <ProductModel>[];
      json['products'].forEach((v) {
        products!.add(ProductModel.fromJson(v));
      });
    }
  }
}
