import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartVocabularyValue', () {
    test('model', () {
      final model = CartVocabularyValue();

      final map = model.toMap();
      final result = CartVocabularyValue.fromMap(map);
    });
  });
}
