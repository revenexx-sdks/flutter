import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryVocabulary', () {
    test('model', () {
      final model = InventoryVocabulary(
      );

      final map = model.toMap();
      final result = InventoryVocabulary.fromMap(map);

    });
  });
}
