import 'package:flutter/material.dart';
import 'package:rarguile/src/modules/home_page_users/models/home_model.dart';
import 'package:rarguile/src/shared/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/shared/design_system/organisms/ds_description.dart';
import 'package:rarguile/src/shared/design_system/organisms/ds_related.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:rarguile/src/widgets/hide_show_widget.dart';
import 'package:rarguile/src/widgets/video_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.videos,
  });

  final VideosModel videos;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: DsAppBar(title: 'Raro Tube', showLoginBtn: false),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(children: [
                Image.asset(
                  'assets/images/raro_video_preview.png',
                ),
                Positioned(
                  height: 220,
                  width: 380,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoPage(
                            videoUrl: widget.videos.url,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.play_arrow_rounded),
                    color: whiteColor,
                    iconSize: 150,
                  ),
                ),
              ]),
              DsDescription(
                title: widget.videos.nome,
                description: widget.videos.descricao,
              ),
              const HideShow(),
              const DsRelated(),
            ],
          ),
        ],
      ),
    );
  }
}
