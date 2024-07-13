import 'dart:math';


import 'package:flutter/material.dart';

class Cardtemplate extends StatelessWidget {
  final suit;
  final color;
  final number;

  Cardtemplate({this.suit, this.color, this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(5),
            color: Colors.white,
            height: 160,
            width: 105,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(number,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color)),
                  ],
                ),
                suit,
                Transform.rotate(
                  angle: pi,
                  child: Row(
                    children: [
                      Text(number,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: color)),
                    ],
                  ),
                )
              ],
            )),
          ),
        ));
  }
}
