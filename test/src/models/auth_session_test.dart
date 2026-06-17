import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthSession', () {
    test('model', () {
      final model = AuthSession(
      );

      final map = model.toMap();
      final result = AuthSession.fromMap(map);

    });
  });
}
