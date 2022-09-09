import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';

class DSIconButton extends StatelessWidget {
  const DSIconButton({super.key, required this.icon, required this.onPressed});

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      color: primaryColor,
    );
  }
}
