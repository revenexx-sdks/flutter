import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeString', () {
    test('model', () {
      final model = AttributeString(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        size: 0,
        status: AttributeStringStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeString.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.size, 0);
                  expect(result.status, AttributeStringStatus.available);
                  expect(result.type, '');
          });
  });
}
