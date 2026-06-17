import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnEnum', () {
    test('model', () {
      final model = ColumnEnum(
        $createdAt: '',
        $updatedAt: '',
        elements: [],
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: ColumnEnumStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = ColumnEnum.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.elements, []);
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, ColumnEnumStatus.available);
                  expect(result.type, '');
          });
  });
}
