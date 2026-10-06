import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMeRequest', () {
    test('model', () {
      final model = AuthMeRequest(
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthMeRequest.fromMap(map);

      expect(result.user_id, '');
    });
  });
}
