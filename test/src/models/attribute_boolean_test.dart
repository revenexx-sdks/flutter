import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeBoolean', () {
    test('model', () {
      final model = AttributeBoolean(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeBooleanStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeBoolean.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeBooleanStatus.available);
                  expect(result.type, '');
          });
  });
}
