import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView({Key? key, required List<Widget> children}) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> dataList = [
    "Prince",
    "Urvish",
    "Darshan",
    "Parth",
    "Rajan",
    "Kishan"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Friends Name"),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(children: displayList())));
  }

  List<Widget> displayList() {
    List<Widget> list = [];
    dataList.forEach((element) {
      list.add(ListTile(
        title: Container(
          padding: EdgeInsets.all(10),
          color: Colors.lime,
          child: Text(
            "$element",
          ),
        ),
      ));
    });
    for (var item in dataList) {
      print(item);
    }
    return list;
  }
}
