import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockLevelAdjustRequest', () {
    test('model', () {
      final model = StockLevelAdjustRequest(
        quantity: 0,
      );

      final map = model.toMap();
      final result = StockLevelAdjustRequest.fromMap(map);

      expect(result.quantity, 0);
    });
  });
}
