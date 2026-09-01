import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCustomerRollupResponse', () {
    test('model', () {
      final model = OrderCustomerRollupResponse(
      );

      final map = model.toMap();
      final result = OrderCustomerRollupResponse.fromMap(map);

    });
  });
}
