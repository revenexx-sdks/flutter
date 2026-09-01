import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentMemberUpdateRequest', () {
    test('model', () {
      final model = SegmentMemberUpdateRequest(
      );

      final map = model.toMap();
      final result = SegmentMemberUpdateRequest.fromMap(map);

    });
  });
}
