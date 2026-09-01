import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuditEntry', () {
    test('model', () {
      final model = AuditEntry(
        action: '',
        changes: [],
        created_at: '',
        id: '',
        resource_id: '',
        resource_key: '',
        resource_type: '',
        subject: '',
        tenant_id: '',
      );

      final map = model.toMap();
      final result = AuditEntry.fromMap(map);

            expect(result.action, '');
                  expect(result.changes, []);
                  expect(result.created_at, '');
                  expect(result.id, '');
                  expect(result.resource_id, '');
                  expect(result.resource_key, '');
                  expect(result.resource_type, '');
                  expect(result.subject, '');
                  expect(result.tenant_id, '');
          });
  });
}
