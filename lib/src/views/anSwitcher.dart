import 'package:flutter/material.dart';
import 'package:mulai/src/config/navigation.dart';

class AnSwitcher extends StatefulWidget {
  @override
  _AnSwitcherState createState() => _AnSwitcherState();
}

class _AnSwitcherState extends State<AnSwitcher> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigations(),
      appBar: AppBar(title: Text('Animasi Switcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
            ),
            Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.red[200],
              value: isON,
              onChanged: (newValue) {
                isON = newValue;
                setState(() {
                  isON
                      ? myWidget = Container(
                          key: ValueKey(1),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.green),
                        )
                      : myWidget = Container(
                          key: ValueKey(2),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.red),
                        );
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
