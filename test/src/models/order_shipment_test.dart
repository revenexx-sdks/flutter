import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShipment', () {
    test('model', () {
      final model = OrderShipment(
      );

      final map = model.toMap();
      final result = OrderShipment.fromMap(map);

    });
  });
}
