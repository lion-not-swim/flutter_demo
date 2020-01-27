import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_demo0123/demo/push/JumpRoulleteDemo.dart';

import 'package:flutter_demo0123/push/JumpRoulleteDemo.dart';
//F:\flutter_project\flutter_demo0123\lib\push\JumpRoulleteDemo.dart
void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(new MyApp());
}

//
//final routes = {
//  '/form': (context) => Delete(),
//  '/search': (context, {arguments}) => Search(arguments: arguments),
//};
//
//
////固定写法
//var onGenerateRoute = (RouteSettings settings) {
//  // 统一处理
//  final String name = settings.name;
//  final Function pageContentBuilder = routes[name];
//  if (pageContentBuilder != null) {
//    if (settings.arguments != null) {
//      final Route route = MaterialPageRoute(
//          builder: (context) =>
//              pageContentBuilder(context, arguments: settings.arguments));
//      return route;
//    } else {
//      final Route route =
//      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
//      return route;
//    }
//  }
//};
