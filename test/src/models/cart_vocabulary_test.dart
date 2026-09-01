import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartVocabulary', () {
    test('model', () {
      final model = CartVocabulary(
      );

      final map = model.toMap();
      final result = CartVocabulary.fromMap(map);

    });
  });
}
