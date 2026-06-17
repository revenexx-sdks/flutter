import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnDatetime', () {
    test('model', () {
      final model = ColumnDatetime(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: ColumnDatetimeStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnDatetime.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnDatetimeStatus.available);
                  expect(result.type, '');
          });
  });
}
