import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Template', () {
    test('model', () {
      final model = Template(
        body_html: '',
        body_text: '',
        channel: '',
        content_sid: '',
        created_at: '',
        design: [],
        enabled: true,
        has_unpublished_changes: '',
        id: '',
        is_published: '',
        key: '',
        layout_id: '',
        lifecycle_state: '',
        locale: '',
        markets: [],
        message_class: '',
        published_version_id: '',
        source_library_key: '',
        subject: '',
        tenant_id: '',
        test_mode: true,
        title: '',
        updated_at: '',
        uses_raw_html: '',
        valid_from: '',
        valid_until: '',
        variable_defaults: [],
        variables: [],
        whatsapp_category: '',
      );

      final map = model.toMap();
      final result = Template.fromMap(map);

            expect(result.body_html, '');
                  expect(result.body_text, '');
                  expect(result.channel, '');
                  expect(result.content_sid, '');
                  expect(result.created_at, '');
                  expect(result.design, []);
                  expect(result.enabled, true);
                  expect(result.has_unpublished_changes, '');
                  expect(result.id, '');
                  expect(result.is_published, '');
                  expect(result.key, '');
                  expect(result.layout_id, '');
                  expect(result.lifecycle_state, '');
                  expect(result.locale, '');
                  expect(result.markets, []);
                  expect(result.message_class, '');
                  expect(result.published_version_id, '');
                  expect(result.source_library_key, '');
                  expect(result.subject, '');
                  expect(result.tenant_id, '');
                  expect(result.test_mode, true);
                  expect(result.title, '');
                  expect(result.updated_at, '');
                  expect(result.uses_raw_html, '');
                  expect(result.valid_from, '');
                  expect(result.valid_until, '');
                  expect(result.variable_defaults, []);
                  expect(result.variables, []);
                  expect(result.whatsapp_category, '');
          });
  });
}
