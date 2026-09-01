import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntityRecordsUpdateRequest', () {
    test('model', () {
      final model = ReferenceEntityRecordsUpdateRequest();

      final map = model.toMap();
      final result = ReferenceEntityRecordsUpdateRequest.fromMap(map);
    });
  });
}
