import 'package:flutter/material.dart';

class MyListViewBuilder extends StatefulWidget {
  MyListViewBuilder({Key? key}) : super(key: key);

  @override
  _MyListViewBuilderState createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  List<String> dataList = ["Surat", "Delhi", "Mumbai", "Banglore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("City Name"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) => itemContent(index)),
        ));
  }

  Widget itemContent(int index) => ListTile(
        title: Container(
            color: Colors.lime,
            padding: EdgeInsets.all(10),
            child: Text("${dataList[index]}")),
      );
}

@override
Widget build(BuildContext context) {
  return Container();
}
