import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Binding', () {
    test('model', () {
      final model = Binding(
        channel: '',
        created_at: '',
        enabled: true,
        event_topic: '',
        fallback_order: 0,
        id: '',
        locale: '',
        recipient: '',
        template_key: '',
        tenant_id: '',
        updated_at: '',
      );

      final map = model.toMap();
      final result = Binding.fromMap(map);

            expect(result.channel, '');
                  expect(result.created_at, '');
                  expect(result.enabled, true);
                  expect(result.event_topic, '');
                  expect(result.fallback_order, 0);
                  expect(result.id, '');
                  expect(result.locale, '');
                  expect(result.recipient, '');
                  expect(result.template_key, '');
                  expect(result.tenant_id, '');
                  expect(result.updated_at, '');
          });
  });
}
