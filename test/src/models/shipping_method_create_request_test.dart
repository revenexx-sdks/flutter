import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingMethodCreateRequest', () {
    test('model', () {
      final model = ShippingMethodCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = ShippingMethodCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
          });
  });
}
