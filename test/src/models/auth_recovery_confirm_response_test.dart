import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthRecoveryConfirmResponse', () {
    test('model', () {
      final model = AuthRecoveryConfirmResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthRecoveryConfirmResponse.fromMap(map);
    });
  });
}
