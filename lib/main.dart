import 'package:flutter/material.dart';
import 'partials/input.dart';
import 'partials/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myInput = TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double fahrenheit = 0;
  double reamur = 0;

  tempConvert() {
    //set state
    setState(() {
      inputUser = double.parse(myInput.text);
      reamur = 4 / 5 * inputUser;
      fahrenheit = 9 / 5 * inputUser + 32;
      kelvin = inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                  InputNumber(myInput: myInput),
                  ResultView(
                      kelvin: kelvin, fahrenheit: fahrenheit, reamur: reamur),
                  Container(
                    margin: const EdgeInsets.all(8),
                    width: 200,
                    height: 50,
                    child: TextButton(
                      onPressed: tempConvert,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Convert",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
