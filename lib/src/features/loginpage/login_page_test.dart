import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter/material.dart';
import 'package:rarguile/src/datasource/datasource.dart';
import 'package:rarguile/src/model/video_model.dart';
import 'package:rarguile/src/service/api_service.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/shared/exceptions/failure.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiService service = HttpService();
  late final VideosDataSource datasource;
  bool loading = false;
  String response = '';

  @override
  void initState() {
    datasource = VideosDataSource(service);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: FutureBuilder<List<VideosModel>>(
          future: datasource.getAllVideos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Text(
                  snapshot.data.toString(),
                ),
              );
            }

            // snapshot.data?.fold((left) {
            //   left.message;
            //   ScaffoldMessenger.of(context)
            //       .showSnackBar(SnackBar(content: Text(left.message)));
            //   return Center(child: Text(snapshot.error.toString()));
            // }, (right) {
            //   return Center(child: Text(snapshot.data.toString()));
            // });
            return Container();
          },
        ),
      ),
    );
  }
}
