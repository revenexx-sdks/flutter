import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCustomerRollupRequest', () {
    test('model', () {
      final model = OrderCustomerRollupRequest(
      );

      final map = model.toMap();
      final result = OrderCustomerRollupRequest.fromMap(map);

    });
  });
}
