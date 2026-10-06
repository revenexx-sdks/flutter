import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCloneSeeded', () {
    test('model', () {
      final model = MarketCloneSeeded();

      final map = model.toMap();
      final result = MarketCloneSeeded.fromMap(map);
    });
  });
}
