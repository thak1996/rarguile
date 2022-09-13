import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/design_system/organisms/ds_comment.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:rarguile/src/shared/constants/styles.dart';

class HideShow extends StatefulWidget {
  const HideShow({super.key});

  @override
  State<HideShow> createState() => _HideShowState();
}

class _HideShowState extends State<HideShow> {
  ValueNotifier<bool> isVisible = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ValueListenableBuilder<bool>(
        valueListenable: isVisible,
        builder: (context, value, _) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              child: Row(
                children: [
                  const DsText(text: "Comentários", style: subTitleBoldPrimary),
                  Icon(
                    value ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: primaryColor,
                  ),
                ],
              ),
              onTap: () {
                isVisible.value = !value;
              },
            ),
            Visibility(
              visible: value,
              child: const DsComment(),
            ),
          ],
        ),
      ),
    );
  }
}
