import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartConversionPricing', () {
    test('model', () {
      final model = CartConversionPricing(
      );

      final map = model.toMap();
      final result = CartConversionPricing.fromMap(map);

    });
  });
}
