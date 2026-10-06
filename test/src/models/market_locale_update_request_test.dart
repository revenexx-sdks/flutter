import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocaleUpdateRequest', () {
    test('model', () {
      final model = MarketLocaleUpdateRequest();

      final map = model.toMap();
      final result = MarketLocaleUpdateRequest.fromMap(map);
    });
  });
}
