import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnList', () {
    test('model', () {
      final model = ColumnList(
        columns: [],
        total: ,
      );

      final map = model.toMap();
      final result = ColumnList.fromMap(map);

            expect(result.columns, []);
                  expect(result.total, );
          });
  });
}
