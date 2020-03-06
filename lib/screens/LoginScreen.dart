import 'package:flutter/material.dart';
import 'package:ouath/screens/MainScreen.dart';
import 'package:ouath/services/AuthService.dart';


class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.black,
            onPressed: () async {
             var result = await AuthOktaService().authorize();
         
             if(result != null){
               Navigator.of(context).pushNamed(MainScreen.routeName);
             }
            },
            child: Text('Authorize'),
          ),
        ),
      ),
    );
  }
}
