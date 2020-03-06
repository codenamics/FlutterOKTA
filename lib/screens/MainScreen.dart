import 'package:flutter/material.dart';
import 'package:ouath/services/AuthService.dart';


class MainScreen extends StatelessWidget {
  static const routeName = '/main';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: RaisedButton(
          child: Text('sdf'),
          onPressed: () {
            AuthOktaService().logout(AuthOktaService.id);
         
            Navigator.of(context).pushReplacementNamed('/splash');
            
          },
        )),
      ),
    );
  }
}
