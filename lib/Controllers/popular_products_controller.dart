import 'package:get/get.dart';
import 'package:niva/data/repository/products_services_repo.dart';
import 'package:niva/Models/products_model.dart';

class PopularProductsController extends GetxController {
  final ProductsServicesRepo productsServicesRepo;
  PopularProductsController({required this.productsServicesRepo});

  List<dynamic> _productsServicesList = [];
  List<dynamic> get productsServicesList => _productsServicesList;

  Future<void> getProductsServicesList() async {
    Response response = await productsServicesRepo.getProductsServicesList();
    if (response.statusCode == 200) {
      _productsServicesList = [];
      _productsServicesList.addAll(Product.fromJson(response.body).products);
      update();
    } else {}
  }
}
