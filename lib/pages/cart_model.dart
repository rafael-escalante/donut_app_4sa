import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  double get totalPrice =>
      _items.fold(0, (sum, item) => sum + (item['price'] as double));

  int get itemCount => _items.length;

  void addItem(String name, double price) {
    _items.add({'name': name, 'price': price});
    notifyListeners();
  }
}
