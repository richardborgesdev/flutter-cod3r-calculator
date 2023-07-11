import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
