import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntityRecords', () {
    test('model', () {
      final model = ReferenceEntityRecords();

      final map = model.toMap();
      final result = ReferenceEntityRecords.fromMap(map);
    });
  });
}
