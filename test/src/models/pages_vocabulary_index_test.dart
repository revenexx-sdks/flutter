import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PagesVocabularyIndex', () {
    test('model', () {
      final model = PagesVocabularyIndex();

      final map = model.toMap();
      final result = PagesVocabularyIndex.fromMap(map);
    });
  });
}
