import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final arguments;

  Search(this.arguments);

  @override
  _Search createState() => _Search(arguments['id']);
}

class _Search extends State<Search> {
  String id;

  _Search(this.id);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "第二个页面 search",
      home: Scaffold(
        appBar: AppBar(
          title: Text("search"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: Column(
          children: <Widget>[
            Text("${id}"),
          ],
        ),
      ),
    );
  }
}
