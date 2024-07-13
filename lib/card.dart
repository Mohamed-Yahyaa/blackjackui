import 'package:flutter/material.dart';



class MyCard extends StatelessWidget {

  final suit;
  final color;
  final number;

  MyCard({this.suit,this.color,this.number});

  @override
  Widget build(BuildContext context) {
   return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
       child: Container( 
  color: Colors.white,
              height: 160,
              width:105,
              child: Image.asset("lib/images/jack.jpg"),
       ),
             )
            );
   
  }
}