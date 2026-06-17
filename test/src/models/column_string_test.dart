import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnString', () {
    test('model', () {
      final model = ColumnString(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        size: ,
        status: ColumnStringStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnString.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.size, );
                  expect(result.status, ColumnStringStatus.available);
                  expect(result.type, '');
          });
  });
}
