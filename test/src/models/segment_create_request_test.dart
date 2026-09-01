import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentCreateRequest', () {
    test('model', () {
      final model = SegmentCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = SegmentCreateRequest.fromMap(map);

            expect(result.code, '');
          });
  });
}
