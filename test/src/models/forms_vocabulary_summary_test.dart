import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormsVocabularySummary', () {
    test('model', () {
      final model = FormsVocabularySummary();

      final map = model.toMap();
      final result = FormsVocabularySummary.fromMap(map);
    });
  });
}
