import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthRecoveryConfirmRequest', () {
    test('model', () {
      final model = AuthRecoveryConfirmRequest(
        password: '',
        secret: '',
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthRecoveryConfirmRequest.fromMap(map);

      expect(result.password, '');
      expect(result.secret, '');
      expect(result.user_id, '');
    });
  });
}
