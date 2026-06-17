import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceListCreateRequest', () {
    test('model', () {
      final model = PriceListCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = PriceListCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
          });
  });
}
