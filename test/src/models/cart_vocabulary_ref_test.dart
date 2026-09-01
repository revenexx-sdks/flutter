import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartVocabularyRef', () {
    test('model', () {
      final model = CartVocabularyRef(
      );

      final map = model.toMap();
      final result = CartVocabularyRef.fromMap(map);

    });
  });
}
