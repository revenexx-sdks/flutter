import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMfaChallengeResponse', () {
    test('model', () {
      final model = AuthMfaChallengeResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthMfaChallengeResponse.fromMap(map);

    });
  });
}
