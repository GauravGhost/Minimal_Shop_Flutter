import 'dart:js_interop';

import 'package:minimal_shop/models/product.dart';

class Shop {
  // List of product for sale
  final List<Product> _shop = const [
    Product(
      name: "Product 1",
      description: "This is description of product 1",
      imagePath: "lib/assets/product1.png",
      price: 22.22,
    ),
    Product(
      name: "Product 2",
      description: "This is description of product 2",
      imagePath: "lib/assets/product2.png",
      price: 22.22,
    ),
    Product(
      name: "Product 3",
      description: "This is description of product 3",
      imagePath: "lib/assets/product3.png",
      price: 22.22,
    ),
    Product(
      name: "Product 4",
      description: "This is description of product 4",
      imagePath: "lib/assets/product4.png",
      price: 22.22,
    )
  ];

  // user cart
  List<Product> _userCart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _userCart;

  // add item to cart
  void addToCart(Product item) => _userCart.add(item);

  // remove item from cart
  void removeFromCart(Product item) => _userCart.remove(item);
}
