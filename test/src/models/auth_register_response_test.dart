import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthRegisterResponse', () {
    test('model', () {
      final model = AuthRegisterResponse(
      );

      final map = model.toMap();
      final result = AuthRegisterResponse.fromMap(map);

    });
  });
}
