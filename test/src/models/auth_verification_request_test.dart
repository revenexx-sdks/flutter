import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthVerificationRequest', () {
    test('model', () {
      final model = AuthVerificationRequest(
        url: '',
        user_id: '',
      );

      final map = model.toMap();
      final result = AuthVerificationRequest.fromMap(map);

            expect(result.url, '');
                  expect(result.user_id, '');
          });
  });
}
