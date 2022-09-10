import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class DsInputFieldPass extends StatelessWidget {
  const DsInputFieldPass({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    required this.suffixIcon,
    this.onPressed,
    this.validator,
    this.obscureText = false,
    required this.onSaved,
    this.onSubmitted,
    this.icon,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String hintText;
  final Icon? prefixIcon;
  final GestureDetector suffixIcon;
  final VoidCallback? onPressed;
  final dynamic validator;
  final bool obscureText;
  final void Function(String?) onSaved;
  final Function(String)? onSubmitted;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: strokeDisable, width: 1),
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
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: redAlert, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: redAlert, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        errorStyle: const TextStyle(color: redAlert),
        hintStyle: const TextStyle(color: azulMaximum),
        labelStyle: const TextStyle(color: primaryColor),
        filled: true,
        fillColor: fillBackground,
      ),
      style: const TextStyle(color: primaryColor),
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      controller: controller,
      validator: validator,

      //Password
      obscureText: obscureText,
      onSaved: onSaved,
      onFieldSubmitted: onSubmitted,
    );
  }
}
