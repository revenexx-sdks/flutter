import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentMemberCreateRequest', () {
    test('model', () {
      final model = SegmentMemberCreateRequest(
        organization_id: '',
        segment_id: '',
      );

      final map = model.toMap();
      final result = SegmentMemberCreateRequest.fromMap(map);

      expect(result.organization_id, '');
      expect(result.segment_id, '');
    });
  });
}
