import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRulePreviewResponse', () {
    test('model', () {
      final model = SegmentRulePreviewResponse();

      final map = model.toMap();
      final result = SegmentRulePreviewResponse.fromMap(map);
    });
  });
}
