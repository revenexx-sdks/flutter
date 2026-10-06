import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceVocabularyValue', () {
    test('model', () {
      final model = PriceVocabularyValue();

      final map = model.toMap();
      final result = PriceVocabularyValue.fromMap(map);
    });
  });
}
