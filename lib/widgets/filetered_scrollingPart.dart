import 'package:flutter/material.dart';
import 'package:lex_res/cases/casesdata.dart';

import 'cases_widget.dart';
// import '';

class FilteredScrolling extends StatefulWidget {
  final String court_name;
  final String act_name;
  final String judgename;
  final String case_type;
  final String date;
  final String caseno;
  const FilteredScrolling({Key? key, required this.court_name, required this.act_name, required this.judgename, required this.case_type, required this.date, required this.caseno}) : super(key: key);

  @override
  State<FilteredScrolling> createState() => _FilteredScrollingState();
}

class _FilteredScrollingState extends State<FilteredScrolling> {
  @override
  Widget build(BuildContext context) {
    List<LawCase> filter = [];
    filter.addAll(LawCases.cases);


    print(filter.length);

    if(widget.act_name!=null){
      // filter.retainWhere((element) => element.actname==widget.act_name);
      print('Act name filteration');
      print(widget.act_name);
      print(filter.length);
    }
    if(widget.case_type!='Select Case Type'){
      filter.retainWhere((element) => element.casetype==widget.case_type);
      print(widget.case_type);
      print(filter.length);
    }

    if(widget.caseno!=null){
      // str= str+ " belonging to "+ widget.case_type;
      // filter.retainWhere((element) => element.caseno==widget.caseno);
      print('Case no. filteration');
      print(filter.length);
    }
    if(widget.court_name!="Select a court"){
      filter.retainWhere((element) => element.courtname==widget.court_name);
      print('Court name filteration');
      print(filter.length);
    }

    if(widget.judgename!=null){
      // filter.retainWhere((element) => element.judgename==widget.judgename);
      print('Judge name filteration');
      print(filter.length);
    }

    if(widget.date!="Select Dates"){
      print('Date filteration in progress');
      print(filter.length);
    }

    print('Finally, no of elements in filter : ');
    print(filter.length);


    final dummyList= filter;
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

        height: 480,
        width: 350,
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
  }
}


//
