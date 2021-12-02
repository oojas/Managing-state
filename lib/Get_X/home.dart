import 'package:backendpractice/Get_X/incrementar.dart';
import 'package:backendpractice/Get_X/next.dart';
import 'package:backendpractice/Get_X/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  final getDetails = Get.put(details());
  final increment = Get.put(Increment());
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment.increment();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(nextscreen());
              },
              icon: Icon(Icons.arrow_right))
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Text(getDetails.name),
          SizedBox(
            height: 20,
          ),
          Text('ojas ${getDetails.age}'),
          Obx(() {
            return Text('${increment.count}');
          })
        ],
      )),
    );
  }
}
