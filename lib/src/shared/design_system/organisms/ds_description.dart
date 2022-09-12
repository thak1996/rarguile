import 'package:flutter/material.dart';

import 'package:rarguile/src/shared/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class DsDescription extends StatefulWidget {
  const DsDescription(
      {super.key,
      required this.title,
      required this.description,
      this.favorite});

  final String title;
  final String description;
  final String? favorite;

  @override
  State<DsDescription> createState() => _DsDescriptionState();
}

class _DsDescriptionState extends State<DsDescription> {
  ValueNotifier<bool> isFavorite = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DsText(
                text: widget.title,
                style: subTitleBoldPrimary,
              ),
              ValueListenableBuilder<bool>(
                valueListenable: isFavorite,
                builder: (context, value, _) => IconButton(
                  splashRadius: 5,
                  icon: Icon(value ? (Icons.favorite) : (Icons.favorite_border),
                      size: 22),
                  color: azulVioleta,
                  onPressed: () {
                    isFavorite.value = !value;
                  },
                ),
              ),
            ],
          ),
          DsText(
            text: widget.description,
            style: inputPrimary,
          ),
        ],
      ),
    );
  }
}
