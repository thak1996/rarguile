import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:rarguile/features/home_page_users/datasource/home_datasource.dart';
import 'package:rarguile/src/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/design_system/organisms/ds_card.dart';
import 'package:rarguile/features/home_page_users/models/home_model.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class HomePageUsers extends StatefulWidget {
  const HomePageUsers({super.key});

  @override
  State<HomePageUsers> createState() => _HomePageUsersState();
}

class _HomePageUsersState extends State<HomePageUsers> {
  final HttpService service = HttpService();
  late final VideosDataSource dataSource;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    dataSource = VideosDataSource(service);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DsAppBar(
        title: 'Raro Tube - Home',
        showLoginBtn: false,
      ),
      body: FutureBuilder<List<VideosModel>>(
        future: dataSource.getAllVideos(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            final List<VideosModel> videos = snapshot.data!.toList();
            return Container(
              decoration: const BoxDecoration(color: whiteColor),
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  final video = videos[index];
                  return Container(
                    decoration: const BoxDecoration(color: whiteColor),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: screenSize(context).width * .02,
                        left: screenSize(context).width * .02,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: screenSize(context).width * .03),
                          Row(
                            children: [
                              SizedBox(width: screenSize(context).width * 0.03),
                              DsText(
                                text: video.topico,
                                style: h6Primary.copyWith(
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          DsCard(
                            title: video.nome,
                            text: video.descricao,
                            date: formatDate(
                              DateTime.parse(video.createdAt),
                              [dd, '/', mm, '/', yyyy],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (!snapshot.hasData) {
            return const Center(child: Text('Sem Informação'));
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
