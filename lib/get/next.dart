import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class nextscreen extends StatefulWidget {
  const nextscreen({Key? key}) : super(key: key);

  @override
  _nextscreenState createState() => _nextscreenState();
}

class _nextscreenState extends State<nextscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('next Screen'),
      ),
      body: Center(
        child: Text(
          'This is the center screen',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
