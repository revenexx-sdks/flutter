import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnCreateRequest', () {
    test('model', () {
      final model = OrderReturnCreateRequest(
        positions: [],
      );

      final map = model.toMap();
      final result = OrderReturnCreateRequest.fromMap(map);

            expect(result.positions, []);
          });
  });
}
