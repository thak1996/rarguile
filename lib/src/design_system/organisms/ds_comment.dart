import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_bottom_sheet.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class DsComment extends StatefulWidget {
  const DsComment({
    super.key,
  });

  @override
  State<DsComment> createState() => _DsCommentState();
}

class _DsCommentState extends State<DsComment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DsOutlinedButton(
              textStyle: inputBlackGrey,
              color: azulMaximum,
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: const Color(0xffe8eaed),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const DsBottomSheet(
                    hintText: 'Digite um comentário...',
                  ),
                );
              },
              child: Row(
                children: const [
                  Text(
                    'Digite um comentário...',
                  ),
                ],
              ),
            ),

            const Divider(
              color: redAlert,
            ),
            //todo comentarios
          ],
        ),
      ),
    );
  }
}
