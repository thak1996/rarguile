import 'package:flutter/material.dart';

class DsTextStyle extends StatelessWidget {
  const DsTextStyle({required this.text, required this.style, super.key});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
