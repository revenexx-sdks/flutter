import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PagesVocabularyValue', () {
    test('model', () {
      final model = PagesVocabularyValue();

      final map = model.toMap();
      final result = PagesVocabularyValue.fromMap(map);
    });
  });
}
