import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnIp', () {
    test('model', () {
      final model = ColumnIp(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: ColumnIpStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnIp.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnIpStatus.available);
                  expect(result.type, '');
          });
  });
}
