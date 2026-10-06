import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthVerificationConfirmResponse', () {
    test('model', () {
      final model = AuthVerificationConfirmResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthVerificationConfirmResponse.fromMap(map);
    });
  });
}
