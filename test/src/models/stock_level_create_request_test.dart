import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockLevelCreateRequest', () {
    test('model', () {
      final model = StockLevelCreateRequest(
        location_id: '',
      );

      final map = model.toMap();
      final result = StockLevelCreateRequest.fromMap(map);

      expect(result.location_id, '');
    });
  });
}
