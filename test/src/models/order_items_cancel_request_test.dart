import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderItemsCancelRequest', () {
    test('model', () {
      final model = OrderItemsCancelRequest(
        positions: [],
      );

      final map = model.toMap();
      final result = OrderItemsCancelRequest.fromMap(map);

            expect(result.positions, []);
          });
  });
}
