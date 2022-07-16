import 'package:flutter/material.dart';
import 'package:lex_res/cases/casesdata.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:lex_res/drawer.dart';
import 'cases_widget.dart';

class FilteredListDisplay extends StatefulWidget {
  // final String court_name;
  // // final String person_A;
  // // final String person_B;
  // final String case_type;
  // final String date;
  // final String caseno;
  final List<LawCase> filteredcaseslist;

  const FilteredListDisplay({Key? key, required this.filteredcaseslist, }) : super(key: key);
  // const FilteredCases({Key? key}) : super(key: key);

  @override
  State<FilteredListDisplay> createState() => _FilteredListDisplayState();
}

class _FilteredListDisplayState extends State<FilteredListDisplay> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    List<LawCase> filter = [];
    filter.addAll(LawCases.cases);

    // filter.retainWhere((x){x.personA==person_A;});
    // filter.retainWhere((element) => element.caseno==  'Vivek');
    // filter.retainWhere((element) => element.personB=='Santro');
    // filter.retainWhere((element) => element.casetype==widget.case_type);
    // filter.retainWhere((element) => element.courtname== 'Punjab and Haryana High Court');
    final dummyList = filter;



    //   final dummyList=   LawCases.cases.where((x)=>x.courtname=='BHC');
    return Scaffold(
      appBar: AppBar(
        title: Text('LexRes'),
      ),

      body: ListView.builder(
        // itemCount: LawCases.cases.length,
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return CasesWidget(lawcase :widget.filteredcaseslist[index]);
        },
      ),

      drawer: MyDrawer(),
    );
  }
}


