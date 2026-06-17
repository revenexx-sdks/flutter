import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SessionList', () {
    test('model', () {
      final model = SessionList(
        sessions: [],
        total: ,
      );

      final map = model.toMap();
      final result = SessionList.fromMap(map);

            expect(result.sessions, []);
                  expect(result.total, );
          });
  });
}
