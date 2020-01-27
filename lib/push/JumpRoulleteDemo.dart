import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Delete.dart';
import 'Search.dart';

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
  final routes = {
    '/form': (context) => Delete(),
    '/search': (context, {arguments}) => Search({arguments: arguments}),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
//      routes: {
//        '/form': (context) => Delete(),
//        '/search': (context) => Search(),
//      },
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name; //  获取名称 /form
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = new MaterialPageRoute(builder: (context) {
              pageContentBuilder(context, arguments: settings.arguments);
            });
            return route;
          } else {
            final Route route = new MaterialPageRoute(builder: (context) {
              pageContentBuilder(context);
            });
            return route;
          }
        }
      },
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
//            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//              return new Delete();
//            }));
            Navigator.of(context).pushNamed("/search", arguments: {"id": "1223"});
          },
        ),
      ),
    );
  }
}
