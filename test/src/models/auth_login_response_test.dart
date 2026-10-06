import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthLoginResponse', () {
    test('model', () {
      final model = AuthLoginResponse();

      final map = model.toMap();
      final result = AuthLoginResponse.fromMap(map);
    });
  });
}
