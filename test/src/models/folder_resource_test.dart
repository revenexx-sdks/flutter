import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FolderResource', () {
    test('model', () {
      final model = FolderResource(
        created_at: '',
        id: '',
        is_system: true,
        name: '',
        parent_id: '',
        path: '',
        tenant_id: '',
        updated_at: '',
      );

      final map = model.toMap();
      final result = FolderResource.fromMap(map);

            expect(result.created_at, '');
                  expect(result.id, '');
                  expect(result.is_system, true);
                  expect(result.name, '');
                  expect(result.parent_id, '');
                  expect(result.path, '');
                  expect(result.tenant_id, '');
                  expect(result.updated_at, '');
          });
  });
}
