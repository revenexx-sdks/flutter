import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketReadiness', () {
    test('model', () {
      final model = MarketReadiness(
      );

      final map = model.toMap();
      final result = MarketReadiness.fromMap(map);

    });
  });
}
