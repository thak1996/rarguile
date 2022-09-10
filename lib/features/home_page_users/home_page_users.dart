import 'package:flutter/material.dart';
import 'package:rarguile/src/data_source/videos_data_source.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/model/video_model.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/shared/styles.dart';

class HomePageUsers extends StatefulWidget {
  const HomePageUsers({super.key});

  @override
  State<HomePageUsers> createState() => _HomePageUsersState();
}

class _HomePageUsersState extends State<HomePageUsers> {
  final HttpService service = HttpService();
  late final VideosDataSource dataSource;

  @override
  void initState() {
    dataSource = VideosDataSource(service);
    dataSource.getAllVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DsAppBar(title: 'Raro Tube - Home'),
      body: FutureBuilder<List<VideosModel>>(
        future: dataSource.getAllVideos(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            final List<VideosModel> videos = snapshot.data!;
            return ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final video = videos[index];
                return DsText(
                  text: video.topico,
                  style:
                      h6Primary.copyWith(fontWeight: FontWeight.w400),
                );
              },
            );
          } else if (!snapshot.hasData) {
            return const Center(
              child: Text("Não Há dados"),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Tivemos um erro ao obter os dados"),
            );
          } else {
            return const Center(
              child: Text("Encontramos um erro ao obter os dados"),
            );
          }
        },
      ),
    );
  }
}
