import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SegmentUpdateRequest', () {
    test('model', () {
      final model = SegmentUpdateRequest(
      );

      final map = model.toMap();
      final result = SegmentUpdateRequest.fromMap(map);

    });
  });
}
