import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool big;
  final Color color;
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  const Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
  });

  const Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
  });

  const Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(this.color),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
