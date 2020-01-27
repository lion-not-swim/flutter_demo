import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 窗口的主题
      home: Scaffold(
        // 脚手架
        // 内容放在屏幕的中间  ， 布局主件
        body: Center(
          // 容器组件
          child: Container(
              //child 组件 在 容器内的位置
              width: 1200,
              height: 720,
//              color: Colors.blue,
              // 背景颜色
              alignment: Alignment.bottomCenter,
//              padding: EdgeInsets.all(50.0),
              margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
              padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
              decoration: new BoxDecoration(
                  // 背景色渐变
                  gradient:
                      LinearGradient(colors: [Colors.blue, Colors.amberAccent]),
                  // 边框
                  border: Border.all(width: 2.0, color: Colors.black)),
              child: Text(
                "aaa",
                style: TextStyle(fontSize: 40),
              )),
        ),
      ),
    );
  }
}
