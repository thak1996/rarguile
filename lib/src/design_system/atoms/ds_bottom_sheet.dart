import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_input_comment.dart';

class DsBottomSheet extends StatelessWidget {
  const DsBottomSheet({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: InputComment(
          hintText: hintText,
        ),
      ),
    );
  }
}
