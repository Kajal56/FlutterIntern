import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchRes extends StatelessWidget {
  const SearchRes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LexRes'),
      ),

      body:Center( child: Text("List of results below"),),
      drawer: Drawer(),
    );;
  }
}
