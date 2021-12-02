import 'package:backendpractice/providers/modal.dart';
import 'package:flutter/cupertino.dart';

class AddItem extends ChangeNotifier {
  List<Item> itemlist = [];
  addItem(String name) {
    Item item = new Item(name);
    itemlist.add(item);
    notifyListeners();
  }
}
