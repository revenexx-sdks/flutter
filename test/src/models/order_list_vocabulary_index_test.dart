import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListVocabularyIndex', () {
    test('model', () {
      final model = OrderListVocabularyIndex();

      final map = model.toMap();
      final result = OrderListVocabularyIndex.fromMap(map);
    });
  });
}
