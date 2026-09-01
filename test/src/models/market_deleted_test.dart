import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketDeleted', () {
    test('model', () {
      final model = MarketDeleted();

      final map = model.toMap();
      final result = MarketDeleted.fromMap(map);
    });
  });
}
