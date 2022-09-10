import 'package:rarguile/src/service/api_service.dart';

class VideosDataSource {
  final ApiService service;

  VideosDataSource(this.service);

  Future<dynamic> login(
      {required String email, required String password}) async {
    final response = await service.post(route: '/auth/login', body: {"email": email, "senha": password});
    return response;
  }
}
