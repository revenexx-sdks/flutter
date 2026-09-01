import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SubscriberList', () {
    test('model', () {
      final model = SubscriberList(
        subscribers: [],
        total: 0,
      );

      final map = model.toMap();
      final result = SubscriberList.fromMap(map);

            expect(result.subscribers, []);
                  expect(result.total, 0);
          });
  });
}
