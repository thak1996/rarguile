import 'package:http/http.dart' as http;
import 'package:rarguile/src/service/api_service.dart';


class HttpService implements ApiService {
  var baseURL = "44.199.200.211:3325";
  String? token = "";

  @override
  Future get({required String route, Map<String, dynamic>? params}) async {
    Uri url = Uri.http(baseURL, route);
    var response =
        await http.get(url, headers: {"Authorization": "Bearer $token"});
    return response.body;
  }

  @override
  Future delete({required String route}) {
    throw UnimplementedError();
  }

  @override
  Future patch({required String route, Map? body}) {
    throw UnimplementedError();
  }

  @override
  Future post({required String route, Map<String, dynamic>? body}) {
    throw UnimplementedError();
  }

  @override
  Future put({required String route, Map? body}) {
    throw UnimplementedError();
  }
}
