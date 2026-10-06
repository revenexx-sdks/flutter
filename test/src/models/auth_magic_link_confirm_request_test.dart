import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMagicLinkConfirmRequest', () {
    test('model', () {
      final model = AuthMagicLinkConfirmRequest(
        secret: '',
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthMagicLinkConfirmRequest.fromMap(map);

      expect(result.secret, '');
      expect(result.user_id, '');
    });
  });
}
