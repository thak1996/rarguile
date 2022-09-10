import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:readmore/readmore.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.finalText});

  final String finalText;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      finalText,
      trimLines: 3,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Ver Mais',
      trimExpandedText: 'Ver Menos',
      lessStyle: inputBoldPrimary,
      moreStyle: inputBoldPrimary,
      textAlign: TextAlign.justify,
    );
  }
}
