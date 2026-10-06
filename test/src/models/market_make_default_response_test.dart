import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketMakeDefaultResponse', () {
    test('model', () {
      final model = MarketMakeDefaultResponse();

      final map = model.toMap();
      final result = MarketMakeDefaultResponse.fromMap(map);
    });
  });
}
