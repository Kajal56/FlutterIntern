import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioPlayClass extends StatelessWidget {
  const AudioPlayClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LexRes'),
      ),

      body:Center( child: Text("Audio Playing Page"),),
      drawer: Drawer(),
    );;
  }
}
