import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, 'dashboard');
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}