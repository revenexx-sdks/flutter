import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketBackfillRequest', () {
    test('model', () {
      final model = MarketBackfillRequest(
        source: '',
      );

      final map = model.toMap();
      final result = MarketBackfillRequest.fromMap(map);

            expect(result.source, '');
          });
  });
}
