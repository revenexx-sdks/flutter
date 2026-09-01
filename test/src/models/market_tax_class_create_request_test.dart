import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketTaxClassCreateRequest', () {
    test('model', () {
      final model = MarketTaxClassCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = MarketTaxClassCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.name, '');
    });
  });
}
