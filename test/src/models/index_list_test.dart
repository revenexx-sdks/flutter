import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IndexList', () {
    test('model', () {
      final model = IndexList(
        indexes: [],
        total: ,
      );

      final map = model.toMap();
      final result = IndexList.fromMap(map);

            expect(result.indexes, []);
                  expect(result.total, );
          });
  });
}
