import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lex_res/design.dart';
import 'package:lex_res/icons/lex_res_icons.dart';

import 'package:lex_res/widgets/BoxWidgets.dart';
import 'package:lex_res/widgets/filter_form.dart';
import 'package:lex_res/widgets/scrollable_class.dart';

import 'package:lex_res/widgets/searchbywidget.dart';

import '../widgets/filtered.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  var audiocategory=["Trending now","Latest","Last weeks", "Frequently head","Select" ];
  String sel_audcat="Select";

  //---------The navigation bar stuff
  String username="Kajal";
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //---------The navigation bar stuff ends





  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(222, 240, 240, 1.0),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // backgroundColor: Color(0xffeefeff),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // title: Text('Lex Res'),
          backgroundColor: Colors.white,
          // title:
          // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Image.asset('assets/images/homepage.jpeg',
          //       fit: BoxFit.contain, height: 32),
          // ]),
          actions: <Widget>[


            IconButton(
              icon: Icon(
                Icons.search,

                color: Color.fromRGBO(222, 240, 240, 1.0),
              ),

              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Color.fromRGBO(222, 240, 240, 1.0),
              ),

              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                // color: Colors.white,
                color: Color.fromRGBO(222, 240, 240, 1.0),
              ),

              onPressed: () {
                // do something
              },
            ),
            // IconButton(
            //   icon: Icon(
            //     LexRes.topbar_icon_search,
            //     // color: Colors.white,
            //     color: Color.fromRGBO(222, 240, 240, 1.0),
            //   ),

            //   onPressed: () {
            //     // do something
            //   },
            // )
          ],
        ),




        body: Container(
          child:
          SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text('                Welcome '+username+','+'\n What would you like to do ?',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'gfont',
                        color: colorpurple,
                        // fontFamilyFallback: '',

                        fontSize: 15.0,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),


                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.purple,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/filterform');
                      },
                    ),
                    Text('REFINE ',
                      style: TextStyle(
                          color: colorgreendark,
                          fontSize: 12.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),
                    Text('YOUR SEARCH',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),

                  ],
                ),


                FilterForm(),



                SizedBox(
                  height: 50,
                ),

                Row(
                  children: [
                    Icon(
                      Icons.headset
                    ),
                    Text('Listen To')
                  ],
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  width: 340,
                  child: DropdownButton(
                    items: audiocategory.map((e) {
                      return DropdownMenuItem(
                        child: Text(
                          e,
                          // style: TextStyle(color: Colors.yellowAccent),
                        ),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (String? newaud_selected) {
                      print('someone tried to select');
                      print(newaud_selected);
                      // print(value);
                      setState(() {
                        this.sel_audcat = newaud_selected!;
                      });
                    },
                    value: sel_audcat,
                  ),
                ),

                Row(
                  children: [
                    Icon(
                      Icons.local_fire_department_outlined,
                      color: Colors.purple,
                    ),
                    Text('Follow ',
                      style: TextStyle(
                          color: colorgreendark,
                          fontSize: 12.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),
                    Text('trending cases',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),

                  ],
                ),
                //---------------------New Widget---------------------
                Container(
                  width: 300,
                  height: 140,
                  child: ScrollableWidget(

                  ),
                ),
                //-----------New Widget-------------
                // MusicApp(),


















              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,

                ),
                label: 'Home',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  color: Colors.grey,

                ),
                label: 'For You',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.playlist_add_outlined,
                  color: Colors.grey,
                ),
                label: 'Section',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions,
                  color: Colors.grey,
                ),
                label: 'Subscription',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_add_check_rounded,
                  color: Colors.grey,
                ),
                label: 'Library',
                backgroundColor: Colors.white
            )
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: colorgreendark,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5,
        ),
        //The navigation implementaion starts;
        //The navigation implementaion endl;



      ),
    );
  }
}
