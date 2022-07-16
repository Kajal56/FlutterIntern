import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchBy extends StatefulWidget {
  const SearchBy({Key? key}) : super(key: key);

  @override
  State<SearchBy> createState() => _SearchByState();
}

class _SearchByState extends State<SearchBy> {
  var parameterlist = ['Case no','Case type', 'Court name'
  ];
  String sel_parameter ='Case no' ;
  @override

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: 300,
      height: 50,
      // color: Colors.white,

      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Text('Search by                                                              ', style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
          ),

          Expanded(
            flex: 5,
            child: Container(
              width: 300,

              child: DropdownButton(

                items: parameterlist.map((e) {
                  return DropdownMenuItem(
                    child: Text(
                      e,
                      // style: TextStyle(color: Colors.yellowAccent),
                    ),
                    value: e,
                  );
                }).toList(),
                onChanged: (String? newpara_selected) {

                  // print(value);
                  setState(() {
                    this.sel_parameter = newpara_selected!;
                  });
                },
                value: sel_parameter,
              ),
            ),
          ),
        ],
      ),
    );





    //------------------------------

      Scaffold(
      body: Container(
        width: 50.0,
        height: 50.0,
        child: Row(
          children: [
            Text('Search by'),
            DropdownButton(
              items: parameterlist.map((e) {
                return DropdownMenuItem(
                  child: Text(
                    e,
                    // style: TextStyle(color: Colors.yellowAccent),
                  ),
                  value: e,
                );
              }).toList(),
              onChanged: (String? newpara_selected) {

                // print(value);
                setState(() {
                  this.sel_parameter = newpara_selected!;
                });
              },
              value: sel_parameter,
            ),
          ],
        ),
      ),
    );
  }
}
