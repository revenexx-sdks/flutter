import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BulkJobType', () {
    test('model', () {
      final model = BulkJobType(
      );

      final map = model.toMap();
      final result = BulkJobType.fromMap(map);

    });
  });
}
