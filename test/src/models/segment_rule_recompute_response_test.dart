import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRuleRecomputeResponse', () {
    test('model', () {
      final model = SegmentRuleRecomputeResponse();

      final map = model.toMap();
      final result = SegmentRuleRecomputeResponse.fromMap(map);
    });
  });
}
