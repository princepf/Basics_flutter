import 'package:flutter/material.dart';

import 'list_view.dart';
import 'listview_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApps(),
    );
  }
}

class MyApps extends StatefulWidget {
  MyApps({Key? key}) : super(key: key);

  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.list_alt)),
            Tab(
              icon: Icon(Icons.list_rounded),
            ),
            Tab(
              icon: Icon(Icons.grid_3x3),
            ),
          ]),
          title: Text("Diffrent types of View"),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyListView(
                                  children: [],
                                )));
                  },
                  child: Text("ListView", style: TextStyle(fontSize: 20))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyListViewBuilder()));
                  },
                  child:
                      Text("ListView Builder", style: TextStyle(fontSize: 20))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyListViewBuilder()));
                  },
                  child:
                      Text("ListView Builder", style: TextStyle(fontSize: 20))),
            ),
          ],
        ),
      ),
    ));
  }
}
// hello i am trying to conflict