import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthVerificationResponse', () {
    test('model', () {
      final model = AuthVerificationResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthVerificationResponse.fromMap(map);

    });
  });
}
