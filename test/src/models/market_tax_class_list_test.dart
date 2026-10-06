import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketTaxClassList', () {
    test('model', () {
      final model = MarketTaxClassList();

      final map = model.toMap();
      final result = MarketTaxClassList.fromMap(map);
    });
  });
}
