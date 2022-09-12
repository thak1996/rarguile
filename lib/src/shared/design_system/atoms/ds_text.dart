import 'package:flutter/material.dart';

class DsText extends StatelessWidget {
  const DsText({
    required this.text,
    required this.style,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    super.key,
  });

  final String text;
  final TextStyle style;
  final int? maxLines;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: style,
      maxLines: maxLines,
    );
  }
}
