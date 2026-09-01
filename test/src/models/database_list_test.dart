import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DatabaseList', () {
    test('model', () {
      final model = DatabaseList(
        databases: [],
        total: 0,
      );

      final map = model.toMap();
      final result = DatabaseList.fromMap(map);

      expect(result.databases, []);
      expect(result.total, 0);
    });
  });
}
