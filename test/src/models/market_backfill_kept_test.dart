import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketBackfillKept', () {
    test('model', () {
      final model = MarketBackfillKept();

      final map = model.toMap();
      final result = MarketBackfillKept.fromMap(map);
    });
  });
}
