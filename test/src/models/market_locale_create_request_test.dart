import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocaleCreateRequest', () {
    test('model', () {
      final model = MarketLocaleCreateRequest(
        code: '',
        country: '',
        language: '',
      );

      final map = model.toMap();
      final result = MarketLocaleCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.country, '');
      expect(result.language, '');
    });
  });
}
