import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceListDefaultsResponse', () {
    test('model', () {
      final model = PriceListDefaultsResponse(
      );

      final map = model.toMap();
      final result = PriceListDefaultsResponse.fromMap(map);

    });
  });
}
