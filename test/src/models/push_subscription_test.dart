import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PushSubscription', () {
    test('model', () {
      final model = PushSubscription(
        created_at: '',
        endpoint: '',
        id: '',
        last_seen_at: '',
        subscriber_id: '',
        tenant_id: '',
        updated_at: '',
        user_agent: '',
      );

      final map = model.toMap();
      final result = PushSubscription.fromMap(map);

            expect(result.created_at, '');
                  expect(result.endpoint, '');
                  expect(result.id, '');
                  expect(result.last_seen_at, '');
                  expect(result.subscriber_id, '');
                  expect(result.tenant_id, '');
                  expect(result.updated_at, '');
                  expect(result.user_agent, '');
          });
  });
}
