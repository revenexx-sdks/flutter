import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartMaintenanceResult', () {
    test('model', () {
      final model = CartMaintenanceResult(
      );

      final map = model.toMap();
      final result = CartMaintenanceResult.fromMap(map);

    });
  });
}
