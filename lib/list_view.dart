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
    "Darshn",
    "Parth",
    "Rajan",
    "Kishan"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Person Name"),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: MyListView(children: displayList())));
  }

  List<Widget> displayList() {
    List<Widget> list = [];
    dataList.forEach((element) {
      list.add(ListTile(
        title: Container(
            color: Colors.lime,
            padding: EdgeInsets.all(10),
            child: Text("${element}")),
      ));
    });
    for (var item in dataList) {
      print(item);
    }
    return list;
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}
