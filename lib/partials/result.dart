import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    Key? key,
    required this.kelvin,
    required this.fahrenheit,
    required this.reamur,
  }) : super(key: key);

  final double kelvin;
  final double fahrenheit;
  final double reamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text(
              "Kelvin",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$kelvin',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              "Fahrenheit",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$fahrenheit',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              "Reamur",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$reamur',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        )
      ],
    );
  }
}
