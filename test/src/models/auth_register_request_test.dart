import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthRegisterRequest', () {
    test('model', () {
      final model = AuthRegisterRequest(
        email: '',
        password: '',
      );

      final map = model.toMap();
      final result = AuthRegisterRequest.fromMap(map);

            expect(result.email, '');
                  expect(result.password, '');
          });
  });
}
