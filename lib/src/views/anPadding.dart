import 'package:flutter/material.dart';
import 'package:mulai/src/config/navigation.dart';

class AnPadding extends StatefulWidget {
  @override
  _AnPaddingState createState() => _AnPaddingState();
}

class _AnPaddingState extends State<AnPadding> {
  double myPadding = 5;
  bool myBool = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Navigations(),
        appBar: AppBar(title: Text('Animated Padding')),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        onTap: () {
                          myBool ? setState(() {
                           myPadding = 20;
                           myBool = false; 
                          }) : setState(() {
                           myPadding = 5;
                           myBool = true; 
                          });
                        },
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
