import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class DsOutlinedButton extends StatelessWidget {
  const DsOutlinedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.color,
    required this.textStyle,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            fixedSize: const Size(290, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: textStyle,
            foregroundColor: color,
            side: const BorderSide(width: 1, color: primaryColor)),
        child: child,
      ),
    );
  }
}
