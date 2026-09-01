import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocaleDeleted', () {
    test('model', () {
      final model = MarketLocaleDeleted(
      );

      final map = model.toMap();
      final result = MarketLocaleDeleted.fromMap(map);

    });
  });
}
