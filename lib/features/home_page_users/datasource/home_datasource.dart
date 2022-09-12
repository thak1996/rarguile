import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rarguile/features/home_page_users/models/home_model.dart';
import 'package:rarguile/src/service/api_service.dart';
import 'package:rarguile/src/shared/failure.dart';

class VideosDataSource {
  final ApiService service;

  VideosDataSource(this.service);

  Future<List<VideosModel>> getAllVideos() async {
    try {
      final response = await service.get(route: '/videos/');
      if (response.statusCode == 200) {
        List<VideosModel> users = [];
        var decode = jsonDecode(response.body);
        decode != null
            ? users =
                (decode as List).map((i) => VideosModel.fromMap(i)).toList()
            : Container();
        return users;
      }
      throw HttpException(response.reasonPhrase);
    } on SocketException {
      throw Failure(message: 'Falha de Conexão');
    } on HttpException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } on FormatException {
      throw Failure(message: 'Estamos passando por dificuldades');
    } catch (error) {
      throw Failure(message: 'Ocorreu um erro: ${error.toString()}');
    }
  }
}
