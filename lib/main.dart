import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftButton = 1;
  var rightButton = 1;
  void rbutton() {
    leftButton = Random().nextInt(6) + 1;
    rightButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                rbutton();
              });
            },
            child: Image.asset('images/dice$leftButton.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rbutton();
                });
              },
              child: Image.asset('images/dice$rightButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
