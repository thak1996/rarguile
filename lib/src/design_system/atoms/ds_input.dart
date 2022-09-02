import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class DsInputField extends StatelessWidget {
  const DsInputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressed,
    this.validator,
    this.obscureText,
    this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String hintText;
  final Icon? prefixIcon;
  final dynamic suffixIcon;
  final VoidCallback? onPressed;
  final dynamic validator;
  final dynamic obscureText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: IconButton(
          icon: suffixIcon,
          onPressed: onPressed,
        ),
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
        labelStyle: const TextStyle(color: azulVioleta),
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
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
    );
  }
}
