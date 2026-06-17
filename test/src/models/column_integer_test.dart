import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnInteger', () {
    test('model', () {
      final model = ColumnInteger(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnIntegerStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnInteger.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnIntegerStatus.available);
                  expect(result.type, '');
          });
  });
}
