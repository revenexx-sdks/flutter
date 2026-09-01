import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RolesDefaultsResponse', () {
    test('model', () {
      final model = RolesDefaultsResponse(
      );

      final map = model.toMap();
      final result = RolesDefaultsResponse.fromMap(map);

    });
  });
}
