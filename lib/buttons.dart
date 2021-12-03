import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum gender { Male, Female, Custom }

class ButtonsScreen extends StatefulWidget {
  ButtonsScreen({Key? key}) : super(key: key);

  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  bool checked = false;
  bool checked1 = false;
  bool checked2 = false;
  bool checked3 = false;
  gender a = gender.Male;

  List<String> checkList = [];
  List<String> dataList = [
    "Dart",
    "C",
    "C++",
    "Java",
    "Python",
    ".Net",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Coding Languages",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),

              //MultiCheckbox
              Expanded(
                  child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    Checkbox(
                      value: checkList.contains(dataList[index]),
                      onChanged: (val) {
                        setState(() {
                          if (checkList.contains(dataList[index])) {
                            checkList.remove(dataList[index]);
                          } else {
                            checkList.add(dataList[index]);
                          }
                        });
                      },
                    ),
                    Text("${dataList[index]}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              )),

              //singlecheck
              // Row(
              //   children: [
              //     Checkbox(
              //       value: checked2,
              //       onChanged: (val) {
              //         setState(() {
              //           checked = val!;
              //         });
              //       },
              //     ),
              //     Text("Java",
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //         ))
              //   ],
              // ),
              //

              //RadioButton
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: gender.Male,
                            groupValue: a,
                            onChanged: (val) {
                              setState(() {
                                call(val);
                              });
                            }),
                        Text("Male")
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: gender.Female,
                            groupValue: a,
                            onChanged: (val) {
                              setState(() {
                                call(val);
                              });
                            }),
                        Text("Female")
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: gender.Custom,
                            groupValue: a,
                            onChanged: (val) {
                              setState(() {
                                call(val);
                              });
                            }),
                        Text("Custom")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void call(Object? val) {
    setState(() {
      switch (val) {
        case gender.Male:
          {
            a = gender.Male;
            break;
          }
        case gender.Female:
          {
            a = gender.Female;
            break;
          }
        case gender.Custom:
          {
            a = gender.Custom;
            break;
          }
        default:
      }
    });
  }
}
