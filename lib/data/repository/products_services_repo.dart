import 'package:get/get.dart';
import 'package:niva/data/api/api_client.dart';

class ProductsServicesRepo extends GetxService {
  final ApiClient apiClient;
  ProductsServicesRepo({required this.apiClient});

  Future<Response> getProductsServicesList() async {
    return await apiClient
        .getData("www.niva.com/apiClient/products-services/list");
  }
}
