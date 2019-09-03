import 'package:flutter/material.dart';
import 'package:mulai/src/config/routes.dart';
import 'package:mulai/src/views/login.dart';

void main() => runApp(Mulai());

class Mulai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      onGenerateRoute: Routes.generateRoute,
    );
  }
}