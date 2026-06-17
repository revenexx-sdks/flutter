import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TeamList', () {
    test('model', () {
      final model = TeamList(
        teams: [],
        total: ,
      );

      final map = model.toMap();
      final result = TeamList.fromMap(map);

            expect(result.teams, []);
                  expect(result.total, );
          });
  });
}
