import 'package:flutter/material.dart';
import 'package:ouath/screens/LoginScreen.dart';
import 'package:ouath/screens/MainScreen.dart';
import 'package:ouath/screens/SplashScreen.dart'; 

void main() => runApp(( MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen()
      },
    );
  }
}


