import 'package:dice_game/dicepage.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.greenAccent[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}
