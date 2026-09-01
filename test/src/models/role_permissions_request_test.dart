import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RolePermissionsRequest', () {
    test('model', () {
      final model = RolePermissionsRequest(
        permissions: [],
      );

      final map = model.toMap();
      final result = RolePermissionsRequest.fromMap(map);

            expect(result.permissions, []);
          });
  });
}
