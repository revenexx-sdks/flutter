import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentMember', () {
    test('model', () {
      final model = SegmentMember(
      );

      final map = model.toMap();
      final result = SegmentMember.fromMap(map);

    });
  });
}
