import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RolesDefaultsRequest', () {
    test('model', () {
      final model = RolesDefaultsRequest(
      );

      final map = model.toMap();
      final result = RolesDefaultsRequest.fromMap(map);

    });
  });
}
