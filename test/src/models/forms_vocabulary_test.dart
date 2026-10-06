import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormsVocabulary', () {
    test('model', () {
      final model = FormsVocabulary();

      final map = model.toMap();
      final result = FormsVocabulary.fromMap(map);
    });
  });
}
