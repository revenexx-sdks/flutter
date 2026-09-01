import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormsVocabularyIndex', () {
    test('model', () {
      final model = FormsVocabularyIndex();

      final map = model.toMap();
      final result = FormsVocabularyIndex.fromMap(map);
    });
  });
}
