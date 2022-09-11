import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class DsInputFieldPass extends StatelessWidget {
  const DsInputFieldPass({
    super.key,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    this.obscureText,
    this.suffixIconCustom,
    this.onChanged,
    this.prefixIcon,
    this.onPressed,
    this.validator,
    this.onSubmitted,
    this.icon,
  });

  final TextInputType keyboardType;
  final String labelText;
  final void Function(String)? onChanged;
  final String hintText;
  final Icon? prefixIcon;
  final VoidCallback? suffixIconCustom;
  final VoidCallback? onPressed;
  final dynamic validator;
  final bool? obscureText;
  final Function(String)? onSubmitted;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIconCustom != null
            ? InkWell(
                onTap: suffixIconCustom,
                child: Icon(
                  obscureText! ? Icons.visibility : Icons.visibility_off,
                  color: azulVioleta,
                ),
              )
            : null,
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
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
    );
  }
}
