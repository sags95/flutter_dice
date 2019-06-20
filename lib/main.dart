import 'package:flutter/material.dart';
import 'dart:math';

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
  int leftDieNum = 5;
  int rightDieNum = 2;

   rollDie(){
     setState(() {
       leftDieNum = Random().nextInt(6) + 1;
       rightDieNum = Random().nextInt(6) + 1;
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

                  rollDie();
                  print('Left die is: $leftDieNum');

              },
              child: Image.asset('images/dice$leftDieNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {

                  rollDie();
                  print("Right die is: $rightDieNum");

              },
              child: Image.asset('images/dice$rightDieNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
