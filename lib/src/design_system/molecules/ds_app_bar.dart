import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class DsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DsAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 0,
      bottom: PreferredSize(
          preferredSize: preferredSize,
          child: DsText(text: title, style: h5Primary)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
