import 'package:flutter/material.dart';
import 'package:mulai/src/config/navigation.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigations(),
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Text('Ini Dashboard'),
      )
    );
  }
}
