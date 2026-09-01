import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MfaFactors', () {
    test('model', () {
      final model = MfaFactors(
        email: true,
        phone: true,
        recoveryCode: true,
        totp: true,
      );

      final map = model.toMap();
      final result = MfaFactors.fromMap(map);

      expect(result.email, true);
      expect(result.phone, true);
      expect(result.recoveryCode, true);
      expect(result.totp, true);
    });
  });
}
