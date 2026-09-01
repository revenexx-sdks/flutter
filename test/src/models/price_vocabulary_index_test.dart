import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceVocabularyIndex', () {
    test('model', () {
      final model = PriceVocabularyIndex();

      final map = model.toMap();
      final result = PriceVocabularyIndex.fromMap(map);
    });
  });
}
