import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeEmail', () {
    test('model', () {
      final model = AttributeEmail(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: AttributeEmailStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeEmail.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeEmailStatus.available);
                  expect(result.type, '');
          });
  });
}
