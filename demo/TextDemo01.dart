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
          child: Text(
            "hello world111111111111111132222222222    222222222222222222222222222222222222222222222222222222222222222222222222222222222222222",
            textAlign: TextAlign.left,
            maxLines: 1, // 行数目
//            overflow: TextOverflow.ellipsis,  // 字符超出一行，用省略号代替
            overflow: TextOverflow.fade, //  渐变 从上到下  慢慢变灰
            style: TextStyle(
                fontSize: 25.0, // 大小
                color: Colors.amberAccent, // 颜色
                decoration: TextDecoration.underline, // 下划线
                decorationStyle: TextDecorationStyle.solid // 实线
                ), // 最复杂的属性
          ),
        ),
      ),
    );
  }
}
