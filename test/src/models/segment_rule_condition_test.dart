import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRuleCondition', () {
    test('model', () {
      final model = SegmentRuleCondition(
        field: '',
        xoperator: SegmentRuleOperator.eq,
      );

      final map = model.toMap();
      final result = SegmentRuleCondition.fromMap(map);

            expect(result.field, '');
                  expect(result.xoperator, SegmentRuleOperator.eq);
          });
  });
}
