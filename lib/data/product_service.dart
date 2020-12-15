import 'package:block_sample/models/product.dart';

class ProductService {
  static List<Product> products = List<Product>();

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  //Constructor
  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Acer Laptop", 6000));
    products.add(new Product(2, "Dell Laptop", 7500));
    products.add(new Product(3, "Toshiba Laptop", 2000));
    return products;
  }
}
