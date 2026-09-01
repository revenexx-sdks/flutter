import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketFilter', () {
    test('model', () {
      final model = MarketFilter(
      );

      final map = model.toMap();
      final result = MarketFilter.fromMap(map);

    });
  });
}
