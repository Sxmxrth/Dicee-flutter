// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  var val = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                val = Random().nextInt(5);
                print("Left button pressed");
              },
              child: Image.asset("images/dice${val + 1}.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Right button pressed");
                val = Random().nextInt(6);
              },
              child: Image.asset("images/dice${val + 1}.png"),
            ),
          )
        ],
      ),
    );
  }
}
