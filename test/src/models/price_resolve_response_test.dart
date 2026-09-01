import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceResolveResponse', () {
    test('model', () {
      final model = PriceResolveResponse(
      );

      final map = model.toMap();
      final result = PriceResolveResponse.fromMap(map);

    });
  });
}
