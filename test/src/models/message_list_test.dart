import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MessageList', () {
    test('model', () {
      final model = MessageList(
        messages: [],
        total: ,
      );

      final map = model.toMap();
      final result = MessageList.fromMap(map);

            expect(result.messages, []);
                  expect(result.total, );
          });
  });
}
