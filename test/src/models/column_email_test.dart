import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnEmail', () {
    test('model', () {
      final model = ColumnEmail(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: ColumnEmailStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnEmail.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnEmailStatus.available);
                  expect(result.type, '');
          });
  });
}
