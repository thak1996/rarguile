import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class DsElevatedButton extends StatelessWidget {
  const DsElevatedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.disabled,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback onPressed;
  final bool? disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(290, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: h6,
          backgroundColor: primaryColor,
          foregroundColor: whiteColor,
          disabledBackgroundColor: fillDisable,
          disabledForegroundColor: textDisable,
        ),
        child: child,
      ),
    );
  }
}
