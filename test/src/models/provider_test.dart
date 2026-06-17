import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Provider', () {
    test('model', () {
      final model = Provider(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        credentials: {},
        enabled: true,
        name: '',
        provider: '',
        type: '',
      );

      final map = model.toMap();
      final result = Provider.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.credentials, {});
                  expect(result.enabled, true);
                  expect(result.name, '');
                  expect(result.provider, '');
                  expect(result.type, '');
          });
  });
}
