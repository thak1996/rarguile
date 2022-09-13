import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_button_icon.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:rarguile/src/shared/constants/styles.dart';

import 'package:flutter_modular/flutter_modular.dart';

class DsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DsAppBar({
    super.key,
    required this.title,
    this.onPressed,
    required this.showLoginBtn,
  });

  final String title;
  final VoidCallback? onPressed;
  final bool showLoginBtn;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: whiteColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(height: 35, color: whiteColor),
              DsText(text: title, style: h5Primary),
            ],
          ),
          Visibility(
            visible: showLoginBtn == true,
            child: Column(
              children: [
                const Divider(height: 35, color: whiteColor),
                DSIconButton(
                  icon: const Icon(Icons.login),
                  onPressed: () {
                    Modular.to.navigate('/login/');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
