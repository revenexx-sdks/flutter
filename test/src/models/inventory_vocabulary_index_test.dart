import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryVocabularyIndex', () {
    test('model', () {
      final model = InventoryVocabularyIndex();

      final map = model.toMap();
      final result = InventoryVocabularyIndex.fromMap(map);
    });
  });
}
