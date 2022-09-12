import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_input_comment.dart';
import 'package:rarguile/src/shared/app_colors.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputComment(
          hintText: 'Digite um comentário...',
          onPressed: () {},
        ),
        const Divider(
          color: strokeDisable,
          thickness: 1,
        ),

        //todo comentarios
      ],
    );
  }
}
