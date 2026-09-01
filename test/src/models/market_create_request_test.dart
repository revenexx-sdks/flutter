import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCreateRequest', () {
    test('model', () {
      final model = MarketCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = MarketCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.name, '');
    });
  });
}
