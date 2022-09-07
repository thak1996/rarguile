import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/widgets/text_widget.dart';

class DsCard extends StatelessWidget {
  const DsCard({
    super.key,
    this.route,
    required this.title,
    required this.text,
    required this.date,
  });

  final String title;
  final String text;
  final Route? route;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: fillBackground,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DsText(text: title, style: subTitleBold),
                  DsText(text: date, style: subTitleBoldPrimary),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextWidget(
                  finalText: text,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, route!);
        },
      ),
    );
  }
}
