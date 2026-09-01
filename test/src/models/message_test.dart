import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Message', () {
    test('model', () {
      final model = Message(
        attachments: [],
        attempts: 0,
        binding_id: '',
        channel: '',
        click_count: 0,
        clicked_at: '',
        created_at: '',
        data: [],
        delivered_at: '',
        error: '',
        from_draft: true,
        id: '',
        idempotency_fingerprint: '',
        idempotency_key: '',
        locale: '',
        market: '',
        message_class: '',
        open_count: 0,
        opened_at: '',
        provider_message_id: '',
        scheduled_for: '',
        sent_at: '',
        source_event_id: '',
        status: '',
        subject: '',
        suppression_reason: '',
        template_key: '',
        tenant_id: '',
        to: '',
      );

      final map = model.toMap();
      final result = Message.fromMap(map);

            expect(result.attachments, []);
                  expect(result.attempts, 0);
                  expect(result.binding_id, '');
                  expect(result.channel, '');
                  expect(result.click_count, 0);
                  expect(result.clicked_at, '');
                  expect(result.created_at, '');
                  expect(result.data, []);
                  expect(result.delivered_at, '');
                  expect(result.error, '');
                  expect(result.from_draft, true);
                  expect(result.id, '');
                  expect(result.idempotency_fingerprint, '');
                  expect(result.idempotency_key, '');
                  expect(result.locale, '');
                  expect(result.market, '');
                  expect(result.message_class, '');
                  expect(result.open_count, 0);
                  expect(result.opened_at, '');
                  expect(result.provider_message_id, '');
                  expect(result.scheduled_for, '');
                  expect(result.sent_at, '');
                  expect(result.source_event_id, '');
                  expect(result.status, '');
                  expect(result.subject, '');
                  expect(result.suppression_reason, '');
                  expect(result.template_key, '');
                  expect(result.tenant_id, '');
                  expect(result.to, '');
          });
  });
}
