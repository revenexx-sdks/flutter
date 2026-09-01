import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthOtpRequest', () {
    test('model', () {
      final model = AuthOtpRequest(
        email: '',
      );

      final map = model.toMap();
      final result = AuthOtpRequest.fromMap(map);

      expect(result.email, '');
    });
  });
}
