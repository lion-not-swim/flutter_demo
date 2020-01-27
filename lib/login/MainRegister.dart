import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("去注册界面"),
            onPressed: () {
              Navigator.of(context).pushNamed("/register");
            },
          )
        ],
      ),
    );
  }
}
