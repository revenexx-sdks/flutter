import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TableList', () {
    test('model', () {
      final model = TableList(
        tables: [],
        total: ,
      );

      final map = model.toMap();
      final result = TableList.fromMap(map);

            expect(result.tables, []);
                  expect(result.total, );
          });
  });
}
