import 'package:flutter/material.dart';
import 'buttons.dart';
import 'list_view.dart';
import 'listview_builder.dart';
import 'my_gridview.dart';
import 'my_gridview_builder.dart';
import 'switch_page.dart';

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
        primarySwatch: Colors.lime,
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
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          bottom: TabBar(tabs: [
            Tab(
                icon: Icon(
              Icons.list_alt,
            )),
            Tab(
              icon: Icon(
                Icons.list,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.grid_3x3,
              ),
            ),
            Tab(
                icon: Icon(
              Icons.grid_4x4_rounded,
            )),
          ]),
          title: Text("Diffrent types of View", style: TextStyle(fontSize: 23)),
          centerTitle: true,
        ),
        //drawer
        drawer: SafeArea(
          child: Drawer(
            child: Container(
              color: Colors.lime,
              padding: EdgeInsets.all(20),
              child: ListView(children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ButtonsScreen()));
                  },
                  trailing:
                      (Icon(Icons.check_circle_outline, color: Colors.black)),
                  title: Text("CheckBox RadioButton",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SwitchPage()));
                  },
                  trailing:
                      (Icon(Icons.switch_left_outlined, color: Colors.black)),
                  title: Text("Switch",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ]),
            ),
          ),
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
                  child: Text("ListView",
                      style: TextStyle(
                        fontSize: 20,
                      ))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyListViewBuilder()));
                  },
                  child: Text("ListView Builder",
                      style: TextStyle(
                        fontSize: 20,
                      ))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyGridList()));
                  },
                  child: Text("GridList",
                      style: TextStyle(
                        fontSize: 20,
                      ))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyGridViewBuilder()));
                  },
                  child:
                      Text("GridViewBuilder", style: TextStyle(fontSize: 20))),
            ),
          ],
        ),
      ),
    ));
  }
}
