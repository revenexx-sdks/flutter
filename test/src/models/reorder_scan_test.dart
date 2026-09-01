import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReorderScan', () {
    test('model', () {
      final model = ReorderScan(
        emitted: [],
        enabled: true,
        scanned: 0,
      );

      final map = model.toMap();
      final result = ReorderScan.fromMap(map);

            expect(result.emitted, []);
                  expect(result.enabled, true);
                  expect(result.scanned, 0);
          });
  });
}
