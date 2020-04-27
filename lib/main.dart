import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFAce() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDiceFAce();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDiceFAce();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))),
        ],
      ),
    );
  }
}

//need a module designing the user interface
// app will have two images
//overflow: most useful widget that is expanded class to fix the pixel of the image
// or layout of the image
// copy and paste expanded widget in the Row
//add flex in the expanded widget to increase or decrease the space occupy by each dice
//if both the dice need same space from the screen no need to flex
//by default each setting gets flex of 1
// go to widget class-- imageclass- assets to see how to construct image easily
//add padding to make the dice separate from each other
// stateless widget we cannot change anything should be used only when you dont have
//to change anything in the app structure but
// stateful widget is used when any changes is need to be made in an app structure
