import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('1'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('2'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('3'),
          ),
        ],
      ),
    );
  }
}
