import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Delete.dart';

/*
* 页面进行跳转
* */
void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _index = 0;
  List list = [Delete()];

  int getIndex(int i) {
    if (i >= list.length) {
      return 0;
    }
    return i;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳到新页面"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return new Delete();
            }));
          },
        ),
      ),
    );
  }
}
