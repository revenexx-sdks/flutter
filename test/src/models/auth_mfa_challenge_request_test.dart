import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMfaChallengeRequest', () {
    test('model', () {
      final model = AuthMfaChallengeRequest(
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthMfaChallengeRequest.fromMap(map);

      expect(result.user_id, '');
    });
  });
}
