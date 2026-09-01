import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingVocabularyIndexEntry', () {
    test('model', () {
      final model = ShippingVocabularyIndexEntry(
      );

      final map = model.toMap();
      final result = ShippingVocabularyIndexEntry.fromMap(map);

    });
  });
}
