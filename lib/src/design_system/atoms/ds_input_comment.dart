import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text_field.dart';

class InputComment extends StatelessWidget {
  InputComment({super.key, required this.hintText});

  final String hintText;

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
      child: DsTextField(
        icon: const Icon(Icons.send),
        onPressed: () {},
        controller: textController,
        hintText: hintText,
        autofocus: true,
      ),
    );
  }
}
