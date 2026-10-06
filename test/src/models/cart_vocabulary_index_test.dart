import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartVocabularyIndex', () {
    test('model', () {
      final model = CartVocabularyIndex();

      final map = model.toMap();
      final result = CartVocabularyIndex.fromMap(map);
    });
  });
}
