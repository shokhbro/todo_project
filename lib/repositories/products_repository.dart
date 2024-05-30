import 'package:lesson47/models/product.dart';
import 'package:lesson47/services/products_http_services.dart';

class ProductsRepository {
  final productsHttpServices = ProductsHttpServices();
  // final productLocalService = ProductLocalService();

  Future<List<Product>> getProducts() async {
    // if (productLocalService.isNotEmpty) {
    //   return productLocalService.products;
    // }
    return productsHttpServices.getProducts();
  }

  Future<Product> addProduct(String title, double price, int amount) async {
    final newProduct =
        await productsHttpServices.addProduct(title, price, amount);
    return newProduct;
  }

  Future<void> editProduct(
      String id, String newTitle, double newPrice, int newAmount) async {
    await productsHttpServices.editProduct(id, newTitle, newPrice, newAmount);
  }

  Future<void> deleteProduct(String id) async {
    await productsHttpServices.deleteProduct(id);
  }
}
