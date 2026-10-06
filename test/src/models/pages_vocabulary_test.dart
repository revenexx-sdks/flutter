import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PagesVocabulary', () {
    test('model', () {
      final model = PagesVocabulary();

      final map = model.toMap();
      final result = PagesVocabulary.fromMap(map);
    });
  });
}
