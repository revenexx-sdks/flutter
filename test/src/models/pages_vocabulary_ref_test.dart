import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PagesVocabularyRef', () {
    test('model', () {
      final model = PagesVocabularyRef();

      final map = model.toMap();
      final result = PagesVocabularyRef.fromMap(map);
    });
  });
}
