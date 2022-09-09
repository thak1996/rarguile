import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_bottom_sheet.dart';
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
    return SizedBox(
      height: 160,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const DsBottomSheet(
                    hintText: 'Digite um comentário',
                  ),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: textDisable,
                backgroundColor: fillDisable,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: strokeDisable,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: inputBlackGrey,
              ),
              child: const Text(
                'Digite um comentário...',
              ),
            ),
            const Divider(
              color: strokeDisable,
            ),
            //todo comentarios
          ],
        ),
      ),
    );
  }
}
