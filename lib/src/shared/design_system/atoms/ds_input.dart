import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';

class DsInputField extends StatelessWidget {
  const DsInputField({
    super.key,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressed,
    this.validator,
    this.onSubmitted,
    this.controller
  });

  final TextInputType keyboardType;
  final String labelText;
  final String hintText;
  final Icon? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onPressed;
  final dynamic validator;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(suffixIcon),
          ),
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
        validator: validator,
        //Password
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        controller: controller,
      ),
    );
  }
}
