import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RegistrationRejectRequest', () {
    test('model', () {
      final model = RegistrationRejectRequest(
        reason: '',
      );

      final map = model.toMap();
      final result = RegistrationRejectRequest.fromMap(map);

      expect(result.reason, '');
    });
  });
}
