import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketsVocabularyIndex', () {
    test('model', () {
      final model = MarketsVocabularyIndex();

      final map = model.toMap();
      final result = MarketsVocabularyIndex.fromMap(map);
    });
  });
}
