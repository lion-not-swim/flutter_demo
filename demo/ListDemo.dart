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
        appBar: AppBar(title: Text("List view demo")),
        // 脚手架
        // 内容放在屏幕的中间  ， 布局主件
        body: Center(
          // 容器组件
          child: Center(
            child: Container(
              child: new MyList(),
            ),
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal, // 水平方向
      children: <Widget>[
        new Container(
          width: 180,
          color: Colors.red,
        ),
        new Image.network(
            "https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg"),
        new Image.network(
            "https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg"),
        new Image.network(
            "https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg"),
      ],
    );
  }
}
