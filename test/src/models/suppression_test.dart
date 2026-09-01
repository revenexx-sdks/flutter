import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Suppression', () {
    test('model', () {
      final model = Suppression(
        address: '',
        address_hash: '',
        channel: '',
        created_at: '',
        expires_at: '',
        id: '',
        note: '',
        reason: '',
        scope: '',
        source: '',
        tenant_id: '',
        updated_at: '',
      );

      final map = model.toMap();
      final result = Suppression.fromMap(map);

      expect(result.address, '');
      expect(result.address_hash, '');
      expect(result.channel, '');
      expect(result.created_at, '');
      expect(result.expires_at, '');
      expect(result.id, '');
      expect(result.note, '');
      expect(result.reason, '');
      expect(result.scope, '');
      expect(result.source, '');
      expect(result.tenant_id, '');
      expect(result.updated_at, '');
    });
  });
}
