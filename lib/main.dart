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
  int leftDieNum = 5;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDieNum = 2;
                  print('Left die is: $leftDieNum');
                });
              },
                child: Image.asset('images/dice$leftDieNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print("right!");
              },
                child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
