import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnMediumtext', () {
    test('model', () {
      final model = ColumnMediumtext(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnMediumtextStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnMediumtext.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnMediumtextStatus.available);
                  expect(result.type, '');
          });
  });
}
