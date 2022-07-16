import 'package:flutter/material.dart';
class Exp extends StatefulWidget {
  const Exp({Key? key}) : super(key: key);

  @override
  State<Exp> createState() => _ExpState();
}

class _ExpState extends State<Exp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // Linear Gradient Border
            Container(
              width: 220,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.purple.shade900,
                        Colors.purple.shade100,
                      ])),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.white,
                alignment: Alignment.center,
                child: const Text('Linear Gradient'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Sweep Gradient Border
            Container(
              width: 320,
              height: 220,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  gradient: SweepGradient(
                    colors: [
                      Colors.red,
                      Colors.yellow,
                      Colors.orange,
                      Colors.redAccent
                    ],
                    tileMode: TileMode.mirror,
                  )),
              child: Container(
                width: 300,
                height: 200,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text('Sweep Gradient'),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
