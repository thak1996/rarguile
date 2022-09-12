abstract class ApiService {
  Future<dynamic> get({required String route, Map<String, dynamic>? params});
  Future<dynamic> post(
      {required String route,
      required Map<String, dynamic>? body,
      Map<String, String>? headers});
  Future<dynamic> put({required String route, Map? body});
  Future patch({required String route, Map? body});
  Future delete({
    required String route,
  });
}
