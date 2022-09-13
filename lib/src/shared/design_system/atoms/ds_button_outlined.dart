import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:rarguile/src/shared/constants/styles.dart';

class DsOutlinedButton extends StatelessWidget {
  const DsOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.textStyle,
    this.backGroundColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final String label;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            backgroundColor: backGroundColor ?? primaryColor,
            fixedSize: const Size(290, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: const BorderSide(width: 1, color: primaryColor)),
        child: Text(
          label,
          style: textStyle ??
              h6Primary.copyWith(
                color: whiteColor,
              ),
        ),
      ),
    );
  }
}
