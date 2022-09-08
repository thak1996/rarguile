import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/design_system/organisms/ds_description.dart';
import 'package:rarguile/src/design_system/organisms/ds_related.dart';
import 'package:rarguile/src/shared/app_colors.dart';

import 'package:rarguile/widgets/hide_show_widget.dart';
import 'package:rarguile/widgets/video_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: DsAppBar(title: "Raro Tube - Aula 3"),
      body: ListView(
        children: [
          Column(
            children: [
              VideoWidget(),
              DsDescription(
                title: 'Abelha Africana',
                description:
                    'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhafffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
              ),
              HideShow(),
              DsRelated(),
            ],
          ),
        ],
      ),
    );
  }
}
