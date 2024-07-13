import 'dart:math';

import 'package:blackjackui/card.dart';
import 'package:blackjackui/cardtemplate.dart';
import 'package:blackjackui/suit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Cardtemplate(
                    color: Colors.black,
                    number: '10',
                    suit: clover(),
                  ),
                  Cardtemplate(
                    color: Colors.red,
                    number: '3',
                    suit: heart(),
                  )
                ],
              ),
              Transform.rotate(
                angle: pi / 2,
                child: MyCard(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Cardtemplate(
                    color: Colors.black,
                    number: 'Q',
                    suit: clover(),
                  ),
               getFlippingCard("A", diamond(), Colors.red)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget getFlippingCard(var number , var suit, var color){
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()..setEntry(3, 2, 0.002)..rotateY(pi * _animation.value),
      child: GestureDetector(
        onTap: (){
          if (_animationStatus == AnimationStatus.dismissed) {
            _animationController.forward();

          } else {
            _animationController.reverse();

          }
        },
        child: _animation.value >= 0.5 ? MyCard() :    Cardtemplate(
                    color: color,
                    number: number,
                    suit: suit,
                  ) ,
      ) ,
    );
  }
}
