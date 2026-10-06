import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceAdjustPreviewRow', () {
    test('model', () {
      final model = PriceAdjustPreviewRow();

      final map = model.toMap();
      final result = PriceAdjustPreviewRow.fromMap(map);
    });
  });
}
