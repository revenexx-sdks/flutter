import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCurrencyCreateRequest', () {
    test('model', () {
      final model = MarketCurrencyCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = MarketCurrencyCreateRequest.fromMap(map);

            expect(result.code, '');
          });
  });
}
