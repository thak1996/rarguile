import 'package:http/http.dart' as http;
import 'package:rarguile/src/service/api_service.dart';

class HttpService implements ApiService {
  var baseURL = "44.199.200.211:3325";
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI3ZjNhZWZkNC01YzU1LTQ5ODQtOGVlNy0wY2FhOTM4ZTA0MGUiLCJhZG1pbiI6ZmFsc2UsIm5vbWUiOiJmcmFua2x5biIsImVtYWlsIjoiZnJhbmtseW5fdnNfQGhvdG1haWwuY29tIiwiZm90byI6Imh0dHBzOi8vY2xvdWRmbGFyZS1pcGZzLmNvbS9pcGZzL1FtZDNXNUR1aGdIaXJMSEdWaXhpNlY3NkxoQ2taVXo2cG5GdDVBSkJpeXZIeWUvYXZhdGFyLzExNTUuanBnIn0sImlhdCI6MTY2MjgzNjIyNiwiZXhwIjoxNjYyODU3ODI2fQ.Sb_W36kaXJH5EVGOXdnOpPO0Vb-9D6kCWN6LmER3xTI";

  @override
  Future get({required String route, Map<String, dynamic>? params}) async {
    Uri url = Uri.http(baseURL, route);
    var response =
        await http.get(url, headers: {"Authorization": "Bearer $token"});
    return response;
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
