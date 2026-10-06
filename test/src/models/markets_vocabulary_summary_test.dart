import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketsVocabularySummary', () {
    test('model', () {
      final model = MarketsVocabularySummary();

      final map = model.toMap();
      final result = MarketsVocabularySummary.fromMap(map);
    });
  });
}
