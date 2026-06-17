import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingRateTiersReplaceRequest', () {
    test('model', () {
      final model = ShippingRateTiersReplaceRequest(
        tiers: [],
      );

      final map = model.toMap();
      final result = ShippingRateTiersReplaceRequest.fromMap(map);

            expect(result.tiers, []);
          });
  });
}
