import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketTaxClass', () {
    test('model', () {
      final model = MarketTaxClass();

      final map = model.toMap();
      final result = MarketTaxClass.fromMap(map);
    });
  });
}
