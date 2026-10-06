import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReorderScanEmit', () {
    test('model', () {
      final model = ReorderScanEmit(
        event_id: '',
        stock_level_id: '',
      );

      final map = model.toMap();
      final result = ReorderScanEmit.fromMap(map);

      expect(result.event_id, '');
      expect(result.stock_level_id, '');
    });
  });
}
