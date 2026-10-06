import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RowList', () {
    test('model', () {
      final model = RowList(
        rows: [],
        total: 0,
      );

      final map = model.toMap();
      final result = RowList.fromMap(map);

      expect(result.rows, []);
      expect(result.total, 0);
    });
  });
}
