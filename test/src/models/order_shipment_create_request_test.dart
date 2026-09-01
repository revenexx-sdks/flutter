import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderShipmentCreateRequest', () {
    test('model', () {
      final model = OrderShipmentCreateRequest();

      final map = model.toMap();
      final result = OrderShipmentCreateRequest.fromMap(map);
    });
  });
}
