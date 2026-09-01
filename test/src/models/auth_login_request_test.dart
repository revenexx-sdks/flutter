import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthLoginRequest', () {
    test('model', () {
      final model = AuthLoginRequest(
        email: '',
        password: '',
      );

      final map = model.toMap();
      final result = AuthLoginRequest.fromMap(map);

      expect(result.email, '');
      expect(result.password, '');
    });
  });
}
