// ignore_for_file: prefer_const_constructors

import 'package:backendpractice/providers/additem.dart';
import 'package:backendpractice/providers/shopname.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Add extends StatelessWidget {
  Add({Key? key}) : super(key: key);

  @override
  // ignore: unnecessary_new
  TextEditingController nameAdd = new TextEditingController();
  TextEditingController shopName = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Items'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            TextField(
              controller: nameAdd,
              decoration: InputDecoration(
                  hintText: 'Name', contentPadding: EdgeInsets.all(10)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (nameAdd.text.isEmpty) {
                    return;
                  } else {
                    Provider.of<AddItem>(context, listen: false)
                        .addItem(nameAdd.text);
                    Navigator.pop(context);
                  }
                },
                child: Text('Additem')),
            SizedBox(height: 20),
            TextField(
              controller: shopName,
              decoration: InputDecoration(
                  hintText: 'Add shop name',
                  contentPadding: EdgeInsets.all(15)),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (shopName.text.isEmpty)
                    return;
                  else {
                    Provider.of<ShopName>(context, listen: false)
                        .updateShopName(shopName.text);
                    Navigator.pop(context);
                  }
                },
                child: Text('Add shop name'))
          ],
        ),
      ),
    );
  }
}
