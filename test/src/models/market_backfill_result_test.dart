import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketBackfillResult', () {
    test('model', () {
      final model = MarketBackfillResult();

      final map = model.toMap();
      final result = MarketBackfillResult.fromMap(map);
    });
  });
}
