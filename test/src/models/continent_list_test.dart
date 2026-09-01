import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContinentList', () {
    test('model', () {
      final model = ContinentList(
        continents: [],
        total: 0,
      );

      final map = model.toMap();
      final result = ContinentList.fromMap(map);

            expect(result.continents, []);
                  expect(result.total, 0);
          });
  });
}
