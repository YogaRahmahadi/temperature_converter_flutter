import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'partials/input.dart';
import 'partials/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myInput = TextEditingController();

  double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;
  double _fahrenheit = 0;

  tempConvert() {
    setState(() {
      _inputUser = double.parse(myInput.text);
      _kelvin = 4 / 5 * _inputUser;
      _reamor = 9 / 5 * _inputUser + 32;
      _fahrenheit = _inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Temperature Converter"),
          ),
          body: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Input(myInput: myInput),
                const Result(),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: tempConvert(),
                    child: const Text("Convert"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
