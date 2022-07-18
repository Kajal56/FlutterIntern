import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cases_widget.dart';
import 'package:lex_res/cases/casesdata.dart';

class ScrollableWidget extends StatefulWidget {
  const ScrollableWidget({Key? key}) : super(key: key);

  @override
  State<ScrollableWidget> createState() => _ScrollableWidgetState();
}

class _ScrollableWidgetState extends State<ScrollableWidget> {
  @override
  final dummyList= LawCases.cases;
  Widget build(BuildContext context) {

    return Container(
      height: 500,
      width: 500,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // border: Bor,
        borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.purple.shade900,
                Colors.purple.shade100,
              ])),
        child: Container(

          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),

          height: 130,
            width: 290,
          child:  ListView.builder(
            // itemCount: LawCases.cases.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index){
              return CasesWidget(lawcase :dummyList[index]);
            },
          ),
        ),
      // child: ,
      // child: Container(
      //   width: 200,
      //   height: 100,
      //   color: Colors.white,
      //   alignment: Alignment.center,
      //   child: const Text('Linear Gradient'),
      // ),
    );



    // return Container(
    //
    //
    //   child: Container(
    //
    //     height: 120,
    //       width: 300,
    //     child:  ListView.builder(
    //       // itemCount: LawCases.cases.length,
    //       itemCount: dummyList.length,
    //       itemBuilder: (context, index){
    //         return CasesWidget(lawcase :dummyList[index]);
    //       },
    //     ),
    //   ),
    // );
  }
}


