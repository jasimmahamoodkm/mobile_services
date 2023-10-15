import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../models/product_model.dart';

class ProductInstance {
  static final ProductInstance _prodInstance =
      ProductInstance._SingletonConstructor();

  factory ProductInstance() {
    return _prodInstance;
  }

  ProductInstance._SingletonConstructor();

  void addProductToLocalStorage(Product product) {
    final List<Product> products = getProductsFromLocalStorage();
    products.add(product);
    final encodedProducts =
        jsonEncode(products.map((p) => p.toJson()).toList());
    window.localStorage['products'] = encodedProducts;
  }

  List<Product> getProductsFromLocalStorage() {
    final productsJson = window.localStorage['products'];
    if (productsJson != null) {
      final Iterable decoded = jsonDecode(productsJson);
      return decoded.map((p) => Product.fromJson(p)).toList();
    }
    return [];
  }
}
