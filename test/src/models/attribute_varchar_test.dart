import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeVarchar', () {
    test('model', () {
      final model = AttributeVarchar(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        size: ,
        status: AttributeVarcharStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeVarchar.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.size, );
                  expect(result.status, AttributeVarcharStatus.available);
                  expect(result.type, '');
          });
  });
}
