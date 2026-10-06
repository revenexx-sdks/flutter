import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthRecoveryResponse', () {
    test('model', () {
      final model = AuthRecoveryResponse(
        data: {},
      );

      final map = model.toMap();
      final result = AuthRecoveryResponse.fromMap(map);
    });
  });
}
