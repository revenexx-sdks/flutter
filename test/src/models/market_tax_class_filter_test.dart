import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketTaxClassFilter', () {
    test('model', () {
      final model = MarketTaxClassFilter();

      final map = model.toMap();
      final result = MarketTaxClassFilter.fromMap(map);
    });
  });
}
