import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketsVocabulary', () {
    test('model', () {
      final model = MarketsVocabulary();

      final map = model.toMap();
      final result = MarketsVocabulary.fromMap(map);
    });
  });
}
