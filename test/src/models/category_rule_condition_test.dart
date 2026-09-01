import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryRuleCondition', () {
    test('model', () {
      final model = CategoryRuleCondition(
        field: '',
        xoperator: CategoryRuleOperator.eq,
      );

      final map = model.toMap();
      final result = CategoryRuleCondition.fromMap(map);

            expect(result.field, '');
                  expect(result.xoperator, CategoryRuleOperator.eq);
          });
  });
}
