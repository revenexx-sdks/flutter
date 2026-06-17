import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeIp', () {
    test('model', () {
      final model = AttributeIp(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: AttributeIpStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeIp.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeIpStatus.available);
                  expect(result.type, '');
          });
  });
}
