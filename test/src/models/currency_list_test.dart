import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CurrencyList', () {
    test('model', () {
      final model = CurrencyList(
        currencies: [],
        total: 0,
      );

      final map = model.toMap();
      final result = CurrencyList.fromMap(map);

      expect(result.currencies, []);
      expect(result.total, 0);
    });
  });
}
