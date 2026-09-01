import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Team', () {
    test('model', () {
      final model = Team(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        name: '',
        prefs: Preferences(data: {}),
        total: 0,
      );

      final map = model.toMap();
      final result = Team.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.name, '');
                        expect(result.total, 0);
          });
  });
}
