import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TenantConfig', () {
    test('model', () {
      final model = TenantConfig(
        created_at: '',
        default_locale: '',
        defaults: [],
        delivery_reporting: [],
        locales: [],
        product: '',
        provisioned_at: '',
        quiet_hours: [],
        quotas: [],
        retention_days: 0,
        support_email: '',
        tenant_id: '',
        updated_at: '',
      );

      final map = model.toMap();
      final result = TenantConfig.fromMap(map);

      expect(result.created_at, '');
      expect(result.default_locale, '');
      expect(result.defaults, []);
      expect(result.delivery_reporting, []);
      expect(result.locales, []);
      expect(result.product, '');
      expect(result.provisioned_at, '');
      expect(result.quiet_hours, []);
      expect(result.quotas, []);
      expect(result.retention_days, 0);
      expect(result.support_email, '');
      expect(result.tenant_id, '');
      expect(result.updated_at, '');
    });
  });
}
