import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingWeightUnitCreateRequest', () {
    test('model', () {
      final model = ShippingWeightUnitCreateRequest(
        code: '',
        factor: 0,
        title: '',
      );

      final map = model.toMap();
      final result = ShippingWeightUnitCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.factor, 0);
      expect(result.title, '');
    });
  });
}
