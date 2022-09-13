import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YTVideo extends StatefulWidget {
  const YTVideo({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<YTVideo> createState() => _YTVideoState();
}

class _YTVideoState extends State<YTVideo> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    String url = widget.videoUrl;

    controller = YoutubePlayerController(
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
          progressColors: const ProgressBarColors(
            playedColor: azulVioleta,
            handleColor: azulMaximum,
            backgroundColor: whiteColor,
          ),
        ),
        builder: (context, player) => Container(
          child: player,
        ),
      );
}
