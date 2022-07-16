import 'package:flutter/material.dart';
import 'package:lex_res/icons/lex_res_icons.dart';
import 'package:lex_res/widgets/experiment_page.dart';

class BoxWidget extends StatefulWidget {
  final String judgementtype;
  final String nextpagepath;
  const BoxWidget({Key? key, required this.judgementtype, required this.nextpagepath}) : super(key: key);

  @override
  State<BoxWidget> createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: double.infinity,
      width: 145.0,
      height: 85.0,
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromRGBO(7, 155, 155, 1.0),Color.fromRGBO(143, 201, 201, 1.0), ])),
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Text(widget.judgementtype+'\nJudgements',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 15.0,
                  height: 1.4,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
    //       Align(
    //         child: IconButton(
    //             icon: Icon(
    //               Icons.play_circle_outline,
    //               color: Colors.white,
    //             ),
    //             alignment: Alignment.bottomRight,
    //
    // onPressed: () {
    // Navigator.pushNamed(context, '/all');
    // },
    // ),
    //       )
          Expanded(
              flex: 6,
              child:Row(
                children: [
                  Expanded(flex:4, child: SizedBox(width: 20,)),
                  Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ), onPressed: () {
                          Navigator.pushNamed(context, '/all');
                      },
                      )
                  )
                ],
              ) )
        ],
      ),
    );

  }
}
