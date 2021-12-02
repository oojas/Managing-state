
import 'package:backendpractice/Get_X/home.dart';
import 'package:backendpractice/providers/additem.dart';
import 'package:backendpractice/providers/homescreen.dart';
import 'package:backendpractice/providers/shopname.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddItem>(create: (context) {
          return AddItem();
        }),
        ChangeNotifierProvider<ShopName>(create: (_) {
          return ShopName();
        })
      ],
      child: GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: mainscreen()),
    );
  }
}
