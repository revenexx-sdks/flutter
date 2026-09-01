import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BulkJob', () {
    test('model', () {
      final model = BulkJob(
      );

      final map = model.toMap();
      final result = BulkJob.fromMap(map);

    });
  });
}
