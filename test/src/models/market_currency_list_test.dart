import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCurrencyList', () {
    test('model', () {
      final model = MarketCurrencyList();

      final map = model.toMap();
      final result = MarketCurrencyList.fromMap(map);
    });
  });
}
