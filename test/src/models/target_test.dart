import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Target', () {
    test('model', () {
      final model = Target(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        expired: true,
        identifier: '',
        name: '',
        providerType: '',
        userId: '',
      );

      final map = model.toMap();
      final result = Target.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.expired, true);
                  expect(result.identifier, '');
                  expect(result.name, '');
                  expect(result.providerType, '');
                  expect(result.userId, '');
          });
  });
}
