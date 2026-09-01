import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCustomerRollup', () {
    test('model', () {
      final model = OrderCustomerRollup(
      );

      final map = model.toMap();
      final result = OrderCustomerRollup.fromMap(map);

    });
  });
}
