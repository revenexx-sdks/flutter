import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesBulkRequest', () {
    test('model', () {
      final model = PriceEntriesBulkRequest(
        entries: [],
      );

      final map = model.toMap();
      final result = PriceEntriesBulkRequest.fromMap(map);

      expect(result.entries, []);
    });
  });
}
