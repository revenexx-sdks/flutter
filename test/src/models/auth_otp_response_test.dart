import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthOtpResponse', () {
    test('model', () {
      final model = AuthOtpResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthOtpResponse.fromMap(map);
    });
  });
}
