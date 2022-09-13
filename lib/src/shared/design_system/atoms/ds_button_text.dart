import 'package:flutter/material.dart';

class DsTextButton extends StatelessWidget {
  const DsTextButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.textStyle,
    required this.color,
  }) : super(key: key);

  final TextStyle textStyle;
  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: textStyle,
          foregroundColor: color,
        ),
        child: child,
      ),
    );
  }
}
