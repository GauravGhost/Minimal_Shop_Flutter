import 'package:flutter/material.dart';
import 'package:minimal_shop/models/product.dart';

class Shop extends ChangeNotifier {
  // List of product for sale
  final List<Product> _shop = const [
    Product(
      name: "All in One Desktop",
      description: "This is set of desktop which includes Mouse, keyboard, Monitor, CPU",
      imagePath: "lib/assets/6.jpg",
      price: 22.22,
    ),
    Product(
      name: "Monitor, Keyboard, Mouse",
      description: "This is a set of Monitor, Keyboard and Mouse with the latest driver upadate. Monitor support upto 4k",
      imagePath: "lib/assets/5.jpg",
      price: 22.22,
    ),
    Product(
      name: "Zesp i11 20th Gen Processor",
      description: "Processor: Intel Core i5-1235U 12th Generation (up to 4.40 GHz, 12MB 10 Cores) RAM & Storage: 8 GB, 1 x 8 GB, DDR4, 2666 MHz, (2 DIMM Slots, Expandable upto 16GB) & 512GB SSD;Software: Pre-Loaded Windows 11 Home with Lifetime Validity | MS Office Home and Student 2021 with lifetime validity| McAfee Multi-Device Security 15-month subscription",
      imagePath: "lib/assets/3.jpg",
      price: 22.22,
    ),
    Product(
      name: "Wireless Keyboard and mouse combo",
      description: "Ditch the tangled wires with this wireless keyboard and mouse combo. Perfect for home, office, or on-the-go use.",
      imagePath: "lib/assets/1.jpg",
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
  void addToCart(Product item) {
    _userCart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _userCart.remove(item);
    notifyListeners();
  }
}
