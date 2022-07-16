import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'package:lex_res/design.dart';

class RegisterClass extends StatefulWidget {
  const RegisterClass({Key? key}) : super(key: key);

  @override
  State<RegisterClass> createState() => _RegisterClassState();
}

class _RegisterClassState extends State<RegisterClass> {
  TextEditingController _name = TextEditingController();
  TextEditingController _otp = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _occupation = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _gender = TextEditingController();
  var professionlist = [
    'Select your profession',
    'Undergrad/Postgrad/PhD Law Student',
    'Lawyer/Advocate/Counsel/Solicitor',
    'Judge','Law Firm/Department',
    'Business Owner/Other Professional',
    'Others'
  ];
  var genderlist=['Male', 'Female','Select gender','Prefer not to say'];
  String sel_gender='Select gender';
  String sel_profession = 'Select your profession';
  // TextEditingController _otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colorback,
      // backgroundColor: headingcolor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Container(
            width: 340,
            child: DropdownButton(
              items: genderlist.map((e) {
                return DropdownMenuItem(
                  child: Text(
                    e,
                    // style: TextStyle(color: Colors.yellowAccent),
                  ),
                  value: e,
                );
              }).toList(),
              onChanged: (String? newgen_selected) {
                print('someone tried to select');
                print(newgen_selected);
                // print(value);
                setState(() {
                  this.sel_gender = newgen_selected!;
                });
              },
              value: sel_gender,
            ),
          ),
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'EMail'
                  ),
                ),
              ),

              Container(
                width: 150,
                child: ElevatedButton(onPressed: (){

                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                }, child: Text('Generate OTP'),
                  style: ElevatedButton.styleFrom(
                    primary: colorbutton ,
                  ),),
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
                child: ElevatedButton(onPressed: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    primary: colorbutton ,
                  ),),
              ),
              // Text("Have not registered ? ", style: TextStyle(fontSize: 28, color: Colors.white , ),),
              // ElevatedButton(onPressed: (){
              //
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterClass()));
              //
              // }, child: Text('Register Now ')),

            ],

          ),
        ),
      ),
    );
  }
}