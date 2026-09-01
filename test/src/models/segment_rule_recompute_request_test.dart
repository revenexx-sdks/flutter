import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRuleRecomputeRequest', () {
    test('model', () {
      final model = SegmentRuleRecomputeRequest();

      final map = model.toMap();
      final result = SegmentRuleRecomputeRequest.fromMap(map);
    });
  });
}
