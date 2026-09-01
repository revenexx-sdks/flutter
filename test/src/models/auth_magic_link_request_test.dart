import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMagicLinkRequest', () {
    test('model', () {
      final model = AuthMagicLinkRequest(
        email: '',
        url: '',
      );

      final map = model.toMap();
      final result = AuthMagicLinkRequest.fromMap(map);

            expect(result.email, '');
                  expect(result.url, '');
          });
  });
}
