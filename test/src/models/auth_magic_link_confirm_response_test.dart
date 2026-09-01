import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMagicLinkConfirmResponse', () {
    test('model', () {
      final model = AuthMagicLinkConfirmResponse(
      );

      final map = model.toMap();
      final result = AuthMagicLinkConfirmResponse.fromMap(map);

    });
  });
}
