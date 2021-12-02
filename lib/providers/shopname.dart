import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopName extends ChangeNotifier {
  String name = '';

  updateShopName(updatedName) {
    this.name = updatedName;
    notifyListeners();
  }
}
