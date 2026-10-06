import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceResolveRequest', () {
    test('model', () {
      final model = PriceResolveRequest(
        items: [],
      );

      final map = model.toMap();
      final result = PriceResolveRequest.fromMap(map);

      expect(result.items, []);
    });
  });
}
