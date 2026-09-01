import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthOtpConfirmResponse', () {
    test('model', () {
      final model = AuthOtpConfirmResponse(
      );

      final map = model.toMap();
      final result = AuthOtpConfirmResponse.fromMap(map);

    });
  });
}
