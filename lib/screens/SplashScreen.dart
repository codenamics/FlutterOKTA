import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:ouath/Animations/Waves.dart';


class SplashScreen extends StatefulWidget {
 static const  routeName = '/splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  startTime() async {
    var _duration = Duration(seconds: 1);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  startTime2() async {
    var _duration = Duration(seconds: 8);
    return Timer(_duration, navigationPage2);
  }

  void navigationPage2() {
    Navigator.of(context).pushReplacementNamed('/search');
  }

  onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
@override
  void initState() {
   startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          onBottom(AnimatedWave(
            height: 120,
            speed: 1.0,
            color: Colors.black,
          )),
          onBottom(AnimatedWave(
              height: 140, speed: 0.9, offset: pi, color: Colors.red)),
          onBottom(AnimatedWave(
              height: 180, speed: 1.2, offset: pi / 2, color: Colors.blue)),
        ],
      ),
    );
  }
}
