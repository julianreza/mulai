import 'package:flutter/material.dart';
import 'package:mulai/src/config/navigation.dart';

class Fizzbuzz extends StatefulWidget {
  @override
  _FizzbuzzState createState() => _FizzbuzzState();
}

class _FizzbuzzState extends State<Fizzbuzz> {
  int _x = 0;

  _check(int number) {
    String _t = '';
    number % 15 == 0
        ? _t = 'Fizzbuzz'
        : number % 3 == 0
            ? _t = 'Fizz'
            : number % 5 == 0 ? _t = 'Buzz' : _t = 'Not Fizzbuzz';

    return number.toString() + ': is ' + _t;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigations(),
      appBar: AppBar(title: Text('Fizzbuzz')),
      body: Center(
        child: Text(_check(_x)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _x++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
