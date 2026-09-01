import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListToCartRequest', () {
    test('model', () {
      final model = OrderListToCartRequest(
      );

      final map = model.toMap();
      final result = OrderListToCartRequest.fromMap(map);

    });
  });
}
