import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCurrency', () {
    test('model', () {
      final model = MarketCurrency();

      final map = model.toMap();
      final result = MarketCurrency.fromMap(map);
    });
  });
}
