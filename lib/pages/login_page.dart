import 'package:flutter/material.dart';
import 'package:lex_res/design.dart';
import 'package:lex_res/pages/apphome.dart';
import 'package:lex_res/pages/home_page.dart';
import 'package:lex_res/pages/register.dart';
import 'home_page.dart';
import 'homepage_datepicker.dart';
import 'apphome.dart';
import 'home_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _otp = TextEditingController();
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colorback,
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
            Text("Have not registered ? ", style: TextStyle(fontSize: 28, color: colorbutton , ),),
            Container(
              width: 150,
              child: ElevatedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterClass()));

              }, child: Text('Register Now '),
                style: ElevatedButton.styleFrom(
                  primary: colorbutton ,
                ),),
            ),

          ],

        ),
      ),
    );
  }
}

