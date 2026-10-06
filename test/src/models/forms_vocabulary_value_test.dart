import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormsVocabularyValue', () {
    test('model', () {
      final model = FormsVocabularyValue();

      final map = model.toMap();
      final result = FormsVocabularyValue.fromMap(map);
    });
  });
}
