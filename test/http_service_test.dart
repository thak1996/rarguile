import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rarguile/src/service/http_service.dart';

// @GenerateMocks([HomeStore])
void main() {
  final service = HttpService();

  test(
    'Deve retornar o statusCode 201',
    () async {
      var response = await service.post(
          route: '/auth/solicitar-codigo',
          body: {"email": "claudevanio.conceicao@gmail.com"});
      expect(response.statusCode, 201);
    },
  );

  test(
    'Deve retornar o statusCode 201 por ter alterado a senha',
    () async {
      var response = await service.patch(
          route: "/auth/recuperar-senha",
          body: {"codigo": "4c9b18", "novaSenha": "Rarguile@321"});
      expect(response.statusCode, 201);
    },
  );
}
