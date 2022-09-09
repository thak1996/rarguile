import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text_field.dart';

class InputComment extends StatelessWidget {
  InputComment({super.key, required this.hintText});

  final String hintText;

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 3, right: 20),
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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
