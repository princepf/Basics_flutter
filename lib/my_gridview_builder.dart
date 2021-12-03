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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                child: GridView.builder(
                    itemCount: _dataList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1),
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height: 100,
                        width: 100,
                        color: Colors.lime,
                        child: Center(
                          child: Text("${_dataList[index]}"),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
