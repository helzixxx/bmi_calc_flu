import 'package:flutter/material.dart';

const textStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class GenderWidget extends StatelessWidget {
  GenderWidget(this.icon, this.text);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
