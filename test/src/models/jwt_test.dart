import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Jwt', () {
    test('model', () {
      final model = Jwt(
        jwt: '',
      );

      final map = model.toMap();
      final result = Jwt.fromMap(map);

      expect(result.jwt, '');
    });
  });
}
