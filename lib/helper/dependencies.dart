import 'package:get/get.dart';
import 'package:niva/data/api/api_client.dart';
import 'package:niva/data/repository/products_services_repo.dart';
import 'package:niva/Controllers/popular_products_controller.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https//www.niva.com"));

  //repos
  Get.lazyPut(() => ProductsServicesRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(
      () => PopularProductsController(productsServicesRepo: Get.find()));
}
