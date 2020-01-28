import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Delete.dart';
import 'HomePage.dart';
import 'Setting.dart';

/*
* 底部选项卡
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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 2, child: Tabs()),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _index = 0;
  List list = [Delete(), HomePage(), Setting()]; //底部的几个页面
  int getIndex(int i) {
    if (i >= list.length) {
      return 0;
    }
    return i;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
//        leading: Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(
          // 会占用返回按钮
          icon: Icon(Icons.menu),
          onPressed: () {
            print('aa');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('settings');
            },
          ),
        ],
      ),
      body: list[getIndex(_index)],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.title), title: Text("首页2")),
          BottomNavigationBarItem(icon: Icon(Icons.remove), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.remove), title: Text("分类1")),
          BottomNavigationBarItem(icon: Icon(Icons.remove), title: Text("分类2")),
        ], //数组  类型是固定的 BottomNavigationBarItem
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            this._index = index;
          });
        },
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: DrawerHeader(  //侧边栏 头部组件
                    child: Text("你好"),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://user-gold-cdn.xitu.io/2017/11/27/15ffbb05174a57f8"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text("列表1"),
            ),
            ListTile(
              title: Text("列表2"),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text(' 侧边栏目2'),
      ),
    );
  }
}
