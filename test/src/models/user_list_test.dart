import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserList', () {
    test('model', () {
      final model = UserList(
        total: 0,
        users: [],
      );

      final map = model.toMap();
      final result = UserList.fromMap(map);

            expect(result.total, 0);
                  expect(result.users, []);
          });
  });
}
