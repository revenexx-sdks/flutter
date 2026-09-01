import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMfaChallengeConfirmRequest', () {
    test('model', () {
      final model = AuthMfaChallengeConfirmRequest(
        challenge_id: '',
        code: '',
        session_secret: '',
      );

      final map = model.toMap();
      final result = AuthMfaChallengeConfirmRequest.fromMap(map);

            expect(result.challenge_id, '');
                  expect(result.code, '');
                  expect(result.session_secret, '');
          });
  });
}
