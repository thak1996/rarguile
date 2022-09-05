import 'package:flutter/material.dart';

class DsText extends StatelessWidget {
  const DsText({required this.text, required this.style, super.key});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
