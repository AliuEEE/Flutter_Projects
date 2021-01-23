import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.red,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int buttonNumber = 1;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: (){
              setState(() {
                buttonNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$buttonNumber.png'),
          ),
        ),
      ],
    );
  }
}
