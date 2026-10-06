import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentRules', () {
    test('model', () {
      final model = SegmentRules(
        conditions: [],
      );

      final map = model.toMap();
      final result = SegmentRules.fromMap(map);

      expect(result.conditions, []);
    });
  });
}
