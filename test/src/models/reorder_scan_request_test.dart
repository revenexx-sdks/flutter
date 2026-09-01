import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReorderScanRequest', () {
    test('model', () {
      final model = ReorderScanRequest(
      );

      final map = model.toMap();
      final result = ReorderScanRequest.fromMap(map);

    });
  });
}
