import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocale', () {
    test('model', () {
      final model = MarketLocale(
      );

      final map = model.toMap();
      final result = MarketLocale.fromMap(map);

    });
  });
}
