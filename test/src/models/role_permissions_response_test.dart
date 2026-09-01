import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RolePermissionsResponse', () {
    test('model', () {
      final model = RolePermissionsResponse(
      );

      final map = model.toMap();
      final result = RolePermissionsResponse.fromMap(map);

    });
  });
}
