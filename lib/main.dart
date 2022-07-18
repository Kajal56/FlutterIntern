import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lex_res/pages/apphome.dart';
import 'package:lex_res/widgets/experiment_page.dart';
import 'package:lex_res/widgets/filtered.dart';
import 'package:lex_res/widgets/filterformpassinglist.dart';
import 'package:lex_res/widgets/widget_spe.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
// import 'pages/audio_play.dart';
import 'pages/search_res.dart';
import 'pages/register.dart';
// import '';
import 'widgets/filter_form.dart';
import 'widgets/dropdown.dart';
import 'pages/log_reg.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(222, 240, 240, 1.0),

      // home: HomePage(),

      themeMode: ThemeMode.dark,

      darkTheme: ThemeData(
          brightness: Brightness.light
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home' : (context)=> DropDownExample(),
        '/all':(context)=>HomePage(),
        '/filterform':(context)=>FilterForm(),
        '/' : (context)=> LogReg(),

        // '/':(context)=>Exp(),
        '/login' : (context) => LoginPage(),
        '/reg':(context)=>RegisterClass(),
        // '/audio':(context)=>AudioPlayClass(),
        'searchres':(context)=>SearchRes(),
        '/alljudgements': (context)=>HomePage()
        // '/moreInfo' : (context ) => SpeWidget(lawcase: lawcase),
      },
    );
  }
}
