import 'package:flutter/material.dart';

class MyGridList extends StatefulWidget {
  MyGridList({Key? key}) : super(key: key);

  @override
  _MyGridListState createState() => _MyGridListState();
}

class _MyGridListState extends State<MyGridList> {
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
          title: Text("GridList"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: _dataList
                .map(
                  (e) => Container(
                    child: Text("$e"),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.lime,
                    ),
                  ),
                )
                .toList(),
          ),
        ));
  }
}
