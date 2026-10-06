import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartMaintenanceRequest', () {
    test('model', () {
      final model = CartMaintenanceRequest();

      final map = model.toMap();
      final result = CartMaintenanceRequest.fromMap(map);
    });
  });
}
