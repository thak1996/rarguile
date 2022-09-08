import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key, required this.finalText});

  final String finalText;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  late String firstPart;
  late String secondPart;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.finalText.length > 100) {
      firstPart = widget.finalText.substring(0, 100);
      secondPart = widget.finalText.substring(100, widget.finalText.length);
    } else {
      firstPart = widget.finalText;
      secondPart = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondPart.length == ""
          ? Text(widget.finalText)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(flag ? firstPart : widget.finalText),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        flag = !flag;
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      flag
                          ? const DsText(
                              text: 'Ver Mais', style: inputBoldPrimary)
                          : const DsText(
                              text: 'Ver Menos...', style: inputBoldPrimary),
                      Icon(
                        flag
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        color: primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
