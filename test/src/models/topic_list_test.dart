import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TopicList', () {
    test('model', () {
      final model = TopicList(
        topics: [],
        total: 0,
      );

      final map = model.toMap();
      final result = TopicList.fromMap(map);

            expect(result.topics, []);
                  expect(result.total, 0);
          });
  });
}
