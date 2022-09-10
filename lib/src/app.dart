import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/design_system/organisms/ds_description.dart';
import 'package:rarguile/src/design_system/organisms/ds_related.dart';
import 'package:rarguile/src/shared/app_colors.dart';

import 'package:rarguile/widgets/hide_show_widget.dart';
import 'package:rarguile/widgets/video_widget.dart';
import 'package:rarguile/widgets/yt_video_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const DsAppBar(title: "VideoTube"),
      body: ListView(
        children: [
          Column(
            children: const [
              YTVideo(
                  videoUrl:
                      'https://www.youtube.com/watch?v=fcMlPEVSacs&list=PLRpTFz5_57cvo0CHf-AnojOvpznz8YO7S'),
              DsDescription(
                title: 'Titulo do Video',
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
