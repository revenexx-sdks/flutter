import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Variable', () {
    test('model', () {
      final model = Variable(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        key: '',
        resourceId: '',
        resourceType: '',
        secret: true,
        value: '',
      );

      final map = model.toMap();
      final result = Variable.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.key, '');
                  expect(result.resourceId, '');
                  expect(result.resourceType, '');
                  expect(result.secret, true);
                  expect(result.value, '');
          });
  });
}
