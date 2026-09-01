import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketTaxClassDeleted', () {
    test('model', () {
      final model = MarketTaxClassDeleted(
      );

      final map = model.toMap();
      final result = MarketTaxClassDeleted.fromMap(map);

    });
  });
}
