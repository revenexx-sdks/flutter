import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShipmentItem', () {
    test('model', () {
      final model = OrderShipmentItem();

      final map = model.toMap();
      final result = OrderShipmentItem.fromMap(map);
    });
  });
}
