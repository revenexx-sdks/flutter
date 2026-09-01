import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocaleList', () {
    test('model', () {
      final model = MarketLocaleList();

      final map = model.toMap();
      final result = MarketLocaleList.fromMap(map);
    });
  });
}
