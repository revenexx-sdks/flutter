import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockMovementsFilter', () {
    test('model', () {
      final model = StockMovementsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = StockMovementsFilter.fromMap(map);
    });
  });
}
