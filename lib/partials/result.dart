import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text(
              "Kelvin",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '_kelvin',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              "Reamor",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '_reamor',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              "Fahrenheit",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '_fahrenheit',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
