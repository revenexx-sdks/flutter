import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesReplaceRequest', () {
    test('model', () {
      final model = PriceEntriesReplaceRequest(
        entries: [],
      );

      final map = model.toMap();
      final result = PriceEntriesReplaceRequest.fromMap(map);

            expect(result.entries, []);
          });
  });
}
