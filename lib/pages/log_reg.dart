import 'package:flutter/material.dart';

import 'package:lex_res/design.dart';
import 'package:lex_res/pages/register.dart';

import 'apphome.dart';
import 'home_page.dart';
import 'login_page.dart';

class LogReg extends StatefulWidget {
  const LogReg({Key? key}) : super(key: key);

  @override
  State<LogReg> createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> {
  TextEditingController _name = TextEditingController();
  TextEditingController _otp = TextEditingController();
  TextEditingController _phone = TextEditingController();

  //Registrations variables
  // TextEditingController _name = TextEditingController();
  // TextEditingController _otp = TextEditingController();
  // TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _occupation = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _gender = TextEditingController();
  // var professionlist = [
  //   'Select your profession',
  //   'Undergrad/Postgrad/PhD Law Student',
  //   'Lawyer/Advocate/Counsel/Solicitor',
  //   'Judge','Law Firm/Department',
  //   'Business Owner/Other Professional',
  //   'Others'
  // ];
  var professionlist = [
    'Select your profession',
    'Law Proffessional',
    'Student',
    'Other'
  ];
  var genderlist=['Male', 'Female','Select gender','Prefer not to say'];
  String sel_gender='Select gender';
  String sel_profession = 'Select your profession';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorbutton,
        title: Text('LexRes'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: TextField(
                //     controller: _name,
                //     decoration: InputDecoration(
                //         border: OutlineInputBorder(),
                //         labelText: 'Name'
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number'
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: ElevatedButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                  }, child: Text('Generate OTP'),
                    style: ElevatedButton.styleFrom(
                      primary: colorbutton ,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _otp,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'OTP'
                    ),
                  ),
                ),
                Container(
                  width: 150,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: colorbutton ,
                      ),
                      onPressed: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppHome()));
                      }, child: Text('Login')),
                ),
                SizedBox(
                  height: 40,
                ),

                Text("Have not registered ? ", style: TextStyle(fontSize: 28, color: colorbutton , ),),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'EMail (Optional)'
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  child: DropdownButton(
                    items: professionlist.map((e) {
                      return DropdownMenuItem(
                        child: Text(
                          e,
                          // style: TextStyle(color: Colors.yellowAccent),
                        ),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (String? newprof_selected) {
                      print('someone tried to select');
                      print(newprof_selected);
                      // print(value);
                      setState(() {
                        this.sel_profession = newprof_selected!;
                      });
                    },
                    value: sel_profession,
                  ),
                ),

                //---------------------Gender dropdown starts---------------
                // Container(
                //   width: 340,
                //   child: DropdownButton(
                //     items: genderlist.map((e) {
                //       return DropdownMenuItem(
                //         child: Text(
                //           e,
                //           // style: TextStyle(color: Colors.yellowAccent),
                //         ),
                //         value: e,
                //       );
                //     }).toList(),
                //     onChanged: (String? newgen_selected) {
                //       print('someone tried to select');
                //       print(newgen_selected);
                //       // print(value);
                //       setState(() {
                //         this.sel_gender = newgen_selected!;
                //       });
                //     },
                //     value: sel_gender,
                //   ),
                // ),

                //-----------------Gender Dropdown ends-----------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _city,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'City'
                    ),
                  ),
                ),

                //-----------------------------------------------------Generate OTP Button starts----------------------------------------------


                // Container(
                //   width: 150,
                //   child: ElevatedButton(onPressed: (){
                //
                //     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                //
                //   }, child: Text('Generate OTP'),
                //     style: ElevatedButton.styleFrom(
                //       primary: colorbutton ,
                //     ),),
                // ),

                //-----------------------------------------------------Generate OTP Button ends----------------------------------------------


                //---------------------------------------------------OTP TExtField Starts-----------------------
                //
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: TextField(
                //     controller: _otp,
                //     decoration: InputDecoration(
                //         border: OutlineInputBorder(),
                //         labelText: 'OTP'
                //     ),
                //   ),
                // ),

                //-------------------------------------------OTP field ends---------------------------------

                Container(
                  width: 150,
                  child: ElevatedButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                  }, child: Text('Register'),
                    style: ElevatedButton.styleFrom(
                      primary: colorbutton ,
                    ),),
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}

