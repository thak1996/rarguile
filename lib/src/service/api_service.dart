abstract class ApiService {
  Future<dynamic> get({Map<String, dynamic>? params});
  Future<dynamic> post({required String route, Map<String, dynamic>? body});
  Future<dynamic> put({required String route, Map? body});
  Future patch({required String route, Map? body});
  Future delete({required String route,});
}
