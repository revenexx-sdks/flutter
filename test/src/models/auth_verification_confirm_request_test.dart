import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthVerificationConfirmRequest', () {
    test('model', () {
      final model = AuthVerificationConfirmRequest(
        secret: '',
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthVerificationConfirmRequest.fromMap(map);

      expect(result.secret, '');
      expect(result.user_id, '');
    });
  });
}
