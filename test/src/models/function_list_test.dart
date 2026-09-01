import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FunctionList', () {
    test('model', () {
      final model = FunctionList(
        functions: [],
        total: 0,
      );

      final map = model.toMap();
      final result = FunctionList.fromMap(map);

      expect(result.functions, []);
      expect(result.total, 0);
    });
  });
}
