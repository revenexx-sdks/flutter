import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketRef', () {
    test('model', () {
      final model = MarketRef(
      );

      final map = model.toMap();
      final result = MarketRef.fromMap(map);

    });
  });
}
