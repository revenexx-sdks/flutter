import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthOtpConfirmRequest', () {
    test('model', () {
      final model = AuthOtpConfirmRequest(
        secret: '',
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthOtpConfirmRequest.fromMap(map);

      expect(result.secret, '');
      expect(result.user_id, '');
    });
  });
}
