import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnPoint', () {
    test('model', () {
      final model = ColumnPoint(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: ColumnPointStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnPoint.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnPointStatus.available);
                  expect(result.type, '');
          });
  });
}
