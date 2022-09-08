import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/design_system/organisms/ds_comment.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class HideShow extends StatefulWidget {
  const HideShow({super.key});

  @override
  State<HideShow> createState() => _HideShowState();
}

class _HideShowState extends State<HideShow> {
  late bool isVisible = false;

  void showWidget() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            child: Row(
              children: [
                const DsText(text: "Comentários", style: subTitleBoldPrimary),
                Icon(
                  isVisible
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: primaryColor,
                ),
              ],
            ),
            onTap: () {
              showWidget();
            },
          ),
          Visibility(
            visible: isVisible,
            child: const DsComment(),
          ),
        ],
      ),
    );
  }
}
