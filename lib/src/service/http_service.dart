import 'package:http/http.dart' as http;
import 'package:rarguile/src/service/interfaces/api_service_interface.dart';

import '../shared/stores/user_store.dart';

class HttpService implements IApiService {
  var baseURL = "44.199.200.211:3325";
  late UserStore userStore;

  @override
  Future get(
      {required String route,
      Map<String, dynamic>? params,
      Map<String, String>? headers}) async {
    Uri url = Uri.http(baseURL, route);
    var response = await http.get(url, headers: headers);
    return response;
  }

  @override
  Future delete({required String route}) {
    throw UnimplementedError();
  }

  @override
  Future patch({required String route, Map? body}) async {
    Uri url = Uri.http(baseURL, route);
    var response = await http.patch(url, body: body);
    return response;
  }

  @override
  Future post({required String route, Map<String, dynamic>? body, Map<String, String>? headers}) async {
    Uri url = Uri.http(baseURL, route);
    var response = await http.post(url, body: body);
    return response;
  }
  

  @override
  Future put({required String route, Map? body}) {
    throw UnimplementedError();
  }
}
