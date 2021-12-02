// ignore_for_file: override_on_non_overriding_member

import 'package:backendpractice/Get_X/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class nextscreen extends StatefulWidget {
  const nextscreen({Key? key}) : super(key: key);

  @override
  _nextscreenState createState() => _nextscreenState();
}

class _nextscreenState extends State<nextscreen> {
  @override
  // ignore: non_constant_identifier_names
  final api_service = Get.find<details>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('next Screen'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Center(
            child: const Text(
              'This is the center screen',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Text(api_service.name),
          Text('${api_service.age}')
        ],
      ),
    );
  }
}
