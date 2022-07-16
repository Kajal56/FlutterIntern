import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lex_res/widgets/widget_spe.dart';
import '../cases/casesdata.dart';
import 'filtered.dart';
import 'package:flutter/cupertino.dart';
import 'package:lex_res/cases/casesdata.dart';
//
class FilterForm extends StatefulWidget {
  const FilterForm({Key? key}) : super(key: key);

  @override
  State<FilterForm> createState() => _FilterFormState();
}

class _FilterFormState extends State<FilterForm> {
  TextEditingController _personA = TextEditingController();
  TextEditingController _personB = TextEditingController();
  TextEditingController _casetype = TextEditingController();
  TextEditingController _courtname = TextEditingController();
  TextEditingController _caseno = TextEditingController();

  var court_list = [
    "Select a court",
    "Allahabad High Court",
    "Andhra Pradesh High Court",
    "Bombay High Court",
    "Calcutta High Court	",
    "Chhattisgarh High Court",
    "Delhi High Court[",
    "Gauhati High Court",
    "Gujarat High Court",
    "High Court of Jammu and Kashmir and Ladakh",
    "Jharkhand High Court",
    "Karnataka High Court",
    "Kerala High Court",
    "Madhya Pradesh High Court",
    "Madras High Court",
    "Manipur High Court",
    "Meghalaya High Court",
    "Orissa High Court",
    "Patna High Court",
    "Punjab and Haryana High Court",
    "Rajasthan High Court",
    "Sikkim High Court",
    "Supreme Court",
    "Telangana High Court",
    "Tripura High Court",
    "Uttarakhand High Court"
  ];

  var casetypelist = [ 'Select Case Type', 'Child Marriage', 'Corruption', 'Rape', 'Murder'];
  String sel_court = "Select a court";
  String court_selected = "";
  String dropdownvalue = 'Flutter';
  String sel_casetype = 'Select Case Type';
  DateTimeRange? _selectedDateRange;
  String dateselectedstart='12-03-2022';
  String dateselectedend='08-1-2022';
  String datestring="Select Dates";


  // This function will be triggered when the floating button is pressed
  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      // Rebuild the UI
      print('----------Run started--------------');
      print('The start date is : ');
      print(result.start.toString());
      print('The end date is : ');
      print(result.end.toString());
      print('----------Run end-----------------');
      setState(() {
        _selectedDateRange = result;
        dateselectedstart=result.start.toString();
        dateselectedend=result.end.toString();
        datestring= dateselectedstart.substring(0,10)+ " to "+ dateselectedend.substring(0,10);

      });
    }
    // Navigator.pushNamed(context, '/login');
  }


  @override
  Widget build(BuildContext context) {
    List<LawCase> filter = [];
    filter.addAll(LawCases.cases);

    return Scaffold(


      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50 ,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _caseno,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Enter Case No.'),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),


                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2
                            ,child: SizedBox(width: 30,)),
                        Expanded(
                          flex: 12,
                          child: DropdownButton(
                              isExpanded:true,
                            items: court_list.map((e) {
                              return DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (String? newcourtselected) {
                              setState(() {
                                this.sel_court = newcourtselected!;
                                print("The value of variable 'sel_court' is being changed to : ");
                                print(sel_court);
                              });
                            },
                            value: sel_court,

                            // value: sel_court,
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: SizedBox(width: 30,)),
                      ],
                    ),
                  ),

              SizedBox(
                height: 50,
              ),



              Row(
                children: [
                  Expanded(
                      flex: 2
                      ,child: SizedBox(width: 30,)),
                  Expanded(
                    flex: 12,
                    child: DropdownButton(
                      items: casetypelist.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      onChanged: (String? new_casetypeselected) {
                        setState(() {
                          this.sel_casetype = new_casetypeselected!;
                        });
                      },
                      value: sel_casetype,
                      // value: sel_casetype,
                    ),
                  ),
                  Expanded(
                      flex: 2
                      ,child: SizedBox(width: 30,)),
                ],

              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  width: 150,
                  child: ElevatedButton(onPressed: _show, child: Text(datestring))),
              SizedBox(
                height: 50,
              ),




              Container(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FilteredCases(court_name: _courtname.text, person_A: _personA.text, person_B: _personB.text, case_type : _casetype.text)));
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FilteredCases(
                              court_name: "SC",
                              caseno: "Kajal",
                              date: "Vivek",
                              case_type: "child marriage")));
                    },
                    child: Text('Filter')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
