import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderVocabularyIndex', () {
    test('model', () {
      final model = OrderVocabularyIndex();

      final map = model.toMap();
      final result = OrderVocabularyIndex.fromMap(map);
    });
  });
}
