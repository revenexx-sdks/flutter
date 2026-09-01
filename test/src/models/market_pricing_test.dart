import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketPricing', () {
    test('model', () {
      final model = MarketPricing(
      );

      final map = model.toMap();
      final result = MarketPricing.fromMap(map);

    });
  });
}
