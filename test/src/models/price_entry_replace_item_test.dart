import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntryReplaceItem', () {
    test('model', () {
      final model = PriceEntryReplaceItem(
      );

      final map = model.toMap();
      final result = PriceEntryReplaceItem.fromMap(map);

    });
  });
}
