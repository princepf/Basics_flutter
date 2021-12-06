import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  SwitchPage({Key? key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isDelete = false;
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SwitchPage"),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("Show / Hide",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Switch(
                  value: !isDelete,
                  onChanged: (bool flag) {
                    setState(() => isDelete = !flag);
                    print(flag);
                  }),
            ),
            isDelete
                ? SizedBox()
                : ListTile(
                    title: Text("Delete this message",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    onTap: () async {
                      var res = await showDialog(
                          context: context,
                          builder: (context) => DeleteAlert());
                      if (res != null) {
                        setState(() => isDelete = res);
                      }
                    },
                  ),
            ListTile(
              title: Text(
                "Bottom Sheet",
              ),
              onTap: () async {
                var res = await showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.lime,
                          child: ListView(
                            children: [
                              ListTile(
                                title: Text(
                                  "Bottom Sheet",
                                ),
                                trailing: Icon(Icons.hourglass_bottom,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ));
              },
            ),
            ListTile(
                title: Text("Time is - ${time.format(context)}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                onTap: () async {
                  var selectedTime =
                      await showTimePicker(context: context, initialTime: time);

                  if (selectedTime != null) {
                    setState(() {
                      time = selectedTime;
                    });
                    print(time.format(context));
                  }
                }),
            ListTile(
              title: Text("Date is - ${date}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () async {
                var seletedDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2015, 1),
                    lastDate: date);
                if (seletedDate != null) {
                  setState(() {
                    date = seletedDate;
                  });
                  print(date);
                }
              },
            )
          ],
        ));
  }
}

class DeleteAlert extends StatelessWidget {
  const DeleteAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AlertDialog(
            title: Text("Delete"),
            content: Text("Are you sure you want to delete this message?"),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancle")),
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text("Ok")),
            ],
          )
        : CupertinoAlertDialog(
            title: Text("Delete"),
            content: Text("Are you sure you want to delete this message?"),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancle")),
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text("Ok")),
            ],
          );
  }
}
