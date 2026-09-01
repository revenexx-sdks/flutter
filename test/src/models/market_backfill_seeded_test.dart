import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketBackfillSeeded', () {
    test('model', () {
      final model = MarketBackfillSeeded(
      );

      final map = model.toMap();
      final result = MarketBackfillSeeded.fromMap(map);

    });
  });
}
