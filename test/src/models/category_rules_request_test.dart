import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRulesRequest', () {
    test('model', () {
      final model = CategoryRulesRequest(
        conditions: [],
      );

      final map = model.toMap();
      final result = CategoryRulesRequest.fromMap(map);

      expect(result.conditions, []);
    });
  });
}
