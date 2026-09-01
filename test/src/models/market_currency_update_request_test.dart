import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCurrencyUpdateRequest', () {
    test('model', () {
      final model = MarketCurrencyUpdateRequest();

      final map = model.toMap();
      final result = MarketCurrencyUpdateRequest.fromMap(map);
    });
  });
}
