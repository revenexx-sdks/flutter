import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SyncRuleResource', () {
    test('model', () {
      final model = SyncRuleResource(
        created_at: '',
        enabled: true,
        id: '',
        last_run_at: '',
        options: [],
        schedule: '',
        sftp_account_id: '',
        source_path: '',
        target_folder_id: '',
        tenant_id: '',
      );

      final map = model.toMap();
      final result = SyncRuleResource.fromMap(map);

            expect(result.created_at, '');
                  expect(result.enabled, true);
                  expect(result.id, '');
                  expect(result.last_run_at, '');
                  expect(result.options, []);
                  expect(result.schedule, '');
                  expect(result.sftp_account_id, '');
                  expect(result.source_path, '');
                  expect(result.target_folder_id, '');
                  expect(result.tenant_id, '');
          });
  });
}
