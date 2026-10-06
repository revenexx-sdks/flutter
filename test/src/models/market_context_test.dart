import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketContext', () {
    test('model', () {
      final model = MarketContext();

      final map = model.toMap();
      final result = MarketContext.fromMap(map);
    });
  });
}
