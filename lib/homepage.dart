import 'package:blackjackui/card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 MyCard(),
                 MyCard()
              ],
            ),
            MyCard(),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 MyCard(),
                 MyCard()
              ],
            ),
            
          ],

        ),),

      ),
    );
  }
}
