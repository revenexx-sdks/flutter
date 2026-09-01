import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShipmentCreated', () {
    test('model', () {
      final model = OrderShipmentCreated();

      final map = model.toMap();
      final result = OrderShipmentCreated.fromMap(map);
    });
  });
}
