// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rarguile/src/shared/app_colors.dart';

class DsTextField extends StatelessWidget {
  const DsTextField({
    Key? key,
    required this.controller,
    this.labelText,
    required this.hintText,
    this.minLines,
    this.maxLines,
    required this.autofocus,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final String? labelText;
  final String hintText;
  final int? minLines;
  final int? maxLines;
  final bool autofocus;
  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          suffixIcon: IconButton(
            icon: icon,
            color: azulOceano,
            onPressed: onPressed,
          ),
          labelText: labelText,
          hintText: hintText,
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: azulOceano, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: strokeDisable, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: azulVioleta, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        style: const TextStyle(color: primaryColor),
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        autofocus: autofocus,
        // maxLengthEnforcement: MaxLengthEnforcement.enforced,
      ),
    );
  }
}
