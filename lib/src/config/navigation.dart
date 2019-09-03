import 'package:flutter/material.dart';

class Navigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListNav();
  }
}

class ListNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text('Dashboard'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'dashboard');
            },
          ),
          ListTile(
            title: Text('Hero'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'hero');
            },
          ),
          ListTile(
            title: Text('Padding'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'padding');
            },
          ),
          ListTile(
            title: Text('Switcher'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'switcher');
            },
          ),
          ListTile(
            title: Text('Dismis'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'dismis');
            },
          ),
          ListTile(
            title: Text('Fizzbuzz'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'fizzbuzz');
            },
          ),
        ],
      ),
    );
  }
}
