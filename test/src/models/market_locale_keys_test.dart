import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocaleKeys', () {
    test('model', () {
      final model = MarketLocaleKeys();

      final map = model.toMap();
      final result = MarketLocaleKeys.fromMap(map);
    });
  });
}
