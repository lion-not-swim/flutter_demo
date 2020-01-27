import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Delete.dart';
import 'Search.dart';

final routes = {
  '/form': (context) => Delete(),
  '/search': (context, {arguments}) => Search(arguments: arguments),
};

/*
* 页面进行跳转
*
* 命名路由
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
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class Tabs extends StatelessWidget {
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
            Navigator.pushNamed(context, "/search", arguments: {"id": "1223"});
          },
        ),
      ),
    );
  }
}

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
