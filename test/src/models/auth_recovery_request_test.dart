import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthRecoveryRequest', () {
    test('model', () {
      final model = AuthRecoveryRequest(
        email: '',
        url: '',
      );

      final map = model.toMap();
      final result = AuthRecoveryRequest.fromMap(map);

      expect(result.email, '');
      expect(result.url, '');
    });
  });
}
