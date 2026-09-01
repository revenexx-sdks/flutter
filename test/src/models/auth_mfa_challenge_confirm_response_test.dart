import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMfaChallengeConfirmResponse', () {
    test('model', () {
      final model = AuthMfaChallengeConfirmResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthMfaChallengeConfirmResponse.fromMap(map);

    });
  });
}
