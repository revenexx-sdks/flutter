import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LogList', () {
    test('model', () {
      final model = LogList(
        logs: [],
        total: 0,
      );

      final map = model.toMap();
      final result = LogList.fromMap(map);

      expect(result.logs, []);
      expect(result.total, 0);
    });
  });
}
