import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("注册界面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("这是注册的第一步"),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text("第一步"),
              onPressed: () {

              },
            )
          ],
        ),
      ),
    );
  }
}
