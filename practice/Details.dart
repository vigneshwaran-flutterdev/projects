import 'package:flutter/cupertino.dart';

class Details extends ChangeNotifier {
  List<String> l = [
    "product 1",
    "product 2",
    "product 3",
  ];

  List<String> Cart = [];

  void add(String name) {
    Cart.add(name);

    notifyListeners();
  }

  void delete(int index) {
    Cart.removeAt(index);

    notifyListeners();
  }
}

