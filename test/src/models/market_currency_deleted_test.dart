import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCurrencyDeleted', () {
    test('model', () {
      final model = MarketCurrencyDeleted(
      );

      final map = model.toMap();
      final result = MarketCurrencyDeleted.fromMap(map);

    });
  });
}
