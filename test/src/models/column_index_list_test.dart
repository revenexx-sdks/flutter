import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnIndexList', () {
    test('model', () {
      final model = ColumnIndexList(
        indexes: [],
        total: ,
      );

      final map = model.toMap();
      final result = ColumnIndexList.fromMap(map);

            expect(result.indexes, []);
                  expect(result.total, );
          });
  });
}
