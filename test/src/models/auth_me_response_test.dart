import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthMeResponse', () {
    test('model', () {
      final model = AuthMeResponse(
      );

      final map = model.toMap();
      final result = AuthMeResponse.fromMap(map);

    });
  });
}
