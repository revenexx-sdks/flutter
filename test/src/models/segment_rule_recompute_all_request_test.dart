import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRuleRecomputeAllRequest', () {
    test('model', () {
      final model = SegmentRuleRecomputeAllRequest(
      );

      final map = model.toMap();
      final result = SegmentRuleRecomputeAllRequest.fromMap(map);

    });
  });
}
