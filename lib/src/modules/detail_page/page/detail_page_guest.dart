import 'package:flutter/material.dart';
import 'package:rarguile/src/modules/home_page_users/models/home_model.dart';
import 'package:rarguile/src/shared/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/shared/design_system/organisms/ds_description.dart';
import 'package:rarguile/src/shared/design_system/organisms/ds_related.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:rarguile/src/widgets/hide_show_widget.dart';
import 'package:rarguile/src/widgets/yt_video_widget.dart';

class DetailPageGuest extends StatefulWidget {
  const DetailPageGuest({super.key, required this.videosGuest});

  final VideosModel videosGuest;

  @override
  State<DetailPageGuest> createState() => _DetailPageGuestState();
}

class _DetailPageGuestState extends State<DetailPageGuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar:
          DsAppBar(title: 'Raro Tube', onPressed: () {}, showLoginBtn: true),
      body: ListView(
        children: [
          Column(
            children: [
              YTVideo(videoUrl: widget.videosGuest.url),
              DsDescription(
                title: widget.videosGuest.nome,
                description: widget.videosGuest.descricao,
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
