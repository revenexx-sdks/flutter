import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketReadinessCounts', () {
    test('model', () {
      final model = MarketReadinessCounts(
      );

      final map = model.toMap();
      final result = MarketReadinessCounts.fromMap(map);

    });
  });
}
