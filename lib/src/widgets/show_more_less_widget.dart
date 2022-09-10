import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:readmore/readmore.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key, required this.finalText});

  final String finalText;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      widget.finalText,
      trimLines: 2,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' Ver Mais',
      trimExpandedText: ' Ver Menos',
      lessStyle: inputBoldPrimary,
      moreStyle: inputBoldPrimary,
      textAlign: TextAlign.justify,
    );
  }
}
