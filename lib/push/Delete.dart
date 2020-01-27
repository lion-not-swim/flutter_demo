import 'package:flutter/material.dart';

class Delete extends StatefulWidget {
  @override
  _Delete createState() => _Delete();
}

class _Delete extends State<Delete> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "第二个页面",
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
