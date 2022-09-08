import 'package:flutter/material.dart';

import 'package:rarguile/src/design_system/atoms/ds_text.dart';
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
  final favorite;

  @override
  State<DsDescription> createState() => _DsDescriptionState();
}

class _DsDescriptionState extends State<DsDescription> {
  bool isFavorite = false;

  void setFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

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
              IconButton(
                splashRadius: 5,
                icon: Icon(
                    isFavorite ? (Icons.favorite) : (Icons.favorite_border),
                    size: 22),
                color: azulVioleta,
                onPressed: () {
                  setFavorite();
                },
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
