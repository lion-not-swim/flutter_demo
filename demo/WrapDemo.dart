import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

    runApp(new MyApp());
}

//=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: WrapDemo(),
      ),
    );
  }
}

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      color: Colors.redAccent,
      child: Wrap(
        spacing: 10,
        runSpacing: 20,
        direction: Axis.horizontal,
        alignment: WrapAlignment.start, // 对齐方式
        runAlignment: WrapAlignment.end,
        children: <Widget>[
          MyButton("aa1asdasd"),
          MyButton("aa2asdasd"),
          MyButton("aa3aaaaa"),
          MyButton("aa4asdasd"),
          MyButton("aa5asdas"),
          MyButton("aa5asdas"),
          MyButton("aa5asdas"),
          MyButton("aa5asdas"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('${text}'),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
