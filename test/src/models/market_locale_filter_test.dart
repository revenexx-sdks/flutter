import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocaleFilter', () {
    test('model', () {
      final model = MarketLocaleFilter();

      final map = model.toMap();
      final result = MarketLocaleFilter.fromMap(map);
    });
  });
}
