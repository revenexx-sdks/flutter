import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Layout', () {
    test('model', () {
      final model = Layout(
        color_accent: '',
        color_bg: '',
        color_text: '',
        created_at: '',
        enabled: true,
        font_family: '',
        footer_note: '',
        id: '',
        is_default: true,
        legal_name: '',
        lifecycle_state: '',
        logo_url: '',
        markets: [],
        menu_links: [],
        name: '',
        postal_address: '',
        sender_name: '',
        social_links: [],
        support_email: '',
        tenant_id: '',
        updated_at: '',
        valid_from: '',
        valid_until: '',
        width: '',
      );

      final map = model.toMap();
      final result = Layout.fromMap(map);

            expect(result.color_accent, '');
                  expect(result.color_bg, '');
                  expect(result.color_text, '');
                  expect(result.created_at, '');
                  expect(result.enabled, true);
                  expect(result.font_family, '');
                  expect(result.footer_note, '');
                  expect(result.id, '');
                  expect(result.is_default, true);
                  expect(result.legal_name, '');
                  expect(result.lifecycle_state, '');
                  expect(result.logo_url, '');
                  expect(result.markets, []);
                  expect(result.menu_links, []);
                  expect(result.name, '');
                  expect(result.postal_address, '');
                  expect(result.sender_name, '');
                  expect(result.social_links, []);
                  expect(result.support_email, '');
                  expect(result.tenant_id, '');
                  expect(result.updated_at, '');
                  expect(result.valid_from, '');
                  expect(result.valid_until, '');
                  expect(result.width, '');
          });
  });
}
