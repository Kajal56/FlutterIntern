import 'package:flutter/material.dart';
import 'package:lex_res/cases/casesdata.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:lex_res/design.dart';
import 'package:lex_res/widgets/filetered_scrollingPart.dart';
import 'package:lex_res/widgets/filtered_staticpart.dart';
import 'package:provider/provider.dart';
// import 'package:audioplayers/src/audio_cache.dart';
import 'package:lex_res/drawer.dart';
import 'cases_widget.dart';

class FilteredCases extends StatefulWidget {
  final String court_name;
  final String act_name;
  final String judgename;

  final String case_type;
  final String date;
  final String caseno;

  const FilteredCases({Key? key, required this.court_name, required this.caseno , required this.date, required this.case_type, required this.act_name, required this.judgename}) : super(key: key);
  // const FilteredCases({Key? key}) : super(key: key);

  @override
  State<FilteredCases> createState() => _FilteredCasesState();
}

class _FilteredCasesState extends State<FilteredCases> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {



    // filter.retainWhere((x){x.personA==person_A;});
    // filter.retainWhere((element) => element.caseno==  'Vivek');
    // filter.retainWhere((element) => element.personB=='Santro');
    // filter.retainWhere((element) => element.casetype==widget.case_type);
    // filter.retainWhere((element) => element.courtname== 'Punjab and Haryana High Court');
    // filter.retainWhere((element) => element.courtname== widget.court_name);
    // final dummyList = filter;




    //   final dummyList=   LawCases.cases.where((x)=>x.courtname=='BHC');
    return Scaffold(
      appBar: AppBar(
        title: Text('LexRes'),
      ),



      body: SingleChildScrollView(
        child: Column(
          children: [
            FilteredStaticPart(court_name:widget.court_name , case_type: widget.case_type, date: widget.date, caseno: widget.caseno, judgename: widget.judgename, act_name: widget.act_name,),

            FilteredScrolling(court_name:widget.court_name , case_type: widget.case_type, date: widget.date, caseno: widget.caseno, judgename: widget.judgename, act_name: widget.act_name)
          ],
        ),
      )

      // drawer: MyDrawer(),
    );
  }
}


