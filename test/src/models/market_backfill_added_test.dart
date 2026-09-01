import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketBackfillAdded', () {
    test('model', () {
      final model = MarketBackfillAdded(
      );

      final map = model.toMap();
      final result = MarketBackfillAdded.fromMap(map);

    });
  });
}
