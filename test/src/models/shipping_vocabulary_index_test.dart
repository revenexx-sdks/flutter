import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingVocabularyIndex', () {
    test('model', () {
      final model = ShippingVocabularyIndex(
      );

      final map = model.toMap();
      final result = ShippingVocabularyIndex.fromMap(map);

    });
  });
}
