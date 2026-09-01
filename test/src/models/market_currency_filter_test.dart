import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCurrencyFilter', () {
    test('model', () {
      final model = MarketCurrencyFilter(
      );

      final map = model.toMap();
      final result = MarketCurrencyFilter.fromMap(map);

    });
  });
}
