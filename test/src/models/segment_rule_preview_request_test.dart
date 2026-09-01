import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRulePreviewRequest', () {
    test('model', () {
      final model = SegmentRulePreviewRequest(
        conditions: [],
      );

      final map = model.toMap();
      final result = SegmentRulePreviewRequest.fromMap(map);

      expect(result.conditions, []);
    });
  });
}
