import 'package:flutter/material.dart';
import 'package:passing_data/ToDoDetail.dart';
import 'package:passing_data/Todo.dart';
import 'package:passing_data/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  var court_list= ["Allahabad High Court","Andhra Pradesh High Court","Bombay High Court","Calcutta High Court	","Chhattisgarh High Court","Delhi High Court[","Gauhati High Court","Gujarat High Court","High Court of Jammu and Kashmir and Ladakh","Jharkhand High Court","Karnataka High Court","Kerala High Court","Madhya Pradesh High Court","Madras High Court","Manipur High Court","Meghalaya High Court","Orissa High Court","Patna High Court","Punjab and Haryana High Court","Rajasthan High Court","Sikkim High Court","Supreme Court","Telangana High Court","Tripura High Court","Uttarakhand High Court"];
  var casetype_list=[ 'Undergrad/Postgrad/PhD Law Student','Lawyer/Advocate/Counsel/Solicitor','Judge,Law Firm/Department','Business Owner/Other Professional','Others'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Phone No'
                ),
              ),
            ),
            ElevatedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(name: _name.text, email: _email.text, phone: _phone.text)));

            }, child: Text('Go Next Page'))
          ],
        ),
      ),
    );
  }
}