import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNumber extends StatelessWidget {
  const InputNumber({
    Key? key,
    required this.myInput,
  }) : super(key: key);

  final TextEditingController myInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myInput,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(
        hintText: "Input Temperature in Celcius",
      ),
    );
  }
}
