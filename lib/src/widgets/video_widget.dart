import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:rarguile/src/shared/app_colors.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final double _progress = 0;
  late InAppWebViewController videoController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.videoUrl),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              videoController = controller;
            },
          ),
          _progress < 1
              ? SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor: whiteColor,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
