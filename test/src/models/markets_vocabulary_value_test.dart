import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketsVocabularyValue', () {
    test('model', () {
      final model = MarketsVocabularyValue(
      );

      final map = model.toMap();
      final result = MarketsVocabularyValue.fromMap(map);

    });
  });
}
