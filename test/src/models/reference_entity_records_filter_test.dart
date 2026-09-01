import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntityRecordsFilter', () {
    test('model', () {
      final model = ReferenceEntityRecordsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = ReferenceEntityRecordsFilter.fromMap(map);

    });
  });
}
