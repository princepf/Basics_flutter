import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridViewBuilder extends StatefulWidget {
  MyGridViewBuilder({Key? key}) : super(key: key);

  @override
  _MyGridViewBuilderState createState() => _MyGridViewBuilderState();
}

class _MyGridViewBuilderState extends State<MyGridViewBuilder> {
  List<String> _dataList = [
    "Prince",
    "Urvish",
    "Darshan",
    "Parth",
    "Rajan",
    "Kishan",
    "Harry",
    "Ross",
    "Bruce",
    "Cook",
    "Carolyn",
    "Morgan",
    "Albert",
    "Walker",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewBuilder"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
