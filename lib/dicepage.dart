import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 2;

  void changedice() {
    setState(() {
      rightdice = Random().nextInt(6) + 1;
      leftdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              changedice();
              //  print('left dice');
            },
            child: Image.asset('images/dice$leftdice.png'),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              changedice();
              // print('right dice');
            },
            child: Image.asset('images/dice$rightdice.png'),
          )),
        ],
      ),
    );
  }
}
