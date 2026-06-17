import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeInteger', () {
    test('model', () {
      final model = AttributeInteger(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeIntegerStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeInteger.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeIntegerStatus.available);
                  expect(result.type, '');
          });
  });
}
