import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketTaxClassUpdateRequest', () {
    test('model', () {
      final model = MarketTaxClassUpdateRequest(
      );

      final map = model.toMap();
      final result = MarketTaxClassUpdateRequest.fromMap(map);

    });
  });
}
