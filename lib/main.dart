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
        //or with fromRGBO with fourth arg as _random.nextDouble(),
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
                      // а у текста появился виджет, который его стилизует
                      color: Colors.black, // задаем ему цвет текста
                      fontSize: 32.0, // и размер шрифта
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
