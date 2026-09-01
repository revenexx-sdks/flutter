import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingCarrierCreateRequest', () {
    test('model', () {
      final model = ShippingCarrierCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = ShippingCarrierCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
          });
  });
}
