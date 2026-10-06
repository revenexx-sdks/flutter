import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCloneResult', () {
    test('model', () {
      final model = MarketCloneResult();

      final map = model.toMap();
      final result = MarketCloneResult.fromMap(map);
    });
  });
}
