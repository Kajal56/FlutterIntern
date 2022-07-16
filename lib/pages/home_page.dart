import 'package:flutter/material.dart';
import 'package:lex_res/drawer.dart';

import '../cases/casesdata.dart';
import '../widgets/cases_widget.dart';
// import 'package:lex_res/cases/casesdata.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => LawCases.cases[0]);
    final dummyList= LawCases.cases;
/*
    List<LawCase> filter = [];
    filter.addAll(LawCases.cases);

    filter.retainWhere((x)=>x.courtname=='BHC');
    final dummyList = filter;


 */
    //   final dummyList=   LawCases.cases.where((x)=>x.courtname=='BHC');
    return Scaffold(
      appBar: AppBar(
        title: Text('LexRes'),
      ),

      body: ListView.builder(
        // itemCount: LawCases.cases.length,
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return CasesWidget(lawcase :dummyList[index]);
        },
      ),

      // drawer: MyDrawer(),
    );
  }
}
