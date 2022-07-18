import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lex_res/design.dart';

class FilteredStaticPart extends StatefulWidget {
  final String court_name;
  final String act_name;
  final String judgename;
  final String case_type;
  final String date;
  final String caseno;
  const FilteredStaticPart({Key? key, required this.court_name, required this.case_type, required this.date, required this.caseno, required this.act_name, required this.judgename}) : super(key: key);

  @override
  State<FilteredStaticPart> createState() => _FilteredStaticPartState();
}

class _FilteredStaticPartState extends State<FilteredStaticPart> {
  @override
  Widget build(BuildContext context) {
    String str="Judgement";
    if(widget.act_name!=null){
      str= str+ ' under '+ widget.act_name;
    }
    if(widget.case_type!='Select Case Type'){
      str= str+ " belonging to "+ widget.case_type;
    }
    if(widget.court_name!="Select a court"){
      str= str+ " from "+ widget.court_name;
    }

    if(widget.judgename!=null){
      str= str+ " by "+ widget.judgename;
    }
    if(widget.caseno!=null){
      str= str+ " having case no "+ widget.caseno;
    }
    if(widget.date!="Select Dates"){
      str= str+ " from "+ widget.date;
    }

    return Container(

      decoration: BoxDecoration(
        // border: Bor,
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                // Colors.yellowAccent,
                colorgreendark,
                colorgreenlight
              ])),

      height: 200,
      width: 500,


      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
            // str,
          'Judgement',
          // 'Judgement under '+ widget.act_name+" belonging to "+ widget.case_type+" from "+ widget.court_name+ " by "+ widget.judgename+" having case no "+ widget.caseno+" from "+ widget.date,
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),


    );
  }
}
