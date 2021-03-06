import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
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
  int leftNo = 1;
 int rightNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftNo = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightNo = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
