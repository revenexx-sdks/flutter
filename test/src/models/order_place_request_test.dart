import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderPlaceRequest', () {
    test('model', () {
      final model = OrderPlaceRequest(
        items: [],
      );

      final map = model.toMap();
      final result = OrderPlaceRequest.fromMap(map);

      expect(result.items, []);
    });
  });
}
