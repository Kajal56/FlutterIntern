import 'package:flutter/material.dart';
class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover)),
      padding: EdgeInsets.only(top: 50.0),
      child: Text(
        "Cute Cats of\nEducity",
        style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 38.0,
            height: 1.4,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }
}


