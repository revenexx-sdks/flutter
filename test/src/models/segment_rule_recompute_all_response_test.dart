import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRuleRecomputeAllResponse', () {
    test('model', () {
      final model = SegmentRuleRecomputeAllResponse();

      final map = model.toMap();
      final result = SegmentRuleRecomputeAllResponse.fromMap(map);
    });
  });
}
