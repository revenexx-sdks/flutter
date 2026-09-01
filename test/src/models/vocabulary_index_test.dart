import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('VocabularyIndex', () {
    test('model', () {
      final model = VocabularyIndex();

      final map = model.toMap();
      final result = VocabularyIndex.fromMap(map);
    });
  });
}
