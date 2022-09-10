import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text_field.dart';

class InputComment extends StatelessWidget {
    InputComment({super.key, required this.hintText, required this.onPressed});

  final String hintText;
  final VoidCallback onPressed;

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: DsTextField(
        icon: const Icon(Icons.send),
        onPressed: onPressed,
        controller: textController,
        hintText: hintText,
      ),
    );
  }
}
