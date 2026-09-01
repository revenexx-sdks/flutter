import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BulkJobStatus', () {
    test('model', () {
      final model = BulkJobStatus(
      );

      final map = model.toMap();
      final result = BulkJobStatus.fromMap(map);

    });
  });
}
