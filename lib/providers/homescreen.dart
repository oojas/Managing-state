import 'package:backendpractice/providers/additem.dart';
import 'package:backendpractice/providers/addscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:backendpractice/providers/shopname.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Add();
                }));
              },
              icon: Icon(Icons.add)),
        ],
        title: Text('Home'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Consumer<AddItem>(builder: (context, addItem, _) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: addItem.itemlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          addItem.itemlist[index].item,
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      );
                    });
              }),
            ),
            Consumer<ShopName>(builder: (context, shopname, _) {
              return Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.yellow),
                child: Center(child: Text(shopname.name)),
              );
            })
          ],
        ),
      ),
    );
  }
}
