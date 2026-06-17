import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SyncHistory', () {
    test('model', () {
      final model = SyncHistory(
        bytes_synced: ,
        created_at: '',
        duration_ms: ,
        error: '',
        id: ,
        rule_id: '',
        run_id: '',
        source_path: '',
        status: '',
        target_asset_id: '',
        tenant_id: '',
      );

      final map = model.toMap();
      final result = SyncHistory.fromMap(map);

            expect(result.bytes_synced, );
                  expect(result.created_at, '');
                  expect(result.duration_ms, );
                  expect(result.error, '');
                  expect(result.id, );
                  expect(result.rule_id, '');
                  expect(result.run_id, '');
                  expect(result.source_path, '');
                  expect(result.status, '');
                  expect(result.target_asset_id, '');
                  expect(result.tenant_id, '');
          });
  });
}
