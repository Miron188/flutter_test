import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _random = Random();
  Color _color = Colors.green;

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                width: 150.0,
                height: 40.0,
                child: Center(
                  child: Text(
                    "Hi there!",
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 32.0, 
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
