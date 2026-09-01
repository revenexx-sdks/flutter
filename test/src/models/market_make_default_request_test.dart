import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketMakeDefaultRequest', () {
    test('model', () {
      final model = MarketMakeDefaultRequest(
      );

      final map = model.toMap();
      final result = MarketMakeDefaultRequest.fromMap(map);

    });
  });
}
