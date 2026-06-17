import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockLevelUpdateRequest', () {
    test('model', () {
      final model = StockLevelUpdateRequest(
      );

      final map = model.toMap();
      final result = StockLevelUpdateRequest.fromMap(map);

    });
  });
}
