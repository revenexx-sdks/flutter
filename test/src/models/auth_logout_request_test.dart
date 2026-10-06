import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthLogoutRequest', () {
    test('model', () {
      final model = AuthLogoutRequest(
        session_id: '',
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthLogoutRequest.fromMap(map);

      expect(result.session_id, '');
      expect(result.user_id, '');
    });
  });
}
