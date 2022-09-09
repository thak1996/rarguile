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
      automaticallyImplyLeading: false,
      backgroundColor: whiteColor,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(height: 40, color: whiteColor),
          DsText(text: title, style: h5Primary),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
