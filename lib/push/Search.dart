import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Map arguments;

  Search({this.arguments});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Text("aaaaa${arguments['id']}"),
    );
  }
}
