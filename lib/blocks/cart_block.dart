import 'dart:async';

import 'package:block_sample/data/cart_service.dart';
import 'package:block_sample/models/cart.dart';

class CartBlock {
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    CartService.addToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item) {
    CartService.removeFromCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getCart() {
    return CartService.getCart();
  }
}

final cartBlock = CartBlock();
