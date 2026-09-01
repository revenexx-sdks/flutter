import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListToOrderRequest', () {
    test('model', () {
      final model = OrderListToOrderRequest(
      );

      final map = model.toMap();
      final result = OrderListToOrderRequest.fromMap(map);

    });
  });
}
