import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class DsElevatedButton extends StatelessWidget {
  const DsElevatedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.disabled,
    required this.textStyle,
    required this.backColor,
    required this.frontColor,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback onPressed;
  final bool? disabled;
  final Color backColor;
  final Color frontColor;
  final TextStyle textStyle;

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
          textStyle: textStyle,
          backgroundColor: backColor,
          foregroundColor: frontColor,
          disabledBackgroundColor: fillDisable,
          disabledForegroundColor: textDisable,
        ),
        child: child,
      ),
    );
  }
}
