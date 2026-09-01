import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SyncHistory', () {
    test('model', () {
      final model = SyncHistory(
        bytes_synced: 0,
        created_at: '',
        duration_ms: 0,
        error: '',
        id: 0,
        rule_id: '',
        run_id: '',
        source_path: '',
        status: '',
        target_asset_id: '',
        tenant_id: '',
      );

      final map = model.toMap();
      final result = SyncHistory.fromMap(map);

      expect(result.bytes_synced, 0);
      expect(result.created_at, '');
      expect(result.duration_ms, 0);
      expect(result.error, '');
      expect(result.id, 0);
      expect(result.rule_id, '');
      expect(result.run_id, '');
      expect(result.source_path, '');
      expect(result.status, '');
      expect(result.target_asset_id, '');
      expect(result.tenant_id, '');
    });
  });
}
