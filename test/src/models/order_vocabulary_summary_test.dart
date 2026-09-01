import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderVocabularySummary', () {
    test('model', () {
      final model = OrderVocabularySummary(
      );

      final map = model.toMap();
      final result = OrderVocabularySummary.fromMap(map);

    });
  });
}
