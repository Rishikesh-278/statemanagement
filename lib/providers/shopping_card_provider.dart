import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier
{
  List<String> shoppingCart = ["T-shirt", "Shoes", "Bags"];

  int get count => shoppingCart.length;

  List<String> get cart => shoppingCart;

  void addItem(String item)
  {
    shoppingCart.add(item);
    notifyListeners();
  }
}