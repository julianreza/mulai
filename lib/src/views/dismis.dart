import 'package:flutter/material.dart';
import 'package:mulai/src/config/navigation.dart';

class Dismis extends StatefulWidget {
  Dismis({Key key}) : super(key: key);
  @override
  _DismisState createState() => _DismisState();
}

class _DismisState extends State<Dismis> {
  final items = List<String>.generate(20, (i) => "Nomor Ke ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigations(),
      appBar: AppBar(title: Text('Dismissible')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            background: Container(
              color: Colors.green,
              child: Icon(Icons.check),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Icon(Icons.cancel),
            ),
            child: Container(
              child: ListTile(
                title: Text('$item'),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text('$item dismissed')));
            },
          );
        },
      ),
    );
  }
}
