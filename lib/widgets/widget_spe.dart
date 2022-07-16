import 'package:flutter/material.dart';
import 'package:lex_res/cases/casesdata.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/src/audio_cache.dart';


class SpeWidget extends StatefulWidget {
  final LawCase lawCase;

  const SpeWidget({Key? key, required this.lawCase}) : super(key: key);

  @override
  State<SpeWidget> createState() => _SpeWidgetState();
}

class _SpeWidgetState extends State<SpeWidget> {
    // TODO: implement
  var url = 'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4';



  @override
  Widget build(BuildContext context) {


    // var lawcase=LawCases.cases[data];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lawCase.personA+ " vs "+ widget.lawCase.personB),

      ),
      body: Column(
        children: [
          Text(widget.lawCase.personA),
          Text(widget.lawCase.personB),
          Text(widget.lawCase.courtname),
          Text(widget.lawCase.casetype),
          Text(widget.lawCase.id.toString()),
          Text(widget.lawCase.caseno.toString()),
          FlatButton(onPressed: (){}, child: Text('Play audio')),
          FlatButton(onPressed: (){}, child: Text('Pause audio')),
          FlatButton(onPressed: (){}, child: Text('Stop audio')),

        ],
      ),
    );
  }
}
