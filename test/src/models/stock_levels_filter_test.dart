import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockLevelsFilter', () {
    test('model', () {
      final model = StockLevelsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = StockLevelsFilter.fromMap(map);
    });
  });
}
